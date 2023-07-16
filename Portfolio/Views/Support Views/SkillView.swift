//
//  SkillView.swift
//  Portfolio
//
//  Created by Abdelrahman Shehab on 16/07/2023.
//

import SwiftUI

struct SkillView: View {
    // MARK: -  PROPERTIES
    var skill: Skill
    var width: CGFloat = 120
    
    // MARK: -  VIEW
    var body: some View {
        VStack {
            Image(systemName: skill.image)
                .font(.system(size: 35, weight: .bold, design: .monospaced))
                .opacity(0.8)
            
            Text(skill.skillName)
                .font(.system(size: 13, weight: .bold, design: .monospaced))
                .padding(.top, 5)
        }//: VSTACK
        .padding()
        .frame(width: width, height: 110)
        .background(
            RoundedRectangle(cornerRadius: 12)
                .opacity(0.075)
        )
    }
}

struct SkillView_Previews: PreviewProvider {
    static var previews: some View {
        SkillView(skill: AppModel().portfolio.skills[0])
    }
}
