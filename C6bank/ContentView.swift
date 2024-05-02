//
//  ContentView.swift
//  C6bank
//
//  Created by João Vitor Moreira on 28.04.24.
//

import SwiftUI
import UIKit

struct ContentView: View {
    
    @ObservedObject var viewModel = ContentViewModel()
    
    @State var showValue = false
    
    var body: some View {
        NavigationView {
            
            ScrollView {
                
                VStack (spacing: 20) {
                    
                    HeaderView(user: viewModel.user.dadosDoUsuario, showValue: $showValue, userModel: $viewModel.user)
                    
                    BalanceCarrosselView (showValue: $showValue, userModel: $viewModel.user)
                    
                    AcoesView()
                    
                    PixListaView()
                    
                    EspecialistaView()
                    
                    CartaoView()
                    
                    Spacer()
                    
                }
                .background(.black)
            }
            .background(.black)
        }
    }
}
#Preview {
    ContentView()
}

