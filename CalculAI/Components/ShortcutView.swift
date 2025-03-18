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
    var description: String?
    var backgroundColor: Color
    var action: () -> Void

    private let cornerRadius: CGFloat = 15
    private let shadowRadius: CGFloat = 5

    var body: some View {
        Button(action: action) {
            ZStack {
                RoundedRectangle(cornerRadius: cornerRadius)
                    .fill(backgroundColor)
                    .shadow(radius: shadowRadius)

                VStack(alignment: .leading, spacing: 8) {
                    HStack {
                        Image(systemName: iconName)
                            .font(.title)
                            .foregroundColor(.white)

                        Spacer()

                        Text(title)
                            .font(.headline)
                            .foregroundColor(.white)
                            .multilineTextAlignment(.leading)
                    }

                    if let description, !description.isEmpty {
                        Text(description)
                            .font(.footnote)
                            .foregroundColor(.white)
                            .multilineTextAlignment(.leading)
                    }
                }
                .padding()
            }
            .contentShape(Rectangle()) // Expande área de toque do botão
        }
        .buttonStyle(.plain) // Remove estilos padrão do botão
        .frame(maxWidth: .infinity, minHeight: 120) // Melhor responsividade
    }
}

#Preview {
    ShortcutView(
        iconName: "party.popper.fill",
        title: "Festas",
        description: "Calcule a quantidade de comida para cada festa.",
        backgroundColor: .blue
    ) {}
}
