//
//  ProjectListView.swift
//  db-project-tracker
//
//  Created by Dev Soni on 05/09/25.
//

import SwiftUI

struct ProjectListView: View {
    var body: some View {
        VStack {
            Image("cross")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
                .font(.screenHeading)
                .foregroundStyle(Color("Orchid"))
        }
        .padding()
    }
}

#Preview {
    ProjectListView()
}
