//
//  MainHotkeysView.swift
//  Brevis
//
//  Created by jyotirmoy_halder on 20/8/26.
//

import SwiftUI

struct MainHotkeysView: View {
    @State private var searchQuery = ""
    var vm: HotkeyCategoryViewModel = HotkeyCategoryViewModel()
    
    var body: some View {
        NavigationStack {
            Form {
                // Sections for each category
                List(vm.hotkeyCategoryModels) { hotkeyModel in
                    HotkeySectionView(hotkeyCategoryName: hotkeyModel.name, hotkeyModels: hotkeyModel.hotkeyModels, searchQuery: searchQuery)
                }
            }
            .navigationTitle("Xcode Hotkeys")
            .searchable(text: $searchQuery, placement: .navigationBarDrawer, prompt: "Search...")
            
            KeySymbolView()
        }
    }
}

#Preview {
    MainHotkeysView()
}
