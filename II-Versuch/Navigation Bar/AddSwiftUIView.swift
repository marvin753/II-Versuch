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
<<<<<<< HEAD

=======
    
>>>>>>> 2d239ae789422a1efc5fae9c65accdceac1119cd
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
<<<<<<< HEAD

    func validateFields() -> Bool {
        var errors: [String] = []

=======
    
    func validateFields() -> Bool {
        var errors: [String] = []
        
>>>>>>> 2d239ae789422a1efc5fae9c65accdceac1119cd
        if app.isEmpty {
            errors.append("den App-Namen")
        }
        if problem.isEmpty {
            errors.append("eine Beschreibung deines Problems")
        }
        if ziel.isEmpty {
            errors.append("dein Ziel")
        }
<<<<<<< HEAD

=======
        
>>>>>>> 2d239ae789422a1efc5fae9c65accdceac1119cd
        if !errors.isEmpty {
            errorMessage = "Bitte gib \(errors.joined(separator: ", ")) ein."
            if errors.count > 1 {
                errorMessage = "Bitte gib \(errors.dropLast().joined(separator: ", ")) und \(errors.last!) an."
            }
            return false
        }
<<<<<<< HEAD

        return true
    }

    func sendMessage(app: String, problem: String, ziel: String) {
        guard let userID = Auth.auth().currentUser?.uid else {
            self.errorMessage = "User not authenticated"
            self.showingErrorAlert = true
            return
        }

=======
        
        return true
    }
    
    func sendMessage(app: String, problem: String, ziel: String) {
>>>>>>> 2d239ae789422a1efc5fae9c65accdceac1119cd
        let db = Firestore.firestore()
        db.collection("userMessages").addDocument(data: [
            "app": app,
            "problem": problem,
            "ziel": ziel,
            "timestamp": Timestamp(date: Date()),
<<<<<<< HEAD
            "userID": userID
        ]) { error in
            if let error = error {
                self.errorMessage = "Error adding document: \(error.localizedDescription)"
                self.showingErrorAlert = true
=======
            "userID": Auth.auth().currentUser?.uid ?? "unknown"
        ]) { error in
            if let error = error {
                print("Error adding document: \(error.localizedDescription)")
>>>>>>> 2d239ae789422a1efc5fae9c65accdceac1119cd
            } else {
                self.showingSuccessAlert = true
            }
        }
    }
}

<<<<<<< HEAD
#Preview {
    AddSwiftUIView()
}
=======
        
#Preview {
    AddSwiftUIView()
}
        
    
>>>>>>> 2d239ae789422a1efc5fae9c65accdceac1119cd
