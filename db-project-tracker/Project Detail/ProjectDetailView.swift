//
//  ProjectDetailView.swift
//  db-project-tracker
//
//  Created by Dev Soni on 18/09/25.
//

import SwiftUI

struct ProjectDetailView: View {
    
    var project: Project
    @Environment(\.dismiss) private var dismiss
    
    var body: some View {
        VStack {
            Text(project.name)
                .navigationBarBackButtonHidden(true)
            Button("Back") {
                // Navigate back
                dismiss()
            }
        }
    }
}

#Preview {
    ProjectDetailView(project: Project())
}
