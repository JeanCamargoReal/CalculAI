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
    var backgroundColor: Int

    var body: some View {
        ZStack {
            Color(hex: backgroundColor)
                .cornerRadius(15) // Borda arredondada
                .shadow(radius: 5)

            VStack {
                HStack {
                    Image(systemName: iconName)
                        .foregroundColor(.white)
                    Spacer()
                }
                .padding([.top, .horizontal], 10)

                Spacer()

                HStack {
                    Text(title)
                        .font(.headline)
                        .foregroundColor(.white)

                    Spacer()
                }
                .padding(.bottom, 10)
                .padding(.horizontal, 10)
            }
        }
        .frame(width: 180, height: 120) // Tamanho do componente
    }
}

#Preview {
    ShortcutView(iconName: "fork.knife", title: "Alimentos", backgroundColor: 0x1C1C1C)
}
