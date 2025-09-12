//
//  ProjectCardView.swift
//  db-project-tracker
//
//  Created by Dev Soni on 09/09/25.
//

import SwiftUI

struct ProjectCardView: View {
    
    
    var body: some View {
        ZStack (alignment: .leading){
            RoundedRectangle(cornerRadius: 15)
                .opacity(0.7)
                .shadow(radius: 5, x:0, y:4)
            VStack (alignment: .leading, spacing: 10) {
                Text("Code With Dev")
                    .font(Font.bigheadline)
                    .foregroundStyle(.white)
                
                // Bubbles
                HStack (alignment: .center, spacing: 13) {
                    Spacer()
                    StatBubbleView(title: "Hours", stat: 250, startColor: Color("Navy"), endColor: Color("Blue"))
                    StatBubbleView(title: "Sessions", stat: 34, startColor: Color("Green"), endColor: Color("Lime"))
                    StatBubbleView(title: "Updates", stat: 290, startColor: Color("Maroon"), endColor: Color("Purple"))
                    StatBubbleView(title: "Wins", stat: 9, startColor: Color("Maroon"), endColor: Color("Olive"))
                    Spacer()
                }
                
                Text("My current focus is")
                    .font(Font.featuredText)
                    .foregroundStyle(.gray)
                Text("Design the new website")
                    .font(Font.featuredText)
                    .bold()
                    .foregroundStyle(.gray)
                    
            }
            .padding()
        }
    }
}

#Preview {
    ProjectCardView()
}
