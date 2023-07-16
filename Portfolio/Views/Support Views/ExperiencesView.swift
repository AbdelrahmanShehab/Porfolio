//
//  ExperiencesView.swift
//  Portfolio
//
//  Created by Abdelrahman Shehab on 16/07/2023.
//

import SwiftUI

struct ExperiencesView: View {
    // MARK: -  PROPERTIES
    var experiences: [Experience]
    
    @State var showExperiences: Bool = false
    
    // MARK: -  VIEW
    var body: some View {
        VStack(alignment: .leading) {
            HStack(spacing: 12) {
                Text("Experience")
                    .font(.system(size: 25, weight: .heavy, design: .monospaced))
                    .opacity(0.9)
                
                Button {
                    withAnimation(.easeInOut(duration: 0.35)) {
                        self.showExperiences.toggle()
                    }
                } label: {
                    Image(systemName: "chevron.up")
                        .font(.system(size: 18, weight: .semibold))
                        .rotationEffect(self.showExperiences ? .zero : .degrees(180))
                }
                .buttonStyle(PlainButtonStyle())
            }//: HSTACK
            
            if showExperiences {
                    ForEach(experiences) { experience in
                        ExperienceView(experience: experience)
                    }//: LOOP
                .padding(.top, 30)
            }
            
            
        }
    }
}

struct ExperiencesView_Previews: PreviewProvider {
    static var previews: some View {
        GeometryReader { geometry in
            ExperiencesView(experiences: AppModel().portfolio.experiences)
                .padding(24)
        }
    }
}
