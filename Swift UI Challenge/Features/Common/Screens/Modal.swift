//
//  Modal.swift
//  Swift UI Challenge
//
//  Created by Matthew Fisher on 2023/12/24.
//

import SwiftUI

struct Modal<Content: View>: View {
    @Binding var isPresented: Bool
    @ViewBuilder let content: Content
    
    var body: some View {
        GradientBgWrapper(color: Color.speakBuddyBg){
            ZStack {
                content
                GeometryReader { geometry in
                    Button {
                        isPresented = false
                    } label: {
                        Image(systemName: "xmark")
                            .font(.languageSpecificFontOveride(for: .ja, size: 14, customWeight: .bold))
                    }
                    .buttonStyle(RoundCloseButtonStyle(width: 38))
                    .padding(.trailing)
                    .position(x: geometry.size.width - 30, y: 60)
                }
            }
        }
    }
}

