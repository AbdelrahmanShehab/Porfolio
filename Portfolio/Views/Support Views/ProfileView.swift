//
//  ProfileView.swift
//  Portfolio
//
//  Created by Abdelrahman Shehab on 16/07/2023.
//

import SwiftUI

struct ProfileView: View {

    // MARK: -  VIEW
    var body: some View {
        VStack(alignment: .leading, spacing: 5) {
                Text("Profile")
                    .font(.system(size: 25, weight: .heavy, design: .monospaced))
                    .opacity(0.9)
                
                Text(AppModel().portfolio.description)
                    .font(.system(size: 16, weight: .medium, design: .monospaced))
                    .italic()
                    .opacity(0.7)
                    .padding(.top, 20)
                    .multilineTextAlignment(.leading)
                    .lineSpacing(5)
            
        }//: VSTACK
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
