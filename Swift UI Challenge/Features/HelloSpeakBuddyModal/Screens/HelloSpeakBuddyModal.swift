//
//  HelloSpeakBuddy.swift
//  Swift UI Challenge
//
//  Created by Matthew Fisher on 2023/12/24.
//

import SwiftUI

struct HelloSpeakBuddyModal: View {
    var body: some View {
        GeometryReader { geometry in
            let deviceWidth = geometry.size.width
            let deviceHeight = geometry.size.height
            Modal {
                VStack {
                    VStack {
                        Text("Hello")
                            .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                        Text("SpeakBUDDY")
                            .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    }
                    ZStack (alignment: Alignment(horizontal: .leading, vertical: .top)) {
                        ZStack {
                            Image("Protty")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                        }
                        .frame(height: deviceHeight * 0.217)
                        StudyTimeChart()
                            .padding(.top, deviceHeight * 0.1)
                            .padding(.horizontal, deviceWidth * 0.05)
                    }
                    // using the device height for the width is more consistant accross device models
                    .frame(width: deviceHeight * 0.47, height: deviceHeight * 0.50)
                }
            }
        }
    }
}

#Preview {
    HelloSpeakBuddyModal()
}
