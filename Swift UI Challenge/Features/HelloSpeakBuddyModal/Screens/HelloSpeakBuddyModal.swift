//
//  HelloSpeakBuddy.swift
//  Swift UI Challenge
//
//  Created by Matthew Fisher on 2023/12/24.
//

import SwiftUI

struct HelloSpeakBuddyModal: View {
    var body: some View {
        Modal {
            VStack {
                VStack {
                    Text("Hello")
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    Text("SpeakBUDDY")
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                }
                ZStack {
                    HStack {
                        VStack {
                            Image("Protty")
                            Spacer()
                        }
                        Spacer()
                    }
                    StudyTimeChart()
                        .padding(.top, 50)
                }
                .frame(maxHeight: 400)
                .padding()
            }
        }
    }
}

#Preview {
    HelloSpeakBuddyModal()
}
