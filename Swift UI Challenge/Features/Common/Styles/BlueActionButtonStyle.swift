//
//  RoundedActionButton.swift
//  Swift UI Challenge
//
//  Created by Matthew Fisher on 2023/12/26.
//

import SwiftUI


struct BlueActionButtonStyle: ButtonStyle {
    let width: CGFloat
    let height: CGFloat
    var color: Color = .actionButtonBlue
    var buttonFont: Font = .title3
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .padding()
            .frame(width: width, height: height)
            .font(buttonFont)
            .foregroundColor(.white)
            .background(color)
            .clipShape(Capsule(style: /*@START_MENU_TOKEN@*/.continuous/*@END_MENU_TOKEN@*/))
            .shadow(color: .shadow, radius: 10, x: 0, y: 2)
            .overlay {
                Capsule(style: .continuous)
                    .stroke(.white, lineWidth: 1)
            }
        
    }
}

#Preview {
    Button("test") {
        print("testing")
    }
    .buttonStyle(BlueActionButtonStyle(width: 200, height: 100, color: Color.red))
    
}
