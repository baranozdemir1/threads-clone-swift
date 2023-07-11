//
//  ChangeAccountView.swift
//  Threads
//
//  Created by Baran Özdemir on 7.07.2023.
//

import SwiftUI

struct ChangeAccountView: View {
    @State private var showingCredits = false
    @Environment(\.colorScheme) var colorScheme
    
    var body: some View {
        VStack(alignment: .center) {
            Spacer().frame(height: 30)
            Text("Hesap değiştir").font(.title2).bold()
            Spacer().frame(height: 10)
            Text("Aradığın hesabı burada görmüyorsan önce Instagram'a giriş yapman gerekir.")
                .multilineTextAlignment(.center)
                .font(.system(size: 12))
                .padding(.horizontal, 30)
                .foregroundColor(colorScheme == .dark ? Color(hex: "606060") : Color(hex: "a6a6a6"))
            Spacer()
            VStack (spacing: 0) {
                ForEach(0..<5) { index in
                    Button (action: {}) {
                        HStack {
                            Circle()
                                .fill(Color(hex: "dbdbdb"))
                                .frame(width: 50, height: 50)
                                .overlay(
                                    Image("profile-img")
                                        .resizable()
                                        .frame(width: 48, height: 48)
                                        .clipShape(Circle())
                                )
                            Spacer().frame(width: 15)
                            VStack(alignment: .leading) {
                                Text("baranozdemir1")
                                    .font(.system(size: 12))
                                    .bold()
                                    .foregroundColor(colorScheme == .dark ? .white : .black)
                                Spacer().frame(height: 5)
                                Text("Baran Özdemir")
                                    .font(.system(size: 13))
                                    .foregroundColor(Color(hex: "9e9e9e"))
                            }
                            Spacer()
                            Image(systemName: "chevron.right")
                                .foregroundColor(colorScheme == .dark ? .white : .black)
                        }
                        .padding()
                    }
                    .buttonStyle(CustomizeWithPressed())
                    .frame(maxWidth: .infinity)
                    .background(Color.white)
                    .listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
                    
                    if index != 5 {
                        Divider().background(colorScheme == .dark ? Color(hex: "323232") : Color(hex: "d9d9d9"))
                    }
                }
            }
            .overlay(
                RoundedRectangle(cornerRadius: 25)
                    .stroke(colorScheme == .dark ? Color(hex: "323232") : Color(hex: "d9d9d9"), lineWidth: 1)
            )
            .clipShape(RoundedRectangle(cornerRadius: 25))
            .padding(.horizontal, 25)
            Spacer()
            Button(action: {
                showingCredits.toggle()
            }) {
                Text("Başka bir instagram hesabına giriş yap")
                    .multilineTextAlignment(.center)
                    .font(.system(size: 12))
                    .padding(.horizontal, 30)
                    .foregroundColor(colorScheme == .dark ? Color(hex: "606060") : Color(hex: "a6a6a6"))
            }
        }
        .background(Color("LoginBackground"))
        .sheet(isPresented: $showingCredits) {
            LoginBottomSheetView()
                .presentationDetents([.large])
                .presentationDragIndicator(.visible)
        }
    }
}

struct ChangeAccountView_Previews: PreviewProvider {
    static var previews: some View {
        ChangeAccountView()
    }
}
