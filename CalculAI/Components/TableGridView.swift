//
//  TableGridView.swift
//  CalculAI
//
//  Created by Jean Camargo on 09/03/25.
//

import SwiftUI

struct TableGridView<Content: View>: View {
    let views: [Content]
    private let spacing: CGFloat = 8
    
    var body: some View {
        LazyVGrid(columns: Array(repeating: GridItem(.flexible(), spacing: spacing), count: 2), spacing: spacing) {
            ForEach(views.indices, id: \..self) { index in
                views[index]
            }
        }
        .padding(.horizontal, 8)
    }
}


#Preview {
    TableGridView(views: [
        ShortcutView(iconName: "party.popper.fill", title: "Festas", description: "Calcule a quantide de comida que irá comprar para cada festa.", backgroundColor: 0x1C1C1C) {},
        ShortcutView(iconName: "party.popper.fill", title: "Festas", description: "Calcule a quantide de comida que irá comprar para cada festa.", backgroundColor: 0x1C1C1C) {},
        ShortcutView(iconName: "party.popper.fill", title: "Festas", description: "Calcule a quantide de comida que irá comprar para cada festa.", backgroundColor: 0x1C1C1C) {},
        ShortcutView(iconName: "party.popper.fill", title: "Festas", description: "Calcule a quantide de comida que irá comprar para cada festa.", backgroundColor: 0x1C1C1C) {},
    ])
}
