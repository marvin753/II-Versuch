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

    var body: some View {
        Form {
            Section(header: Text("Um welche App geht es?")) {
                TextField("App Name", text: $app)
            }
            Section(header: Text("Was genau ist dein Problem?")) {
                TextEditor(text: $problem)
                    .frame(minHeight: 100)
            }
            Section(header: Text("Was willst du wissen?")) {
                TextEditor(text: $ziel)
                    .frame(minHeight: 100)
            }
            Button("Senden") {
                sendMessage(app: app, problem: problem, ziel: ziel)
            }
            .alert("Erfolgreich gesendet!", isPresented: $showingSuccessAlert) {
                Button("OK", role: .cancel) { }
            }
            .frame(maxWidth: .infinity)
        }
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
                self.app = ""
                self.problem = ""
                self.ziel = ""
            }
        }
    }
}

#Preview {
    AddSwiftUIView()
}

