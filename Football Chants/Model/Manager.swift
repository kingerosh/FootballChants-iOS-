//
//  Manager.swift
//  Football Chants
//
//  Created by Ерош Айтжанов on 26.03.2024.
//

import Foundation

enum JobType: String {
    case manager = "Manager"
    case headCoach = "Head Coach"
}

struct Manager {
    let name: String
    let job: JobType
}
