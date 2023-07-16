//
//  EducationView.swift
//  Portfolio
//
//  Created by Abdelrahman Shehab on 16/07/2023.
//

import SwiftUI

// MARK: -  VIEW
struct EducationView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 5) {
            Text("Education")
                .font(.system(size: 25, weight: .heavy, design: .monospaced))
                .opacity(0.9)
            
            Text(AppModel().portfolio.education)
                .font(.system(size: 16, weight: .semibold, design: .monospaced))
                .opacity(0.8)
                .padding(.top, 20)
                .multilineTextAlignment(.leading)
                .lineSpacing(5)
            Text(AppModel().portfolio.university)
                .font(.system(size: 14, weight: .medium, design: .monospaced))
                .italic()
                .padding(.top, 10)
                .opacity(0.7)
            Text(AppModel().portfolio.graduationYear)
                .font(.system(size: 12, weight: .medium, design: .monospaced))
                .italic()
                .padding(.top, 2)
                .opacity(0.65)

        }//: VSTACK
        .padding(.top, 5)
    }
}

struct EducationView_Previews: PreviewProvider {
    static var previews: some View {
        EducationView()
    }
}
