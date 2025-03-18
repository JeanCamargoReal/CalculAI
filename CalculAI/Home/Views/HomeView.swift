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
            titleHome
            tableGridView
            
            Spacer()
        }
        .background(.black)
    }
}

private var titleHome: some View {
    Text("CalculAI")
        .font(.system(size: 32, weight: .bold, design: .default))
        .foregroundColor(.white)
}

private var tableGridView: some View {
    TableGridView(views: [
        ShortcutView(iconName: "briefcase.fill",
                     title: "CLT",
                     description: "Faça calculos trabalhistas.",
                     backgroundColor: .nero) {},
        ShortcutView(iconName: "ruler",
                     title: "Conversões",
                     description: "Converta valores.",
                     backgroundColor: .nero) {},
        ShortcutView(iconName: "party.popper.fill",
                     title: "Festas",
                     description: "Calcule a quantide de comida que irá comprar para cada tipo de festa.",
                     backgroundColor: .nero) {},
        
        ShortcutView(iconName: "x.squareroot",
                     title: "Geral",
                     description: "Calcule IMC, área, etc.",
                     backgroundColor: .nero) {},
    ])
}

#Preview {
    HomeView()
}
