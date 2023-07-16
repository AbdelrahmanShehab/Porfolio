//
//  InfoView.swift
//  Portfolio
//
//  Created by Abdelrahman Shehab on 16/07/2023.
//

import SwiftUI

struct InfoView: View {
    // MARK: -  PROPERTIES
    var infoTitle: String
    let imageName: String
    
    // MARK: -  VIEW
    var body: some View {
        HStack {
            Image(systemName: imageName)
                .font(.system(size: 18, weight: .semibold))
            
            Text(infoTitle)
                .font(.system(size: 17, weight: .medium, design: .rounded))
            
        }//: HSTACK
        .opacity(0.5)
    }
}

struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView(infoTitle: AppModel().portfolio.location, imageName: "mappin.and.ellipse")
    }
}
