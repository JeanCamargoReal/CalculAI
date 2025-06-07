//
//  TableGridView.swift
//  CalculAI
//
//  Created by Jean Camargo on 09/03/25.
//

//
//  TableGridView.swift
//  CalculAI
//
//  Created by Jean Camargo on 09/03/25.
//

import SwiftUI

/// Um grid visual adaptativo para exibir múltiplos atalhos (ou outros componentes), inspirado no app Atalhos do iOS.
///
/// Os elementos são exibidos em colunas responsivas, com espaçamento entre eles e nas bordas.
/// Ideal para uso em telas iniciais, menus ou dashboards.
///
/// - Parameters:
///   - views: Array de componentes do tipo `View` a serem exibidos no grid.
///
/// - Example:
/// ```swift
/// TableGridView(views: [
///     ShortcutView(iconName: "party.popper.fill", title: "Festas", ... ) { },
///     ShortcutView(iconName: "cart.fill", title: "Compras", ... ) { },
/// ])
/// ```
struct TableGridView<Content: View>: View {
    /// Array de views exibidas no grid.
    let views: [Content]
    /// Espaçamento entre as células do grid.
    private let spacing: CGFloat = 8

    var body: some View {
        ScrollView {
            LazyVGrid(
                columns: [GridItem(.adaptive(minimum: 180), spacing: spacing)],
                spacing: spacing
            ) {
                ForEach(views.indices, id: \.self) { index in
                    views[index]
                        .accessibilityElement(children: .contain)
                }
            }
            .padding(.horizontal, 8)
        }
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

