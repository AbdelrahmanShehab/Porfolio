//
//  AppModel.swift
//  Portfolio
//
//  Created by Abdelrahman Shehab on 16/07/2023.
//

import Foundation

class AppModel: ObservableObject {
    var portfolio: Portfolio = Portfolio(name: "Abdelrahman Shehab", role: "iOS Developer", description: "My passion for iOS development is a strong motivator behind my desire to excel in this field and land a job in the industry, I'm working on personal projects with UIKit and SwifUI.", location: "Cairo, Egypt", phone: "+201203526716", email: "abdoshehab7@gmail.com", birth: "19/6/1997", skills: [
        Skill(id: UUID().uuidString, skillName: "iOS", image: "apps.iphone"),
        Skill(id: UUID().uuidString, skillName: "SwiftUI", image: "swift"),
        Skill(id: UUID().uuidString, skillName: "MapKit", image: "map.circle"),
        Skill(id: UUID().uuidString, skillName: "WatchOS", image: "applewatch"),
        Skill(id: UUID().uuidString, skillName: "UI / UX", image: "hand.tap.fill"),
        Skill(id: UUID().uuidString, skillName: "Editing", image: "wand.and.rays")
    ], experiences: [
        Experience(id: UUID().uuidString, companyName: "Vodafone", role: "iOS Developer", duration: "Aug 2023 - Present"),
        Experience(id: UUID().uuidString, companyName: "Valu", role: "iOS Developer", duration: "Mar 2023 - Jul 2023"),
        Experience(id: UUID().uuidString, companyName: "InnoTech", role: "iOS Developer", duration: "Oct 2019 - Feb 2023")
    ])
}
