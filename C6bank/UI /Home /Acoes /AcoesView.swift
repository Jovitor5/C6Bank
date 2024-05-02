//
//  AcoesView.swift
//  C6bank
//
//  Created by João Vitor Moreira on 28.04.24.
//

import SwiftUI

struct AcoesView: View {
    
    @ObservedObject var viewModel = ContentViewModel()
    
    let columns = [GridItem(.flexible()), GridItem(.flexible()),GridItem(.flexible()),GridItem(.flexible())]
    
    var body: some View {
        VStack {
            LazyVGrid (columns: columns) {
                ForEach(viewModel.user.acao) { acao in
                    ComponenteAcao(acao: acao)
                }
            }
        }
        .onAppear{
            viewModel.getUser()
        }
    }
}
#Preview {
    AcoesView()
}
