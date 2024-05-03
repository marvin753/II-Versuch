//
//  AdminListView.swift
//  II-Versuch
//
//  Created by Marvin Barsal on 02.05.24.
//

import SwiftUI
import Firebase
import FirebaseFirestore

struct AdminListView: View {
    @State private var questionnaires = [Questionnaire]()
    @State private var showingDeleteAllConfirm = false
    @State private var showingDeleteConfirm = false
    @State private var questionnaireToDelete: Questionnaire?

    var body: some View {
        NavigationView {
            List {
                ForEach(questionnaires, id: \.id) { questionnaire in
                    HStack {
                        if questionnaire.isCompleted ?? false {
                            Image(systemName: "checkmark.circle.fill")
                                .foregroundColor(.green)
                        }
                        NavigationLink(destination: AdminDetailView(questionnaire: questionnaire)) {
                            Text(questionnaire.app)
                        }
                    }
                }
                .onDelete(perform: showDeleteConfirmation)
            }
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button("Alle löschen") {
                        showingDeleteAllConfirm = true
                    }
                }
            }
            .alert("Alle Fragebögen löschen?", isPresented: $showingDeleteAllConfirm) {
                Button("Abbrechen", role: .cancel) {}
                Button("Löschen", role: .destructive) {
                    deleteAllQuestionnaires()
                }
            } message: {
                Text("Sind Sie sicher, dass Sie alle Fragebögen löschen möchten? Diese Aktion kann nicht rückgängig gemacht werden.")
            }
            .alert("Fragebogen löschen?", isPresented: $showingDeleteConfirm) {
                Button("Abbrechen", role: .cancel) {}
                Button("Löschen", role: .destructive) {
                    if let questionnaire = questionnaireToDelete {
                        deleteQuestionnaire(questionnaire)
                    }
                }
            } message: {
                Text("Sind Sie sicher, dass Sie diesen Fragebogen löschen möchten? Diese Aktion kann nicht rückgängig gemacht werden.")
            }
            .onAppear {
                fetchQuestionnaires()
            }
            .navigationTitle("Fragebögen")
        }
    }

    func fetchQuestionnaires() {
        Firestore.firestore().collection("userMessages")
            .order(by: "timestamp", descending: true)
            .getDocuments { snapshot, error in
                if let error = error {
                    print("Error getting documents: \(error)")
                } else if let snapshot = snapshot {
                    questionnaires = snapshot.documents.map { doc in
                        Questionnaire(
                            id: doc.documentID,
                            app: doc["app"] as? String ?? "",
                            problem: doc["problem"] as? String ?? "",
                            ziel: doc["ziel"] as? String ?? "",
                            isCompleted: doc["isCompleted"] as? Bool
                        )
                    }
                }
            }
    }

    func showDeleteConfirmation(at offsets: IndexSet) {
        offsets.forEach { index in
            questionnaireToDelete = questionnaires[index]
            showingDeleteConfirm = true
        }
    }

    func deleteQuestionnaire(_ questionnaire: Questionnaire) {
        let db = Firestore.firestore()
        db.collection("userMessages").document(questionnaire.id).delete { error in
            if let error = error {
                print("Error deleting document: \(error)")
            } else {
                if let index = questionnaires.firstIndex(where: { $0.id == questionnaire.id }) {
                    questionnaires.remove(at: index)
                }
                print("Document successfully deleted")
            }
        }
    }

    func deleteAllQuestionnaires() {
        let db = Firestore.firestore()
        questionnaires.forEach { questionnaire in
            db.collection("userMessages").document(questionnaire.id).delete { error in
                if let error = error {
                    print("Error deleting document: \(error)")
                }
            }
        }
        questionnaires.removeAll()
    }
}

public struct Questionnaire: Identifiable {
    public var id: String
    public var app: String
    public var problem: String
    public var ziel: String
    public var isCompleted: Bool?
}


#Preview {
    AdminListView()
}
