//
//  SplashScreenView.swift
//  CalculAI
//
//  Created by Jean Paulo Marcel Henrique de Camargo on 06/10/24.
//

import SwiftUI

/// Tela de splash do CalculAI, exibida ao iniciar o app.
///
/// Possui uma animação simples no ícone e título do app antes de navegar para a tela principal.
struct SplashScreenView: View {
    /// Controla se a splash já pode ser escondida.
    @State private var isActive = false
    /// Escala inicial da animação do ícone.
    @State private var scale: CGFloat = 0.8
    /// Opacidade inicial da animação do ícone.
    @State private var opacity = 0.5

    var body: some View {
        if isActive {
            HomeView()
        } else {
            VStack {
                TitleHomeView()
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color.black)
            .onAppear {
                // Aguarda 2 segundos antes de exibir a tela principal
                DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
                    withAnimation {
                        self.isActive = true
                    }
                }
            }
        }
    }
}

#Preview {
    SplashScreenView()
}

