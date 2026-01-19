//
//  LifeModel.swift
//  Bloodline
//
//  Created by Terry Jason on 2026/1/19.
//

import SwiftUI

struct Life: Identifiable {
    var id = UUID()
    var image: String
    var stage: String
    var title: String
    var description: String
    var status: String
    var instruction: String
}
