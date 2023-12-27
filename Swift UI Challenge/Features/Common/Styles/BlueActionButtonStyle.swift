//
//  RoundedActionButton.swift
//  Swift UI Challenge
//
//  Created by Matthew Fisher on 2023/12/26.
//

import SwiftUI


struct BlueActionButtonStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        HStack{
            configuration.label
                .padding()
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .foregroundColor(.white)
                .background(.blue)
                .border(.white)
                .clipShape(Capsule())
        }
    }
}

#Preview {
    Button("test") {
        print("testing")
    }
    .buttonStyle(BlueActionButtonStyle())
    
}
