//
//  YearDataPoint.swift
//  Swift UI Challenge
//
//  Created by Matthew Fisher on 2023/12/24.
//

import Foundation

struct StudyTimeDatapoint: Identifiable {
    let id: UUID = UUID()
    let studyTime: String
    let mastery: Int
}
