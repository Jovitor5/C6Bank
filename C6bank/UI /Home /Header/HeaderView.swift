//
//  HeaderView .swift
//  C6bank
//
//  Created by João Vitor Moreira on 28.04.24.
//

import SwiftUI

struct HeaderView: View {
    
    let user: DadosDeUsuario
    
    @Binding var showValue: Bool
    
    @Binding var userModel: UserModel
    
    @ObservedObject var viewModel = HeaderViewModel(user: DadosDeUsuario.init(nome: "Joao", hasNotification: false))
    
    var body: some View {
        
        HStack {
            
            VStack (alignment: .leading) {
                
                Text(viewModel.getSaudacao())
                    .font(.system(size: 15))
                    .foregroundStyle(.white)
                
                Text(viewModel.getUsuario())
                    .font(.system(size: 30))
                    .foregroundStyle(.white)
            }
            
            Spacer()
            
            HStack (spacing: 20) {
                
                NavigationLink {
                    Text("Tela de Notificacao")
                    
                } label: {
                    Image(systemName: viewModel.getIconNotification())
                        .foregroundStyle(.white)
                }
                
                Button(action: {
                    showValue.toggle()
                }, label: {
                    Image(systemName: showValue ? "eye.fill" : "eye.slash.fill")
                        .foregroundStyle(.white)
                })
                
                
                NavigationLink {
                    Text ("Tela de Perfil")
                } label: {
                    Image(systemName: "person.circle.fill")
                        .foregroundStyle(.white)
                }
            }
        }
        .padding(16)
        .background(Color.clear)
    }
}
