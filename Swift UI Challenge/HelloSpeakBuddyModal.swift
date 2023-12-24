//
//  HelloSpeakBuddy.swift
//  Swift UI Challenge
//
//  Created by Matthew Fisher on 2023/12/24.
//

import SwiftUI

struct HelloSpeakBuddyModal: View {
    var body: some View {
        GradientBgWrapper(color: Color.speakBuddyBg){
            ZStack(alignment: .topTrailing) {                
                Text("Hello SpeakBUDDY")
                    .padding()
            }
        }
    }
}

#Preview {
    HelloSpeakBuddyModal()
}
