//
//  AdminDetailView.swift
//  II-Versuch
//
//  Created by Marvin Barsal on 02.05.24.
//

import SwiftUI

struct AdminDetailView: View {
    var questionnaire: Questionnaire

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
        }
        .navigationTitle("Details")
    }
}


struct AdminDetailView_Previews: PreviewProvider {
    static var previews: some View {
        // Erstelle ein Beispiel eines `Questionnaire`-Objekts
        let sampleQuestionnaire = Questionnaire(id: "1", app: "Beispiel App", problem: "Das ist ein Beispielproblem", ziel: "Ich möchte verstehen, wie ich das lösen kann")
        
        // Übergib dieses Objekt an deine `AdminDetailView`
        AdminDetailView(questionnaire: sampleQuestionnaire)
    }
}
