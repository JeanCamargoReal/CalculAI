//
//  ContentView.swift
//  CalculAI
//
//  Created by Jean Paulo Marcel Henrique de Camargo on 06/10/24.
//

import SwiftUI

/// Tela inicial exibindo atalhos para cada tipo de festa.
struct HomeView: View {
    @State private var path = NavigationPath()
    let color = DesignTokens.Colors.self
    
    var body: some View {
        NavigationStack(path: $path) {
            VStack(spacing: 16) {
                TitleHomeView()
                
                TableGridView(views: PartyType.allCases.map { festa in
                    ShortcutView(
                        iconName: festa.iconName,
                        title: festa.rawValue,
                        description: festa.description,
                        backgroundColor: color.shortcutBackground
                    ) {
                        path.append(festa)
                    }
                })
                .navigationDestination(for: PartyType.self) { party in
                    ConsumptionCalculatorView(party: party)
                }
                
                Spacer()
            }
            .background(Color.black)
        }
    }
}

#Preview {
    HomeView()
}
