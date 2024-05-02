//
//  BalanceCarrosselView.swift
//  C6bank
//
//  Created by João Vitor Moreira on 28.04.24.
//

import SwiftUI

struct BalanceCarrosselView: View {
    
    @Binding var showValue: Bool
    
    @Binding var userModel: UserModel
    
    @ObservedObject var viewModel = ContentViewModel()
    
    var body: some View {
        
        VStack {
            HStack {
                Text("Saldos")
                    .foregroundStyle(.white)
                
                Spacer()
                
                Button(action: {}, label: {
                    Text("Exibir Extratos")
                        .bold()
                })
            }
            .padding(.horizontal, 16)
            
            ScrollView (.horizontal) {
                HStack {
                    ForEach (viewModel.user.balances) { balance in
                        BalanceCellView(showValue: $showValue, balance: balance)
                    }
                }
            }
        }
        .onAppear {
            viewModel.getUser()
        }
        .background(.black)
        
    }
}
