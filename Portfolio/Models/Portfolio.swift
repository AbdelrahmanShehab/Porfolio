//
//  Portfolio.swift
//  Portfolio
//
//  Created by Abdelrahman Shehab on 16/07/2023.
//

import Foundation

struct Skill: Identifiable {
    var id: String
    let skillName: String
    let image: String
}

struct Experience: Identifiable {
    var id: String
    let companyName: String
    let role: String
    let duration: String
}

struct Portfolio {
    let name: String
    let role: String
    let description: String
    let education: String
    let university: String
    let graduationYear: String
    let location: String
    let phone: String
    let email: String
    let birth: String
    
    let skills: [Skill]
    let experiences: [Experience]
}
