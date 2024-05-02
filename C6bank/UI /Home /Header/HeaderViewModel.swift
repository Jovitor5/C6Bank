//
//  HeaderViewModel.swift
//  C6bank
//
//  Created by João Vitor Moreira on 28.04.24.
//

import Foundation
import SwiftUI

class HeaderViewModel: ObservableObject {
    let user: DadosDeUsuario
    
    init(user: DadosDeUsuario) {
        self.user = user
    }
    
    func getSaudacao() -> String {
        return "Boa Tarde,"
    }
    
    func getUsuario() -> String {
        return user.nome
    }
    
    func getIconNotification() -> String {
        return user.hasNotification ? "bell.badge.fill" : "bell.fill"
    }
}
