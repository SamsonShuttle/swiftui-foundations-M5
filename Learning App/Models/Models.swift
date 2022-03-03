//
//  Models.swift
//  Learning App
//
//  Created by Samson Shuttle on 03/03/2022.
//

import Foundation
import SwiftUI

struct Module: Decodable, Identifiable {
    
    var id: Int
    var catergory: String
    var content: Content
    var test: Test
    
}

struct Content: Decodable, Identifiable {
    
    var id: Int
    var image: String
    var time: String
    var description: String
    var lessons: Lesson
    
}

struct Lesson: Decodable, Identifiable {
    
    var id: Int
    var title: String
    var video: String
    var duration: String
    var explantion: String
    
}

struct Test: Decodable, Identifiable {
    
    var id: Int
    var image: String
    var time: String
    var description: String
    var questions: [Question]
    
}

struct Question: Decodable, Identifiable {
    
    var id: Int
    var contest: String
    var correctIndex: Int
    var anwsers: [String]
    
}
    
