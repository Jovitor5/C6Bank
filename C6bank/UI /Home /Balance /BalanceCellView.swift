//
//  BalanceCellView.swift
//  C6bank
//
//  Created by João Vitor Moreira on 28.04.24.
//

import SwiftUI

struct BalanceCellView: View {
    
    @Binding var showValue: Bool
    
    let balance: Balances
    
    var body: some View {
        VStack {
            
            Spacer()
            
            VStack (alignment: .leading) {
                
                HStack {
                    Image(balance.flag)
                        .resizable()
                        .frame(width: 16, height: 16)
                    Text(balance.title)
                        .foregroundStyle(.white)
                        .font(.system(size: 13))
                    
                    
                    Spacer()
                }
                
                if balance.flag == "carbono" || balance.flag == "atomo" {
                    VStack{
                        HStack (alignment: .center) {
                            Text(showValue ? "1.000,00" : "******")
                                .font(.system(size: 20))
                                .foregroundStyle(.white)
                            
                            Text(balance.simbolo)
                                .font(.system(size: 20))
                                .foregroundStyle(.white)
                            
                        }
                    }
                    
                } else {
                    
                    HStack{
                        Text(balance.simbolo)
                            .font(.system(size: 20))
                            .foregroundStyle(.white)
                        
                        
                        Text(showValue ? "1.000,00" : "******")
                            .font(.system(size: 20))
                            .foregroundStyle(.white)
                        
                    }
                }
            }
            
            .padding(.horizontal, 16)
            
            Spacer()
            
            VStack {
                HStack {
                    
                    NavigationLink {
                        Text(balance.link)
                    } label: {
                        Text(balance.link)
                            .foregroundStyle(.blue)
                            .lineLimit(1)
                            .font(.system(size: 15))
                        
                    }
                    
                    Spacer()
                    
                    NavigationLink {
                        Text(balance.link)
                    } label: {
                        Image(systemName: "chevron.right")
                            .foregroundStyle(.blue)
                        
                        
                    }
                    
                }
                
            }
            .padding(10)
            .background(Color(hex: "#303030"))
        }
        
        .frame(height: 130)
        .frame(width: 165)
        .background(Color(hex: "#242424"))
        .cornerRadius(16)
        
    }
    
}

