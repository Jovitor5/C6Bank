//
//  ComponenteAcao.swift
//  C6bank
//
//  Created by João Vitor Moreira on 28.04.24.
//
import SwiftUI

struct ComponenteAcao: View {
    
    let acao: Acao
    
    var body: some View {
        VStack (spacing: 10) {
            Image(systemName: acao.simbolo)
                .foregroundStyle(.white)
            
            Text(acao.text)
                .foregroundStyle(.white)
                .lineLimit(1)
                .minimumScaleFactor(0.5)
        }
        .frame(maxWidth: .infinity)
        .frame(maxHeight: .infinity)
        .padding()
        .background(Color(hex:"#303030"))
        .cornerRadius(15)
    }
}
#Preview {
    ComponenteAcao(acao: Acao.init(text: "Pagar", simbolo: "barcode.viewfinder"))
}
