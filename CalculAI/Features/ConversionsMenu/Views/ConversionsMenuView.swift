//
//  ConversionsMenuView.swift
//  CalculAI
//
//  Created by Jean Camargo on 07/06/25.
//

import SwiftUI

struct ConversionsMenuView: View {
    var body: some View {
        Text("Menu de Conversões")
            .font(.title)
            .foregroundColor(.primary)
            .navigationTitle("Conversões")
            .navigationBarTitleDisplayMode(.inline)
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color(.systemBackground))
    }
}

#Preview {
    ConversionsMenuView()
}
