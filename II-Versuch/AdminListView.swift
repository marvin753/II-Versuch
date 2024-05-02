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

    var body: some View {
        NavigationView {
            List(questionnaires, id: \.id) { questionnaire in
                NavigationLink(destination: AdminDetailView(questionnaire: questionnaire)) {
                    Text(questionnaire.app)
                }
            }
            .onAppear {
                fetchQuestionnaires()
            }
            .navigationTitle("Fragebögen")
        }
    }

    func fetchQuestionnaires() {
        Firestore.firestore().collection("userMessages")
            .order(by: "timestamp", descending: true) // Sortiere die Dokumente absteigend nach Timestamp
            .getDocuments { snapshot, error in
                if let error = error {
                    print("Error getting documents: \(error)")
                } else if let snapshot = snapshot {
                    questionnaires = snapshot.documents.map { doc in
                        Questionnaire(id: doc.documentID, app: doc["app"] as? String ?? "", problem: doc["problem"] as? String ?? "", ziel: doc["ziel"] as? String ?? "")
                    }
                }
            }
    }
}


struct Questionnaire: Identifiable {
    var id: String
    var app: String
    var problem: String
    var ziel: String
}


#Preview {
    AdminListView()
}
