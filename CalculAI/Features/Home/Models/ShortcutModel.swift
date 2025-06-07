//
//  ShortcutModel.swift
//  CalculAI
//
//  Created by Jean Camargo on 07/06/25.
//

import SwiftUI

/// Modelo de dados para cada atalho exibido na tela inicial.
struct ShortcutModel: Identifiable {
    let id = UUID()
    let iconName: String
    let title: String
    let description: String?
    let route: HomeRoute
}
