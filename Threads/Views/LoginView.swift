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
                                    .foregroundColor(Color(hex: "a4a4a4"))
                                    .font(.body)
                                    .fontWeight(.medium)
                                Text("baranozdemir1")
                                    .fontWeight(.bold)
                                    .foregroundColor(.black)
                            }
                            Spacer()
                            Image("instagram-logo")
                                .resizable()
                                .frame(width: 50, height: 50)
                        }
                        .padding(.horizontal, 20)
                        .padding(.vertical, 25)
                    }
                    .buttonStyle(PlainButtonStyle())
                    .background(Color.white)
                    .clipShape(RoundedRectangle(cornerRadius: 25))
                    .overlay(
                        RoundedRectangle(cornerRadius: 25)
                            .stroke(Color(hex: "d9d9d9"), lineWidth: 1)
                    )
                }
                .padding(.horizontal, 30)
                Spacer(minLength: 20)
                NavigationLink(destination: ContentView()) {
                    Text("Hesap değiştir")
                        .foregroundColor(Color(hex: "a6a6a6"))
                        .fontWeight(.medium)
                }
                Spacer(minLength: 50)
            }
            .background(Color(hex: "fafafa"))
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
