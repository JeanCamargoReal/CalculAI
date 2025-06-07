//
//  CLTCalculationsMenuView.swift
//  CalculAI
//
//  Created by Jean Camargo on 07/06/25.
//

import SwiftUI

struct CLTCalculationsMenuView: View {
    var body: some View {
        Text("Menu de Cálculos CLT")
            .font(.title)
            .foregroundColor(.primary)
            .navigationTitle("CLT")
            .navigationBarTitleDisplayMode(.inline)
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color(.systemBackground))
    }
}

#Preview {
    CLTCalculationsMenuView()
}
