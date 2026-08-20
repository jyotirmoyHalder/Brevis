//
//  HotkeyModel.swift
//  Brevis
//
//  Created by jyotirmoy_halder on 16/8/26.
//

import Foundation

struct HotkeyModel: Identifiable {
    let id = UUID()
    
    let modifiers: [Modifier]
    let character: String
    let text: String
    
    // TODO: Update description
    var description: String {
         var result = ""
        for modifier in modifiers {
            result += modifier.rawValue
            result += " "
        }
        result += "\(character.capitalized)"
        return result
    }
}
