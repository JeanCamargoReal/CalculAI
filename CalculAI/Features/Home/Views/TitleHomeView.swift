//
//  TitleHomeView.swift
//  CalculAI
//
//  Created by Jean Camargo on 07/06/25.
//

import SwiftUI

/// Exibe título principal da tela home
struct TitleHomeView: View {
    var body: some View {
        Text("Calcul∆I")
            .font(.system(size: 32, weight: .bold, design: .monospaced))
            .foregroundStyle(.white)
            .accessibilityAddTraits(.isHeader)
    }
}

#Preview {
    TitleHomeView()
}
