//
//  RoundCloseButtonStyle.swift
//  Swift UI Challenge
//
//  Created by Matthew Fisher on 2024/01/02.
//


import SwiftUI


struct RoundCloseButtonStyle: ButtonStyle {
    let width: CGFloat
    var color: Color = .white
    var iconColor: Color = .mainFont
    var buttonFont: Font = .title3
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .padding()
            .frame(width: width)
            .foregroundColor(iconColor)
            .background(color)
            .clipShape(Circle())
            .shadow(color: .shadow, radius: 10, x: 0, y: 2)
    }
}


#Preview {
    Button {
    } label: {
        Image(systemName: "xmark")
            .font(.languageSpecificFontOveride(for: .ja, size: 14, customWeight: .bold))
    }
    .buttonStyle(RoundCloseButtonStyle(width: 38))
    
}

