//
//  HeaderView.swift
//  Portfolio
//
//  Created by Abdelrahman Shehab on 16/07/2023.
//

import SwiftUI

struct HeaderView: View {
    // MARK: -  PROPERTIES
    var appModel: AppModel
    
    // MARK: -  View
    var body: some View {
        VStack {
    
            Image("self")
                .resizable()
                .scaledToFit()
                .clipShape(Circle())
                .overlay(Circle().stroke(Color.gray, lineWidth: 5))
                .shadow(radius: 8)
                .frame(width: 100, height: 100)
            
            Text(appModel.portfolio.name)
                .font(.system(size: 17, weight: .bold, design: .monospaced))
                .padding(.top, 8)
            
            Text(appModel.portfolio.role)
                .font(.system(size: 18, weight: .medium, design: .monospaced))
                .italic()
                .opacity(0.85)
                .padding(.top, -2)
            
            InfoView(infoTitle: appModel.portfolio.location, imageName: "mappin.and.ellipse")
                .padding(.top, 8)
            
            InfoView(infoTitle: appModel.portfolio.phone, imageName: "phone.fill")
                .padding(.top, 5)
            
            InfoView(infoTitle: appModel.portfolio.birth, imageName: "birthday.cake.fill")
                .padding(.top, 5)
            
            InfoView(infoTitle: appModel.portfolio.email, imageName: "envelope.fill")
                .padding(.top, 5)
            
            Text(appModel.portfolio.description)
                .font(.system(size: 16, weight: .medium, design: .monospaced))
                .italic()
                .opacity(0.7)
                .padding(.top, 24)
                .multilineTextAlignment(.leading)
                .lineSpacing(5)
            
        }//: VSTACK
    }
}

struct HeaderViews_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView(appModel: AppModel())
            .padding(24)
    }
}
