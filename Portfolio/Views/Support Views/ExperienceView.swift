//
//  ExperienceView.swift
//  Portfolio
//
//  Created by Abdelrahman Shehab on 16/07/2023.
//

import SwiftUI

struct ExperienceView: View {
    // MARK: -  PROPERTIES
    var experience: Experience
    
    // MARK: -  VIEW
    var body: some View {
        VStack(alignment: .leading) {
            Circle()
                .frame(width: 10, height: 10)
                .opacity(0.65)
            HStack {
                RoundedRectangle(cornerRadius: 8)
                    .frame(width: 3)
                    .padding(.leading, 3)
                
                VStack(alignment: .leading) {
                    Text(experience.role)
                        .font(.system(size: 19, weight: .bold, design: .monospaced))
                    
                    Text(experience.companyName)
                        .font(.system(size: 17, weight: .medium, design: .rounded))
                        .opacity(0.75)
                        .padding(.top, 14)
                        
                    Text(experience.duration)
                        .font(.system(size: 16, weight: .medium))
                        .italic()
                        .padding(.top, 6)
                        .opacity(0.6)
                }//: VSTACK
                .padding(.leading, 16)
            }//: HSATCK
            .padding(.top, 8)
        }//: VSTACK
        .fixedSize()
    }
}

struct ExperienceView_Previews: PreviewProvider {
    static var previews: some View {
        GeometryReader { geometry in
            ExperienceView(experience: AppModel().portfolio.experiences[0])
                .padding(24)
        }
    }
}
