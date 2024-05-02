//
//  PixView.swift
//  C6bank
//
//  Created by João Vitor Moreira on 28.04.24.
//

import SwiftUI

struct PixView: View {
    
    let pix: TiposDePix
    
    var body: some View {
        VStack(alignment: .center) {
            Image(systemName: pix.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 30, height: 30)
                .foregroundColor(.white)
                .padding()
                .background(Color(hex: "#303030"))
                .cornerRadius(20)
            
            Spacer()
            
            Text(pix.text)
                .foregroundColor(.white)
                .multilineTextAlignment(.center)
                .font(Font.system(size: 13))
                .frame(maxWidth: .infinity)
            
            Spacer()
            
        }
        .frame(height: 115)
        .padding(.top, 16)
    }
}
#Preview {
    PixView(pix: TiposDePix.init(text: "Pagar QR Code", image: "qrcode.viewfinder"))
}

