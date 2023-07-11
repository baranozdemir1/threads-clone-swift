//
//  CustomizeButton.swift
//  Threads
//
//  Created by Baran Özdemir on 7.07.2023.
//

import SwiftUI

struct CustomizeWithPressed: ButtonStyle {
    typealias Body = Button
    @Environment(\.colorScheme) var colorScheme

    func makeBody(configuration: Self.Configuration) -> some View {
        if configuration.isPressed {
            return configuration
                .label
                .background(colorScheme == .dark ? Color(hex: "262626") : Color(hex: "efefef"))
                .foregroundColor(Color.white)
        } else {
            return configuration
                .label
                .background(colorScheme == .dark ? Color(hex: "121212") : Color.white)
                .foregroundColor(Color.white)
        }
    }
}
