//
//  ShortcutView.swift
//  CalculAI
//
//  Created by Jean Paulo Marcel Henrique de Camargo on 06/10/24.
//

import SwiftUI

struct ShortcutView: View {
    var iconName: String
    var title: String
    var description: String
    var backgroundColor: Int
    var action: () -> Void

    var body: some View {
        Button(action: action) {
            ZStack {
                Color(hex: backgroundColor)
                    .cornerRadius(15) // Borda arredondada
                    .shadow(radius: 5)
                
                VStack(alignment: .leading) {
                    HStack {
                        Image(systemName: iconName)
                            .font(.title)
                            .foregroundColor(.white)
                        Spacer()

                        Text(title)
                            .font(.headline)
                            .foregroundColor(.white)
                    }
                    .padding([.top, .horizontal], 10)
                    
                    Spacer()
                    
                    HStack {
                        Text(description)
                            .font(.footnote)
                            .foregroundColor(.white)
                            .multilineTextAlignment(.leading)
                        Spacer()
                    }
                    .padding(.bottom, 10)
                    .padding(.horizontal, 10)
                }
            }
            .frame(width: 200, height: 120)
        } // Tamanho do componente
    }
}

#Preview {
    ShortcutView(iconName: "fork.knife", title: "Alimentos", description: "Calcule a quantidade de alimento comprar", backgroundColor: 0x1C1C1C) {}
}
