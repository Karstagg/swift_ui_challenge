//
//  ContentView.swift
//  Swift UI Challenge
//
//  Created by Matthew Fisher on 2023/12/23.
//

import SwiftUI

struct ContentView: View {
    @State var showHelloSpeakBuddyModal: Bool = false
    var body: some View {
        ZStack {
            VStack {
                Text("Hello, world! Press the button to learn about SpeakBUDDY")
                Button ("Show Modal") {
                    showHelloSpeakBuddyModal = true
                }
                .buttonStyle(BlueActionButtonStyle(width: 200, height: 56))
            }
            .fullScreenCover(isPresented: $showHelloSpeakBuddyModal) {
                HelloSpeakBuddyModal(isPresented: $showHelloSpeakBuddyModal)
            }
        }
    }
}

#Preview {
    ContentView()
}
