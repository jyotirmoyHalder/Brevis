//
//  HotkeyCategoryModel.swift
//  Brevis
//
//  Created by jyotirmoy_halder on 19/8/26.
//

import Foundation

struct HotkeyCategoryModel: Identifiable {
    let id = UUID()
    
    let name: String
    let hotkeyModels: [HotkeyModel]
}
