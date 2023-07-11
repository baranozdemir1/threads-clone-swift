//
//  LoginView.swift
//  Threads
//
//  Created by Baran Özdemir on 7.07.2023.
//

import SwiftUI

struct LoginView: View {
    @State private var isClicked: Bool = false
    @Environment(\.colorScheme) var colorScheme
    
    var body: some View {
        NavigationView {
            VStack {
                Image("threads-login-img").resizable().aspectRatio(contentMode: .fill).frame(width: 575, height: 600).ignoresSafeArea()
                Spacer(minLength: 100)
                VStack {
                    Button(action: {}) {
                        HStack {
                            VStack(alignment: .leading) {
                                Text("Instagram ile Giriş Yap")
                                    .font(.system(size: 13))
                                    .foregroundColor(colorScheme == .dark ? Color(hex: "606060") : Color(hex: "a4a4a4"))
                                Spacer().frame(height: 5)
                                Text("baranozdemir1")
                                    .font(.system(size: 12))
                                    .bold()
                                    .foregroundColor(colorScheme == .dark ? Color.white : .black)
                                
                            }
                            Spacer()
                            Image("instagram-logo")
                                .resizable()
                                .frame(width: 50, height: 50)
                        }
                        .padding(.horizontal, 15)
                        .padding(.vertical, 15)
                    }
                    .buttonStyle(CustomizeWithPressed())
                    .frame(maxWidth: .infinity)
                    .background(Color.clear)
                    .foregroundColor(Color(hex: "969696"))
                    .clipShape(RoundedRectangle(cornerRadius: 15))
                    .overlay(
                        RoundedRectangle(cornerRadius: 15)
                            .stroke(colorScheme == .dark ? Color(hex: "343434") : Color(hex: "d9d9d9"), lineWidth: 1)
                    )
                }
                .padding(.horizontal, 30)
                Spacer(minLength: 20)
                NavigationLink(destination: ChangeAccountView()) {
                    Text("Hesap değiştir")
                        .multilineTextAlignment(.center)
                        .font(.system(size: 12))
                        .padding(.horizontal, 30)
                        .foregroundColor(colorScheme == .dark ? Color(hex: "606060") : Color(hex: "a6a6a6"))
                }
                Spacer().frame(height: 50)
            }
            .background(Color("LoginBackground"))
        }
        .accentColor(colorScheme == .dark ? .white : .black)
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
