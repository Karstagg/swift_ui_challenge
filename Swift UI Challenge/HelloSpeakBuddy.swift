//
//  HelloSpeakBuddy.swift
//  Swift UI Challenge
//
//  Created by Matthew Fisher on 2023/12/24.
//

import SwiftUI

struct HelloSpeakBuddyModal: View {
    var body: some View {
        ZStack(alignment: /*@START_MENU_TOKEN@*/Alignment(horizontal: .center, vertical: .center)/*@END_MENU_TOKEN@*/, content: {
            LinearGradient(stops: [
                Gradient.Stop(color: .speakBuddyBg, location: 0.0),
                Gradient.Stop(color: .white, location: 1),
            ], startPoint: .top, endPoint: .bottom).edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            Text("Hello SpeakBUDDY")
        })
    }
}

#Preview {
    HelloSpeakBuddyModal()
}
