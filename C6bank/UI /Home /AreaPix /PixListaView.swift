//
//  PixListaView .swift
//  C6bank
//
//  Created by João Vitor Moreira on 28.04.24.
//

import SwiftUI

struct PixListaView: View {
    
    @ObservedObject var viewModel = ContentViewModel()
    
    var body: some View {
        
        VStack {
            HStack {
                ForEach(viewModel.user.tiposDePix) { pix in
                    PixView(pix: pix)
                }
            }
            
            HStack {
                Button(action: {}, label: {
                    Text("Minhas Chaves")
                        .foregroundStyle(.white)
                })
                
                Spacer()
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Text("Meus Limites Pix")
                        .foregroundStyle(.white)
                })
            }
            .padding()
            .background(Color(hex: "#303030"))
            
        }
        .background(Color(hex: "#242424"))
        .cornerRadius(15)
        .padding(5)
        .onAppear{
            viewModel.getUser()
        }
    }
    
}
#Preview {
    PixListaView()
}
