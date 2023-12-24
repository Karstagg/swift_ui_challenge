//
//  Modal.swift
//  Swift UI Challenge
//
//  Created by Matthew Fisher on 2023/12/24.
//

import SwiftUI

struct Modal<Content: View>: View {
    @ViewBuilder let content: Content
    
    var body: some View {
        GradientBgWrapper(color: Color.speakBuddyBg){
            ZStack {
                content
                HStack {
                    Spacer()
                    VStack {
                        RoundButton(icon: "xmark")
                        Spacer()
                    }
                }
            }
        }
    }
}
