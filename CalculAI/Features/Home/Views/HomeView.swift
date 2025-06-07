//
//  ContentView.swift
//  CalculAI
//
//  Created by Jean Paulo Marcel Henrique de Camargo on 06/10/24.
//

import SwiftUI

/// Tela inicial do app CalculAI, exibindo o título e o grid de atalhos principais.
struct HomeView: View {
    @State private var path = NavigationPath()
    let color = DesignTokens.Colors.self
    
    /// Lista do atalhos disponíveis no app.
    private let shortcuts: [ShortcutModel] = [
        ShortcutModel(
            iconName: "briefcase.fill",
            title: "CLT",
            description: "Faça cálculos trabalhistas.",
            route: .clt
        ),
        ShortcutModel(
            iconName: "ruler",
            title: "Conversões",
            description: "Converta valores.",
            route: .conversions
        ),
        ShortcutModel(
            iconName: "party.popper.fill",
            title: "Festas",
            description: "Calcule a quantidade de comida para festas.",
            route: .parties)
        ,
        ShortcutModel(
            iconName: "x.squareroot",
            title: "Geral",
            description: "Calcule IMC, área, etc.",
            route: .general
        ),
    ]
    
    var body: some View {
        NavigationStack(path: $path) {
            VStack {
                TableGridView(
                    views: shortcuts.map { item in
                        ShortcutView(
                            iconName: item.iconName,
                            title: item.title,
                            description: item.description,
                            backgroundColor: color.shortcutBackground) {
                                path.append(item.route)
                            }
                    })
                    .navigationDestination(for: HomeRoute.self) { route in
                        switch route {
                        case .clt:
                            CLTCalculationsMenuView()
                        case .conversions:
                            ConversionsMenuView()
                        case .parties:
                            PartiesMenuView()
                        case .general:
                            GeneralCalculationsMenuView()
                        }
                    }
                
                TitleHomeView()
            }
            .background(.black)
        }
        
    }
}

#Preview {
    HomeView()
}
