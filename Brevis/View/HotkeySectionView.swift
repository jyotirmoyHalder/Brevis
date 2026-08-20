//
//  HotkeySectionView.swift
//  Brevis
//
//  Created by jyotirmoy_halder on 20/8/26.
//

import SwiftUI

struct HotkeySectionView: View {
    let hotkeyCategoryName: String
    let hotkeyModels: [HotkeyModel]
    let searchQuery: String
    
    // TODO: Use a Theme
    let sectionHeaderFont: Font = .body
    let fontWeight: Font.Weight = .semibold
    let sectionHeaderColor: Color = .red
    
    // TODO: Filter according to 'searchQuery'
    var filterHotkeyModels: [HotkeyModel] {
        hotkeyModels
    }
    
    var body: some View {
        if !filterHotkeyModels.isEmpty {
            Section {
                ForEach(filterHotkeyModels) { hotkeyModel in
                    // TODO: HotkeyRow
                    Text("\(hotkeyModel.character) \(hotkeyModel.text)")
                }
            } header: {
                Text(hotkeyCategoryName)
                    .font(sectionHeaderFont)
                    .fontWeight(fontWeight)
                    .foregroundStyle(sectionHeaderColor)
            }

        }
    }
}

#Preview {
    Form {
        HotkeySectionView(
            hotkeyCategoryName: "Navigation",
            hotkeyModels: [
                .init(modifiers: [.command], character: "1", text: "Project"),
                .init(modifiers: [.command], character: "2", text: "Source Control")
            ],
            searchQuery: ""
        )
    }
}
