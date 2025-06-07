//
//  PartiesMenuView.swift
//  CalculAI
//
//  Created by Jean Camargo on 07/06/25.
//

import SwiftUI

struct PartiesMenuView: View {
    var body: some View {
        Text("Menu de Festas")
            .font(.title)
            .foregroundColor(.primary)
            .navigationTitle("Festas")
            .navigationBarTitleDisplayMode(.inline)
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color(.systemBackground))
    }
}
