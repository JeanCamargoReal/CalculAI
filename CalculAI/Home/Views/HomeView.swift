//
//  ContentView.swift
//  CalculAI
//
//  Created by Jean Paulo Marcel Henrique de Camargo on 06/10/24.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        VStack {
            ShortcutView(iconName: "party.popper.fill", title: "Festas", description: "Calcule a quantide de comida comprar para cada festa.", backgroundColor: 0x1C1C1C) {}
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)        .background(Color.black)
    }
}

#Preview {
    HomeView()
}
