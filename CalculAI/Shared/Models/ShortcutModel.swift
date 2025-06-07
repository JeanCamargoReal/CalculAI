//
//  ShortcutModel.swift
//  CalculAI
//
//  Created by Jean Camargo on 07/06/25.
//

import SwiftUI

struct ShortcutModel: Identifiable {
    let id = UUID()
    let iconName: String
    let title: String
    let description: String?
    let backgroundColor: Color
    let action: () -> Void
}
