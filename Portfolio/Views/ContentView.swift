//
//  ContentView.swift
//  Portfolio
//
//  Created by Abdelrahman Shehab on 16/07/2023.
//

import SwiftUI

struct ContentView: View {
    // MARK: -  PROPERTIES
    var appModel = AppModel()
    
    // MARK: -  VIEW
    var body: some View {
        ZStack {
            Color(UIColor.systemBackground)
                .ignoresSafeArea()
            
            ScrollView(.vertical, showsIndicators: false) {
                
                VStack(alignment: .leading) {
                    HeaderView(appModel: appModel)
                    
                    SkillsView(skills: appModel.portfolio.skills, width: UIScreen.main.bounds.width - 40)
                        .padding(.top, 32)
                    ExperiencesView(experiences: appModel.portfolio.experiences)
                        .padding(.top, 32)

                }//: VSTACK
                .padding(24)
            }//: SCROLL
        }//: ZSTACK
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .colorScheme(.dark)
    }
}
