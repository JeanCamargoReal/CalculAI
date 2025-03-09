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
    var backgroundColor: Int
    var action: () -> Void
    
    private let cornerRadius: CGFloat = 15
    private let shadowRadius: CGFloat = 5
    private let frameSize = CGSize(width: 180, height: 120)
    
    var body: some View {
        Button(action: action) {
            ZStack {
                Color(hex: backgroundColor)
                    .cornerRadius(cornerRadius)
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
                            .padding(.horizontal, 10)
                    }
                    .padding(.horizontal, 10)
                    .padding(.top, 10)
                    
                   
                    if let description = description, !description.isEmpty {
                        Text(description)
                            .font(.system(size: 12))
                            .foregroundColor(.white)
                            .multilineTextAlignment(.leading)
                            .padding(.horizontal, 10)
                            .padding(.bottom, 10)
                    }
                }
            }
            .frame(width: .infinity, height: frameSize.height)
        }
    }
}

#Preview {
    ShortcutView(iconName: "party.popper.fill", title: "Festas", description: "Calcule a quantide de comida que irá comprar para cada festa.", backgroundColor: 0x1C1C1C) {}
}

#Preview {
    TableGridView(views: [
        ShortcutView(iconName: "party.popper.fill", title: "Festas", description: "Calcule a quantide de comida que irá comprar para cada festa.", backgroundColor: 0x1C1C1C) {},
        ShortcutView(iconName: "party.popper.fill", title: "Festas", description: "Calcule a quantide de comida que irá comprar para cada festa.", backgroundColor: 0x1C1C1C) {},
        ShortcutView(iconName: "party.popper.fill", title: "Festas", description: "Calcule a quantide de comida que irá comprar para cada festa.", backgroundColor: 0x1C1C1C) {},
        ShortcutView(iconName: "party.popper.fill", title: "Festas", description: "Calcule a quantide de comida que irá comprar para cada festa.", backgroundColor: 0x1C1C1C) {},
    ])
}
