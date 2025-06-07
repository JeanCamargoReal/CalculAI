//
//  GeneralCalculationsMenuView.swift
//  CalculAI
//
//  Created by Jean Camargo on 07/06/25.
//

import SwiftUI

struct GeneralCalculationsMenuView: View {
    var body: some View {
        Text("Menu Geral de Cálculos")
            .font(.title)
            .foregroundColor(.primary)
            .navigationTitle("Geral")
            .navigationBarTitleDisplayMode(.inline)
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color(.systemBackground))
    }
}

#Preview {
    GeneralCalculationsMenuView()
}
