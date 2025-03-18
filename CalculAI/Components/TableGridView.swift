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
        LazyVGrid(columns: [GridItem(.adaptive(minimum: 180), spacing: spacing)], spacing: spacing) {
            ForEach(views.indices, id: \.self) { index in
                views[index]
            }
        }
        .padding(.horizontal, 8)
    }
}

#Preview {
    TableGridView(views: [
        ShortcutView(iconName: "party.popper.fill", title: "Festas", description: "Calcule a quantidade de comida para cada festa.", backgroundColor: .blue) {},
        ShortcutView(iconName: "birthday.cake.fill", title: "Aniversários", description: "Planeje o evento perfeito.", backgroundColor: .red) {},
        ShortcutView(iconName: "cart.fill", title: "Compras", description: "Organize sua lista de compras.", backgroundColor: .green) {},
        ShortcutView(iconName: "briefcase.fill", title: "Trabalho", description: "Gerencie suas tarefas diárias.", backgroundColor: .purple) {},
    ])
}
