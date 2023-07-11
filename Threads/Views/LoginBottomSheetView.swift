//
//  LoginBottomSheetView.swift
//  Threads
//
//  Created by Baran Özdemir on 7.07.2023.
//

import SwiftUI

struct LoginBottomSheetView: View {
    @State private var userName: String = ""
    @State private var password: String = ""
    
    @Environment(\.colorScheme) var colorScheme
    
    var color1: Color {
        return colorScheme == .dark ? Color(hex: "202226") : Color(hex: "FDF6F4")
    }
    
    var color2: Color {
        return colorScheme == .dark ? Color(hex: "0E212F") : Color(hex: "EBF3FE")
    }
    
    var color3: Color {
        return colorScheme == .dark ? Color(hex: "102725") : Color(hex: "ECFAF4")
    }
 
    var body: some View {
        ZStack {
            LinearGradient(colors: [color1, color2, color3], startPoint: .topLeading, endPoint: .bottomTrailing).ignoresSafeArea()
            VStack {
                Spacer()
                
                Image("instagram-logo-2").resizable().frame(width: 75, height: 75)
                
                Spacer()
                
                TextField("Kullanıcı adı, e-posta adresi veya cep telefonu numarası", text: $userName)
                    .autocapitalization(.none)
                    .font(.caption)
                    .frame(height: 50)
                    .padding(EdgeInsets(top: 0, leading: 15, bottom: 0, trailing: 15))
                    .cornerRadius(10)
                    .overlay(
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(colorScheme == .dark ? Color(hex: "455a6a") : Color(hex: "a3adb5"), lineWidth: 1.0)
                    )
                    .padding(.horizontal, 15)
                
                SecureField("Şifre", text: $password)
                    .autocapitalization(.none)
                    .font(.caption)
                    .frame(height: 50)
                    .padding(EdgeInsets(top: 0, leading: 15, bottom: 0, trailing: 15))
                    .cornerRadius(10)
                    .overlay(
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(colorScheme == .dark ? Color(hex: "455a6a") : Color(hex: "a3adb5"), lineWidth: 1.0)
                    )
                    .padding(.horizontal, 15)
                    .padding(.vertical, 5)
                
                Button("Giriş yap") {
                    
                }
                .foregroundColor(Color.white)
                .frame(maxWidth: .infinity)
                .frame(height: 45)
                .background(Color("BlueButtonColor"))
                .cornerRadius(25)
                .padding(.horizontal, 15)
                
                Spacer()
                Spacer()
                
                Image("meta-logo").resizable().aspectRatio(contentMode: .fill).frame(width: 75, height: 1)
            }
        }
    }
}

struct LoginBottomSheetView_Previews: PreviewProvider {
    static var previews: some View {
        LoginBottomSheetView()
    }
}
