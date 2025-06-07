//
//  ContentView.swift
//  CalculAI
//
//  Created by Jean Paulo Marcel Henrique de Camargo on 06/10/24.
//

//
//  HomeView.swift
//  CalculAI
//
//  Created by Jean Paulo Marcel Henrique de Camargo on 06/10/24.
//

import SwiftUI

/// Tela inicial do app CalculAI, exibindo o título e o grid de atalhos principais.
///
/// Utiliza o componente `TableGridView` para exibir os atalhos (Shortcuts).
struct HomeView: View {
    var body: some View {
        VStack {
            titleHome
            tableGridView
            Spacer()
        }
        .background(Color.black)
    }
}

/// Exibe o título principal da tela home.
private var titleHome: some View {
    Text("Calcul∆I")
        .font(.system(size: 32, weight: .bold, design: .default))
        .foregroundColor(.white)
        .accessibilityAddTraits(.isHeader)
}

/// Exibe o grid com os atalhos principais do app.
private var tableGridView: some View {
    
    let color = DesignTokens.Colors.self
    
    return TableGridView(
        views: [
            ShortcutView(iconName: "briefcase.fill",
                     title: "CLT",
                     description: "Faça cálculos trabalhistas.",
                     backgroundColor: color.shortcutBackground) {
                     },
            ShortcutView(iconName: "ruler",
                     title: "Conversões",
                     description: "Converta valores.",
                     backgroundColor: color.shortcutBackground) {},
            ShortcutView(iconName: "party.popper.fill",
                     title: "Festas",
                     description: "Calcule a quantidade de comida que irá comprar para cada tipo de festa.",
                     backgroundColor: color.shortcutBackground) {},
            ShortcutView(iconName: "x.squareroot",
                     title: "Geral",
                     description: "Calcule IMC, área, etc.",
                     backgroundColor: color.shortcutBackground) {},
        ]
    )
}

#Preview {
    HomeView()
}
