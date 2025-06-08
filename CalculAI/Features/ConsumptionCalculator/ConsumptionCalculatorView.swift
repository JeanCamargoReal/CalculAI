//
//  ConsumptionCalculatorView.swift
//  CalculAI
//
//  Created by Jean Camargo on 08/06/25.
//

import SwiftUI

/// Tela de cálculo de consumo para cada tipo de festa, com fundo preto e textos claros.
struct ConsumptionCalculatorView: View {
    let party: PartyType

    @State private var adults: String = ""
    @State private var children: String = ""
    @State private var result: String?
    @FocusState private var focusedField: Field?
    @State private var showHowToCalculate: Bool = false

    enum Field { case adults, children }

    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 20) {
                // Título
                Text("Cálculo de Consumo para seu \(party.rawValue)")
                    .font(.title2)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .accessibilityAddTraits(.isHeader)
                    .padding(.top, 12)

                VStack(alignment: .leading, spacing: 20) {
                    Text("Preencha os campos abaixo para estimar o consumo ideal para sua festa.")
                        .font(.body)
                        .foregroundColor(.white.opacity(0.8))

                    VerticalLabeledFieldView(
                        label: "Adultos",
                        text: $adults,
                        placeholder: "Quantidade de adultos",
                        keyboardType: .numberPad,
                        accessibilityLabel: "Quantidade de adultos",
                        focused: $focusedField,
                        field: .adults
                    )

                    VerticalLabeledFieldView(
                        label: "Crianças",
                        text: $children,
                        placeholder: "Quantidade de crianças",
                        keyboardType: .numberPad,
                        accessibilityLabel: "Quantidade de crianças",
                        focused: $focusedField,
                        field: .children
                    )
                }

                Button(action: calculateConsumption) {
                    Label("Calcular", systemImage: "function")
                        .frame(maxWidth: .infinity)
                }
                .buttonStyle(.borderedProminent)
                .tint(.accentColor)
                .foregroundColor(.white)
                .controlSize(.large)
                .accessibilityHint("Calcula o consumo de comida e bebida")
                .padding(.top, 10)

                if let result {
                    ResultSection(result: result)
                        .transition(.opacity)
                        .animation(.easeInOut, value: result)
                }

                Button(action: { showHowToCalculate.toggle() }) {
                    Label("Como este cálculo é feito?", systemImage: "info.circle")
                        .foregroundColor(.white)
                }
                .buttonStyle(.plain)
                .accessibilityHint("Explica como o cálculo é feito")
                .padding(.top, 8)

                if showHowToCalculate {
                    CalculationExplanation(party: party)
                        .transition(.opacity)
                        .animation(.easeInOut, value: showHowToCalculate)
                }

                Spacer(minLength: 24)
            }
            .padding()
        }
        .background(Color.black.ignoresSafeArea())
        .navigationTitle(party.rawValue)
        .navigationBarTitleDisplayMode(.inline)
        .toolbar {
            ToolbarItemGroup(placement: .keyboard) {
                Spacer()
                Button("OK") { focusedField = nil }
            }
        }
    }

    /// Exemplo de cálculo simplificado.
    private func calculateConsumption() {
        guard let adults = Int(adults), let children = Int(children) else {
            result = "Por favor, preencha os campos corretamente."
            return
        }
        // Lógica exemplo para churrasco (400g/adulto, 200g/criança) - ajuste conforme festa
        let totalMeat = Double(adults) * 0.4 + Double(children) * 0.2 // em kg
        let totalDrinks = Double(adults) * 1.2 + Double(children) * 0.6 // em litros

        result = """
        Quantidade recomendada:
        • Carne: \(String(format: "%.1f", totalMeat)) kg
        • Bebidas: \(String(format: "%.1f", totalDrinks)) L
        """
    }
}

/// Seção de resultado, com fundo escuro.
private struct ResultSection: View {
    let result: String
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            Text("Resultado")
                .font(.headline)
                .foregroundColor(.white)
                .accessibilityAddTraits(.isHeader)
            Text(result)
                .font(.body)
                .foregroundColor(.white)
        }
        .padding()
        .background(
            RoundedRectangle(cornerRadius: 14)
                .fill(Color(.darkGray))
        )
        .accessibilityElement(children: .combine)
    }
}

/// Explicação do cálculo, também com fundo escuro.
private struct CalculationExplanation: View {
    let party: PartyType
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            Text("Como o cálculo é feito?")
                .font(.headline)
                .foregroundColor(.white)
                .accessibilityAddTraits(.isHeader)
            Group {
                switch party {
                case .barbecue:
                    Text("• Carne: 400g por adulto, 200g por criança.\n• Bebidas: 1,2L/adulto, 0,6L/criança.")
                case .anniversary:
                    Text("• Salgados: 10 por adulto, 6 por criança.\n• Doces: 8 por adulto, 5 por criança.\n• Bolo: 100g/adulto, 70g/criança.\n• Bebidas: 600ml/pessoa.")
                case .wedding, .dinner:
                    Text("• Prato principal: 200g/adulto, 120g/criança.\n• Entrada: 80g/adulto, 50g/criança.\n• Bebidas: 800ml/adulto, 400ml/criança.")
                }
            }
            .font(.callout)
            .foregroundColor(.white.opacity(0.95))
        }
        .padding(.vertical, 6)
        .padding(.horizontal, 12)
        .background(
            RoundedRectangle(cornerRadius: 14)
                .fill(Color(.darkGray))
        )
        .accessibilityElement(children: .combine)
    }
}

#Preview {
    ConsumptionCalculatorView(party: .barbecue)
}
