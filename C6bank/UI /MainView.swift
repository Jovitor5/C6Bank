//
//  Barra.swift
//  C6bank
//
//  Created by João Vitor Moreira on 01.05.24.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        TabView {
            Group {
                ContentView()
                    .tabItem {
                        Label("", systemImage: "house")
                    }
                
                CartaoView()
                    .tabItem {
                        Label("Cartões", systemImage: "creditcard")
                    }
                
                Text("C6 Saldos")
                    .tabItem {
                        VStack {
                            Image("c6")
                            
                            Text("Saldos")
                        }
                    }
                
                Text("C6 Investe")
                    .tabItem {
                        Label("C6 Investe", systemImage: "chart.line.uptrend.xyaxis")
                    }
                
                Text("Beneficios")
                    .tabItem {
                        Label("+pontos", systemImage: "handbag")
                    }
            }
            .toolbar(.visible, for: .tabBar)
            .toolbarBackground(Color.black, for: .tabBar)
        }
    }
}
#Preview {
    MainView()
}
