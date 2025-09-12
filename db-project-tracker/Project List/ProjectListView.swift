//
//  ProjectListView.swift
//  db-project-tracker
//
//  Created by Dev Soni on 05/09/25.
//

import SwiftUI
import SwiftData

struct ProjectListView: View {
    
    @State private var newProject: Project?
    @Query private var projects: [Project]
    
    var body: some View {
        ZStack {
            LinearGradient(colors: [Color("Deep Purple"), Color("Blush Pink")], startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea()
            VStack (alignment: .leading) {
                Text("Projects")
                    .font(Font.screenHeading)
                    .foregroundStyle(Color.white)
                
                ScrollView (showsIndicators: false) {
                    VStack (alignment: .leading, spacing: 26) {
                        ForEach(projects) { p in
                            ProjectCardView(project: p)
                        }
                    }
                }
            }
            .padding()
            
            VStack {
                Spacer()
                HStack {
                    Button{
                        // Create new project
                        self.newProject = Project()
                    } label: {
                        ZStack {
                            Circle()
                                .frame(width: 65)
                                .foregroundStyle(.black)
                            Image("cross")
                        }
                    }
                    Spacer()
                }
                
            }
            .padding(.leading)
            
        }
        .sheet(item: $newProject, content: { project in
            AddProjectView(project: project)
                .presentationDetents([.fraction(0.2)])
        })
    }
}

#Preview {
    ProjectListView()
}
