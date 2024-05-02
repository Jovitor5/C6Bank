//
//  UserModel .swift
//  C6bank
//
//  Created by João Vitor Moreira on 28.04.24.
//

import Foundation

struct UserModel: Codable {
    var dadosDoUsuario: DadosDeUsuario
    var tiposDePix: [TiposDePix]
    var acao: [Acao]
    var balances: [Balances]
    
    static func empty() -> UserModel {
        return UserModel(dadosDoUsuario: DadosDeUsuario.init(nome: "", hasNotification: false), tiposDePix: [], acao: [], balances: [])
    }
}

struct DadosDeUsuario: Codable, Identifiable {
    let id = UUID()
    var nome: String
    var hasNotification: Bool
}

struct TiposDePix: Codable, Identifiable  {
    let id = UUID()
    var text: String
    var image: String
}

struct Acao: Codable, Identifiable  {
    let id = UUID()
    var text: String
    var simbolo: String
}

struct Balances: Codable, Identifiable  {
    let id = UUID()
    var flag: String
    var title: String
    var simbolo: String
    var link: String
}
