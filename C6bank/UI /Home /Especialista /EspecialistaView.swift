//
//  EspecialistaView .swift
//  C6bank
//
//  Created by João Vitor Moreira on 28.04.24.
//

import SwiftUI
import UIKit

struct EspecialistaView: View {
    var body: some View {
        HStack () {
            Text("Meus Especialistas")
                .foregroundStyle(.white)
                .bold()
            
            Spacer()
        }
        .padding(.horizontal)
        
        HStack(spacing: 15) {
            Circle()
                .overlay(
                    Image("eu")
                        .resizable()
                    
                )
                .frame(width: 60, height: 60)
                .cornerRadius(50)
            
            
            
            VStack (alignment: .leading){
                Text("Carbon Partner")
                    .foregroundStyle(.gray)
                    .font(Font.system(size: 15))
                
                Text("João Vitor Moreira")
                    .foregroundStyle(.white)
                    .font(Font.system(size: 13))
            }
            
            Spacer()
            
            Button(action: {
                guard let url = URL(string: "https://wa.me/4917623485184?text=Ol%C3%A1%20Jo%C3%A3o%20Vitor,%20gostaria%20de%20tirar%20algumas%20d%C3%BAvidas%20sobre%20o%20meu%20C6.") else {
                    return }
                UIApplication.shared.open(url)
            }, label: {
                HStack {
                    Image("zap")
                        .resizable()
                        .frame(width: 20, height: 20)
                        .foregroundColor(.blue)
                    
                    Text("Mensagem")
                        .font(Font.system(size: 15))
                }
            })
        }
        .padding(10)
        .background(Color(hex: "#242424"))
        .cornerRadius(15)
        .frame(width: 370)
        
    }
}

#Preview {
    EspecialistaView()
}
