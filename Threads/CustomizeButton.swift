//
//  CustomizeButton.swift
//  Threads
//
//  Created by Baran Özdemir on 7.07.2023.
//

import SwiftUI

struct CustomizeWithPressed: ButtonStyle {
    typealias Body = Button

    func makeBody(configuration: Self.Configuration) -> some View {
        if configuration.isPressed {
            return configuration
                .label
                .background(Color(hex: "efefef"))
                .foregroundColor(Color.white)
        } else {
            return configuration
                .label
                .background(Color.clear)
                .foregroundColor(Color.white)
        }
    }
}
