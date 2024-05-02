//
//  CartaoView.swift
//  C6bank
//
//  Created by João Vitor Moreira on 28.04.24.
//

import SwiftUI

struct CartaoView: View {
    var body: some View {
        VStack {
            HStack {
                Text("Meus cartões")
                    .foregroundStyle(.white)
                    .bold()
                
                Spacer()
                
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Text("Cartão Virtual")
                        .bold()
                })
            }
            .padding(.horizontal)
            
            VStack (alignment: .leading) {
                HStack(spacing: 15) {
                    Image("cartao")
                        .resizable()
                        .frame(width: 100, height: 140)
                        .cornerRadius(5)
                    
                    VStack(alignment:.leading, spacing: 10) {
                        VStack (alignment: .leading) {
                            Text("Cartão")
                                .foregroundStyle(.gray)
                                .bold()
                            Text("Final 2103")
                                .foregroundStyle(.white)
                                .bold()
                        }
                        
                        VStack (alignment: .leading) {
                            Text("Nome Gravado")
                                .foregroundStyle(.gray)
                                .bold()
                            
                            Text("João Vitor Moreira")
                                .foregroundStyle(.white)
                                .bold()
                        }
                        Spacer()
                    }
                    
                }
                .padding()
                
                HStack {
                    
                    Image(systemName: "lock.open.fill")
                        .foregroundColor(.green)
                    
                    Text("Desbloqueado")
                        .foregroundStyle(.white)
                    
                    Spacer()
                    
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                        Text("Detalhes")
                            .bold()
                        
                    })
                }
                .padding()
                .background(Color(hex: "#242424"))
                
                
            }
            .frame(width: 380, height: 230)
            .background(Color(hex: "#303030"))
            .cornerRadius(15)
        }
    }
}

#Preview {
    CartaoView()
}
