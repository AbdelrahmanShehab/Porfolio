//
//  LinksView.swift
//  Portfolio
//
//  Created by Abdelrahman Shehab on 16/07/2023.
//

import SwiftUI

struct LinksView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            Text("Links 🔗")
                .font(.system(size: 20, weight: .heavy, design: .monospaced))
                .opacity(0.9)
            
            HStack {
                
                Spacer()
                
                Link("GitHub", destination: URL(string: AppModel().portfolio.githubLink)!)
                    .font(.system(size: 17, weight: .heavy, design: .rounded))
                    .foregroundStyle(Gradient(colors: [. gray, .gray, .gray, .black]))
                
                Spacer()
                
                Rectangle()
                    .frame(width: 3)
                    .opacity(0.75)
                
                Spacer()
                
                Link("LinkedIn", destination: URL(string: AppModel().portfolio.linkedinLink)!)
                    .font(.system(size: 17, weight: .heavy, design: .rounded))
                    .foregroundStyle(Gradient(colors: [.gray, .blue]))
                
                Spacer()
                
            }//: HSTACK
            .frame(width: UIScreen.main.bounds.width - 40, height: 40)
            .overlay(
                RoundedRectangle(cornerRadius: 12)
                    .stroke(lineWidth: 3)
                    .opacity(0.65)
            )
            .fixedSize()
            
        }//: VSTACK
    }
}

struct LinksView_Previews: PreviewProvider {
    static var previews: some View {
        LinksView()
    }
}
