//
//  ContentView.swift
//  CalculAI
//
//  Created by Jean Paulo Marcel Henrique de Camargo on 06/10/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            ShortcutView(iconName: "fork.knife", title: "Alimentos", backgroundColor: 0x1C1C1C)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)        .background(Color.black)
    }
}

#Preview {
    ContentView()
}
