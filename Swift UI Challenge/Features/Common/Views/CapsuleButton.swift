//
//  RoundedActionButton.swift
//  Swift UI Challenge
//
//  Created by Matthew Fisher on 2023/12/26.
//

import SwiftUI


struct CapsuleButton: ButtonStyle {
    let buttonWidth: CGFloat = 100
    let buttonHeight: CGFloat = 60
    let color: Color = .blue
    let textColor: Color = .white
    let borderColor: Color = .white
    func makeBody(configuration: Configuration) -> some View {
        HStack{
            configuration.label
                .padding()
                .frame(width: buttonWidth, height: buttonHeight)
                .foregroundColor(textColor)
                .background(color)
                .border(borderColor)
                .clipShape(Capsule())
        }
    }
}

#Preview {
    Button("test") {
        print("testing")
    }
    .buttonStyle(CapsuleButton())
    
}
