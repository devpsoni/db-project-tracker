//
//  AddProjectView.swift
//  db-project-tracker
//
//  Created by Dev Soni on 12/09/25.
//

import SwiftUI
import SwiftData

struct AddProjectView: View {
    
    @Environment(\.dismiss) var dismiss
    @Environment(\.modelContext) private var context

    
    var project: Project
    @State var projectName: String = ""
    
    var body: some View {
        ZStack {
            Color.black
                .ignoresSafeArea()
            
            VStack (alignment: .leading) {
                Text("New Project")
                    .foregroundStyle(.white)
                    .font(.bigheadline)
                HStack {
                    TextField("Project Name", text: $projectName)
                        .textFieldStyle(.roundedBorder)
                    
                    Button("Add"){
                        // Save project to swift data
                        project.name = projectName
                        context.insert(project)
                        dismiss()
                    }
                    .buttonStyle(.borderedProminent)
                    .tint(.blue)
                    
                }
                Spacer()
            }
            .padding(.horizontal)
            .padding(.top)
        }
    }
}

#Preview {
    AddProjectView(project: Project())
}
