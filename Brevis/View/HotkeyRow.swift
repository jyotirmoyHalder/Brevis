//
//  HotkeyRow.swift
//  Brevis
//
//  Created by jyotirmoy_halder on 20/8/26.
//

import SwiftUI

struct HotkeyRow: View {
    let hotkeyModel: HotkeyModel
    let searchQuery: String
    
    // TODO: Use Theme
    let font: Font = .body
    let fontSecondary: Font = .headline
    let fontWeight: Font.Weight = .regular
    
    var charFound: Bool {
        searchQuery.count == 1 && hotkeyModel.character.lowercased() == searchQuery.lowercased()
    }
    
    var body: some View {
        VStack(alignment: .leading) { // TODO: Adapt for Mac and iPad
            HStack {
                if charFound {
                    Text("🔵")
                        .font(font)
                }
                
                Text(hotkeyModel.description)
                    .font(font)
                    .fontWeight(.semibold)
            }
            Text(hotkeyModel.text.capitalized)
                .foregroundStyle(.secondary)
                .font(fontSecondary)
        }
        .foregroundStyle(charFound ? .blue : .black)
    }
}

#Preview {
    VStack {
        HotkeyRow(
            hotkeyModel: .init(
                modifiers: [.command],
                character: "b",
                text: "build"
            ),
            searchQuery: "b"
        )
        HotkeyRow(
            hotkeyModel: .init(
                modifiers: [.command],
                character: "b",
                text: "build"
            ),
            searchQuery: "r"
        )
    }
}
