//
//  ContentViewModel.swift
//  C6bank
//
//  Created by João Vitor Moreira on 28.04.24.
//

import Foundation
import SwiftUI

class ContentViewModel: ObservableObject {
    
    @Published var user: UserModel = UserModel.empty()
    
    func getUser() {
        
        if let fileURL = Bundle.main.url (forResource: "user", withExtension: "json") {
           
            do {
                let jsonData = try Data (contentsOf: fileURL)
                
                let user = try JSONDecoder().decode(UserModel.self, from: jsonData)
                
                self.user = user
                
            } catch {
                print ("Erro ao ler ou decodificar JSON:", error)
            }
        }
    }
}
