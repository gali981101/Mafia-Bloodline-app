//
//  MovieModel.swift
//  Bloodline
//
//  Created by Terry Jason on 2026/1/19.
//

import SwiftUI

struct Movie: Identifiable {
    var id = UUID()
    var title: String
    var headline: String
    var image: String
    var rating: Int
    var Members: Int
    var Training: Int
    var Operations: Int
    var instructions: [String]
    var ingredients: [String]
}

