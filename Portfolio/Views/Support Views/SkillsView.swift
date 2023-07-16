//
//  SkillsView.swift
//  Portfolio
//
//  Created by Abdelrahman Shehab on 16/07/2023.
//

import SwiftUI

struct SkillsView: View {
    // MARK: -  PROPERTIES
    var skills: [Skill]
    var width: CGFloat
    
    @State var showSkills: Bool = true
    
    // MARK: -  VIEW
    var body: some View {
        VStack(alignment: .leading) {
            HStack(spacing: 12) {
                Text("Skills")
                    .font(.system(size: 25, weight: .heavy, design: .monospaced))
                .opacity(0.9)
                
                Button {
                    withAnimation(.easeInOut(duration: 0.35)) {
                        self.showSkills.toggle()
                    }
                } label: {
                    Image(systemName: "chevron.up")
                        .font(.system(size: 18, weight: .semibold))
                        .rotationEffect(self.showSkills ? .zero : .degrees(180))
                }
                .buttonStyle(PlainButtonStyle())
            }//: HSTACK
            
            if showSkills {
                LazyVGrid(columns: [GridItem(), GridItem(), GridItem()], alignment: .leading, spacing: 12) {
                    ForEach(skills) { skill in
                        SkillView(skill: skill, width: width / 3 - 25)
                    }//: LOOP
                }//: LazyVGRID
                .padding(.top, 30)
            }
            

        }//: VSTACK
    }
}

struct SkillsView_Previews: PreviewProvider {
    static var previews: some View {
        
        GeometryReader { proxy in
            SkillsView(skills: AppModel().portfolio.skills, width: 400)
                .padding(24)
        }
    }
}
