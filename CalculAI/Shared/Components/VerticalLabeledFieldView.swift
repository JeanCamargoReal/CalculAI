//
//  VerticalLabeledFieldView.swift
//  CalculAI
//
//  Created by Jean Camargo on 08/06/25.
//

import SwiftUI

/// Campo de entrada customizado: label acima e campo de preenchimento estilizado abaixo.
///
import SwiftUI

struct VerticalLabeledFieldView: View {
    let label: String
    @Binding var text: String
    var placeholder: String
    var keyboardType: UIKeyboardType = .default
    var accessibilityLabel: String? = nil
    var focused: FocusState<ConsumptionCalculatorView.Field?>.Binding
    var field: ConsumptionCalculatorView.Field

    var body: some View {
        VStack(alignment: .leading, spacing: 6) {
            Text(label)
                .font(.subheadline)
                .foregroundColor(.white)
                .accessibilityAddTraits(.isStaticText)
            ZStack(alignment: .leading) {
                // Placeholder customizado para garantir cor branca/clara
                if text.isEmpty {
                    Text(placeholder)
                        .foregroundColor(Color.white)
                        .padding(.horizontal, 12)
                }
                TextField("", text: $text)
                    .keyboardType(keyboardType)
                    .padding(12)
                    .background(
                        RoundedRectangle(cornerRadius: 10)
                            .fill(Color(.darkGray).opacity(0.85))
                    )
                    .foregroundColor(.white)
                    .font(.body)
                    .focused(focused, equals: field)
                    .accessibilityLabel(accessibilityLabel ?? label)
            }
        }
        .padding(.vertical, 8)
    }
}



#Preview {
    struct PreviewWrapper: View {
        @FocusState private var focused: ConsumptionCalculatorView.Field?
        
        var body: some View {
            VStack {
                Spacer()
                VerticalLabeledFieldView(
                    label: "Adultos",
                    text: .constant(""),
                    placeholder: "Preencha aqui",
                    focused: $focused,
                    field: .adults
                )
                Spacer()
            }
            .background(Color.black)
        }
    }
    return PreviewWrapper()
}
