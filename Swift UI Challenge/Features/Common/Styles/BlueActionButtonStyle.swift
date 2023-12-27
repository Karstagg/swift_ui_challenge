//
//  RoundedActionButton.swift
//  Swift UI Challenge
//
//  Created by Matthew Fisher on 2023/12/26.
//

import SwiftUI


struct BlueActionButtonStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        
        configuration.label
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
            .font(.title3)
            .foregroundColor(.white)
            .background(.actionButtonBlue)
            .clipShape(Capsule(style: /*@START_MENU_TOKEN@*/.continuous/*@END_MENU_TOKEN@*/))
    }
}

#Preview {
    Button("test") {
        print("testing")
    }
    .buttonStyle(BlueActionButtonStyle())
    
}
