//
//  AdminDetailView.swift
//  II-Versuch
//
//  Created by Marvin Barsal on 02.05.24.
//

import SwiftUI
import Firebase
import FirebaseFirestore

struct AdminDetailView: View {
    var questionnaire: Questionnaire
    @State private var isCompleted: Bool

    init(questionnaire: Questionnaire) {
            self.questionnaire = questionnaire
            _isCompleted = State(initialValue: questionnaire.isCompleted ?? false) // Standardwert für optionale
        }


    var body: some View {
        List {
            Section(header: Text("App")) {
                Text(questionnaire.app)
            }
            Section(header: Text("Problem")) {
                Text(questionnaire.problem)
            }
            Section(header: Text("Ziel")) {
                Text(questionnaire.ziel)
            }
            Section {
                Button(action: {
                    toggleCompletion()}) {
                        HStack {
                            Image(systemName: isCompleted ? "checkmark.circle.fill" : "circle")
                                .foregroundColor(isCompleted ? .green : .secondary)
                            Text(isCompleted ? "Als offen markieren" : "Als erledigt markieren")
                                .foregroundColor(.black)
                                    }
                                }
                            }
                        }
                        .navigationTitle("Details")
                    }

    private func toggleCompletion() {
        isCompleted.toggle()
        updateQuestionnaireStatus()
    }

    private func updateQuestionnaireStatus() {
        let db = Firestore.firestore()
        db.collection("userMessages").document(questionnaire.id).updateData([
            "isCompleted": isCompleted
        ]) { error in
            if let error = error {
                print("Fehler beim Aktualisieren des Dokuments: \(error.localizedDescription)")
            } else {
                print("Dokument erfolgreich aktualisiert")
            }
        }
    }
}



struct AdminDetailView_Previews: PreviewProvider {
    static var previews: some View {
        let sampleQuestionnaire = Questionnaire(id: "1", app: "Beispiel App", problem: "Das ist ein Beispielproblem", ziel: "Ich möchte verstehen, wie ich das lösen kann", isCompleted: false)
        AdminDetailView(questionnaire: sampleQuestionnaire)
    }
}

