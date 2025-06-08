//
//  PartyType.swift
//  CalculAI
//
//  Created by Jean Camargo on 08/06/25.
//

import Foundation

/// Tipos de festas disponíveis para cálculo de consumo.
enum PartyType: String, CaseIterable, Identifiable, Hashable {
    case barbecue = "Churrasco"
    case anniversary = "Aniversário"
    case wedding = "Casamento"
    case dinner = "Jantar"
    
    var id: String { rawValue }
    
    var description: String {
        switch self {
        case .barbecue: return "Consumo de carnes, bebidas e acompanhamentos."
        case .anniversary: return "Salgados, doces, bolo e bebidas."
        case .wedding: return "Entradas, pratos, bebidas e sobremesas."
        case .dinner: return "Consumo para jantares formais."
        }
    }
    
    /// Ícone SF Symbol representativo
    var iconName: String {
        switch self {
        case .barbecue: return "flame.fill"
        case .anniversary: return "birthday.cake.fill"
        case .wedding: return "sparkles"
        case .dinner: return "fork.knife"
        }
    }
}
