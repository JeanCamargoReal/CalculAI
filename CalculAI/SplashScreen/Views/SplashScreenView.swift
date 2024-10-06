//
//  SplashScreenView.swift
//  CalculAI
//
//  Created by Jean Paulo Marcel Henrique de Camargo on 06/10/24.
//

import SwiftUI

struct SplashScreenView: View {
    @State private var isActive = false
    @State private var scale: CGFloat = 0.8
    @State private var opacity = 0.5

    var body: some View {
        if isActive {
            // Navega para a tela principal quando o tempo da Splash Screen acabar
            HomeView()
        } else {
            VStack {
                Image(systemName: "delta.circle")
                    .font(.system(size: 80))
                    .foregroundColor(.orange)
                    .scaleEffect(scale)
                    .opacity(opacity)
                    .onAppear {
                        // Animação de crescimento e fade-in
                        withAnimation(.easeIn(duration: 1.2)) {
                            self.scale = 1.0
                            self.opacity = 1.0
                        }
                    }
                Text("Calcul∆I")
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(.black)
            .onAppear {
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
