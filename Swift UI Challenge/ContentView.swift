//
//  ContentView.swift
//  Swift UI Challenge
//
//  Created by Matthew Fisher on 2023/12/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            VStack {
                Image(systemName: "globe")
                    .imageScale(.large)
                    .foregroundStyle(.tint)
                Text("Hello, world!")
            }
            .fullScreenCover(isPresented: /*@START_MENU_TOKEN@*/.constant(true)/*@END_MENU_TOKEN@*/, content: {
                HelloSpeakBuddyModal()
            })
        }
    }
}

#Preview {
    ContentView()
}
