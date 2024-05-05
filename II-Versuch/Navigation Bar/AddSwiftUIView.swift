//
//  AddSwiftUIView.swift
//  II-Versuch
//
//  Created by Marvin Barsal on 28.03.24.
//
import SwiftUI
import Firebase
import FirebaseFirestore

struct AddSwiftUIView: View {
    @State private var app: String = ""
    @State private var problem: String = ""
    @State private var ziel: String = ""
    @State private var showingSuccessAlert = false
    @State private var showingErrorAlert = false
    @State private var errorMessage = ""
    
    var body: some View {
        Form {
            Section(header: Text("Um welche App geht es?")) {
                TextField("App Name", text: $app)
                    .border(app.isEmpty && showingErrorAlert ? Color.red : Color.clear, width: 1)
            }
            Section(header: Text("Was genau ist dein Problem?")) {
                TextEditor(text: $problem)
                    .frame(minHeight: 100)
                    .border(problem.isEmpty && showingErrorAlert ? Color.red : Color.clear, width: 1)
            }
            Section(header: Text("Was willst du wissen?")) {
                TextEditor(text: $ziel)
                    .frame(minHeight: 100)
                    .border(ziel.isEmpty && showingErrorAlert ? Color.red : Color.clear, width: 1)
            }
            Button("Senden") {
                if validateFields() {
                    sendMessage(app: app, problem: problem, ziel: ziel)
                } else {
                    showingErrorAlert = true
                }
            }
            .alert(isPresented: $showingErrorAlert) {
                Alert(title: Text("Fehler"), message: Text(errorMessage), dismissButton: .default(Text("OK")))
            }
            .alert("Erfolgreich gesendet!", isPresented: $showingSuccessAlert) {
                Button("OK", role: .cancel) {
                    app = ""
                    problem = ""
                    ziel = ""
                }
            }
            .frame(maxWidth: .infinity)
        }
    }
    
    func validateFields() -> Bool {
        var errors: [String] = []
        
        if app.isEmpty {
            errors.append("den App-Namen")
        }
        if problem.isEmpty {
            errors.append("eine Beschreibung deines Problems")
        }
        if ziel.isEmpty {
            errors.append("dein Ziel")
        }
        
        if !errors.isEmpty {
            errorMessage = "Bitte gib \(errors.joined(separator: ", ")) ein."
            if errors.count > 1 {
                errorMessage = "Bitte gib \(errors.dropLast().joined(separator: ", ")) und \(errors.last!) an."
            }
            return false
        }
        
        return true
    }
    
    func sendMessage(app: String, problem: String, ziel: String) {
        let db = Firestore.firestore()
        db.collection("userMessages").addDocument(data: [
            "app": app,
            "problem": problem,
            "ziel": ziel,
            "timestamp": Timestamp(date: Date()),
            "userID": Auth.auth().currentUser?.uid ?? "unknown"
        ]) { error in
            if let error = error {
                print("Error adding document: \(error.localizedDescription)")
            } else {
                self.showingSuccessAlert = true
            }
        }
    }
}

        
#Preview {
    AddSwiftUIView()
}
        
    
