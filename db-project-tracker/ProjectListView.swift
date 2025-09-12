//
//  ProjectListView.swift
//  db-project-tracker
//
//  Created by Dev Soni on 05/09/25.
//

import SwiftUI

struct ProjectListView: View {
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
                        ProjectCardView()
                        ProjectCardView()
                        ProjectCardView()
                        ProjectCardView()
                        ProjectCardView()
                    }
                }
            }
            .padding()
            
            VStack {
                Spacer()
                HStack {
                    Button{
                        // ToDo
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
    }
}

#Preview {
    ProjectListView()
}
