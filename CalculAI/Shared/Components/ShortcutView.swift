//
//  ShortcutView.swift
//  CalculAI
//
//  Created by Jean Paulo Marcel Henrique de Camargo on 06/10/24.
//
//
//  ShortcutView.swift
//  CalculAI
//
//  Created by Jean Paulo Marcel Henrique de Camargo on 06/10/24.
//

import SwiftUI

/// Componente visual reutilizável que exibe um atalho de funcionalidade do app (ex: cálculo de festas, conversões, etc).
///
/// Possui um ícone, título, descrição opcional e cor de fundo customizável.
/// O componente é interativo, atuando como botão e disparando uma ação ao ser tocado.
///
/// - Parameters:
///   - iconName: Nome do SF Symbol exibido à esquerda do atalho.
///   - title: Título do atalho.
///   - description: Descrição curta do atalho (opcional).
///   - backgroundColor: Cor de fundo do card.
///   - action: Closure executada ao tocar no atalho.
///
/// - Example:
/// ```swift
/// ShortcutView(
///     iconName: "party.popper.fill",
///     title: "Festas",
///     description: "Calcule a quantidade de comida para cada festa.",
///     backgroundColor: .blue
/// ) { print("Atalho de festas selecionado!") }
/// ```
struct ShortcutView: View {
    /// Nome do ícone do SF Symbol.
    var iconName: String
    /// Título do atalho.
    var title: String
    /// Descrição do atalho.
    var description: String?
    /// Cor de fundo do card.
    var backgroundColor: Color
    /// Ação disparada ao tocar no atalho.
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
                            .accessibilityHidden(true)

                        Spacer()

                        Text(title)
                            .font(.headline)
                            .foregroundColor(.white)
                            .multilineTextAlignment(.leading)
                            .accessibilityLabel(Text(title))
                    }

                    if let description, !description.isEmpty {
                        Text(description)
                            .font(.caption2)
                            .foregroundColor(.white)
                            .multilineTextAlignment(.leading)
                            .lineLimit(2)
                            .accessibilityLabel(Text(description))
                    }
                }
                .padding()
            }
            .contentShape(Rectangle())
        }
        .buttonStyle(.plain)
        .accessibilityElement(children: .combine)
        .accessibilityLabel(Text(title))
        .accessibilityHint(Text(description ?? ""))
        .frame(maxWidth: .infinity, minHeight: 120)
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
