//
//  ContentView.swift
//  Threads
//
//  Created by Baran Özdemir on 7.07.2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(spacing: 0) {
                    VStack(spacing: 0) {
                        ForEach(0..<5) { index in
                            Button(action: {}) {
                                HStack {
                                    Circle()
                                        .fill(Color(red: 219/255, green: 219/255, blue: 219/255))
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
                                            .bold()
                                            .foregroundColor(.black)
                                        Text("Baran Özdemir")
                                            .foregroundColor(Color(red: 158/255, green: 158/255, blue: 158/255))
                                    }
                                }
                                
                                Spacer()
                                
                                Image(systemName: "arrow.forward.ios")
                                    .foregroundColor(.black)
                            }
                            .padding(.vertical, 15)
                            .padding(.horizontal, 20)
                            .frame(maxWidth: .infinity)
                            .background(Color.clear)
                            .foregroundColor(Color(red: 150/255, green: 150/255, blue: 150/255))
                            
                            if index != 4 {
                                Divider()
                                    .background(Color(red: 217/255, green: 217/255, blue: 217/255))
                                    .padding(.horizontal, 20)
                            }
                        }
                    }
                    .background(
                        RoundedRectangle(cornerRadius: 25)
                            .stroke(Color(red: 217/255, green: 217/255, blue: 217/255), lineWidth: 1)
                            .padding(.horizontal, 25)
                    )
                    .frame(height: UIScreen.main.bounds.height * 0.5)
                }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
