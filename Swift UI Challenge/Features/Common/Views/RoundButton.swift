//
//  RoundButton.swift
//  Swift UI Challenge
//
//  Created by Matthew Fisher on 2023/12/24.
//

import SwiftUI

struct RoundButton: View {
    let color: Color = Color.white
    let icon: String
    let iconColor: Color = Color.black
    var body: some View {
        ZStack {
            Circle()
                .frame(width: 38, height: 38)
                .foregroundStyle(color)
            Button {
            } label: {
                Image(systemName: icon)
                    .padding()
                    .foregroundColor(Color.black)
            }
        }
        .padding(.all, 12)
    }
}

#Preview {
    RoundButton(icon: "xmark")
}
