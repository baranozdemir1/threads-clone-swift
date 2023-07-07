//
//  LoginView.swift
//  Threads
//
//  Created by Baran Özdemir on 7.07.2023.
//

import SwiftUI

struct LoginView: View {
    @State private var isClicked: Bool = false
    
    var body: some View {
        NavigationView {
            VStack {
                Image("threadsdotnet").resizable().scaledToFill().ignoresSafeArea()
                Spacer(minLength: 35)
                VStack {
                    Button(action: {}) {
                        HStack {
                            VStack(alignment: .leading) {
                                Text("Instagram ile Giriş Yap")
                                    .font(.system(size: 13))
                                    .foregroundColor(Color(hex: "a4a4a4"))
                                Spacer().frame(height: 5)
                                Text("baranozdemir1")
                                    .font(.system(size: 12))
                                    .bold()
                                    .foregroundColor(.black)
                                
                            }
                            Spacer()
                            Image("instagram-logo")
                                .resizable()
                                .frame(width: 30, height: 30)
                        }
                        .padding(.horizontal, 20)
                        .padding(.vertical, 15)
                    }
                    .buttonStyle(CustomizeWithPressed())
                    .frame(maxWidth: .infinity)
                    .background(Color.clear)
                    .foregroundColor(Color(hex: "969696"))
                    .clipShape(RoundedRectangle(cornerRadius: 15))
                    .overlay(
                        RoundedRectangle(cornerRadius: 15)
                            .stroke(Color(hex: "d9d9d9"), lineWidth: 1)
                    )
                }
                .padding(.horizontal, 30)
                Spacer(minLength: 20)
                NavigationLink(destination: ChangeAccountView()) {
                    Text("Hesap değiştir")
                        .multilineTextAlignment(.center)
                        .font(.system(size: 12))
                        .padding(.horizontal, 30)
                        .foregroundColor(Color(hex: "a6a6a6"))
                }
                Spacer().frame(height: 50)
            }
            .background(Color(hex: "fafafa"))
        }
        .accentColor(.black)
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
