//
//  HelloSpeakBuddy.swift
//  Swift UI Challenge
//
//  Created by Matthew Fisher on 2023/12/24.
//

import SwiftUI

struct HelloSpeakBuddyModal: View {
    @Binding var isPresented: Bool
    var body: some View {
        GeometryReader { geometry in
            let deviceWidth = geometry.size.width
            let deviceHeight = geometry.size.height
            Modal (isPresented: $isPresented) {
                VStack (spacing: deviceHeight * 0.07) {
                    VStack {
                        Text("Hello")
                        Text("SpeakBUDDY")
                    }
                    .font(.languageSpecificFontOveride(for: .en, size: 36, systemWeight: .bold))
                    .foregroundColor(.mainFont)
                    ZStack (alignment: Alignment(horizontal: .leading, vertical: .top)) {
                        ZStack {
                            Image("Protty")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                        }
                        .frame(height: deviceHeight * 0.217)
                        .padding(.top, 33)
                        MasteryChart(width: deviceHeight * 0.47, height: deviceHeight * 0.45)
                            .padding(.top, deviceHeight * 0.1)
                            .padding(.horizontal, deviceWidth * 0.05)
                    }
                    // using the device height for the width is more consistant accross device models
                    .frame(width: deviceHeight * 0.47, height: deviceHeight * 0.45)
                    .padding(.bottom, 40)
                    VStack (spacing: 40) {
                        VStack {
                            Text("スピークバディで")
                                .font(.languageSpecificFontOveride(for: .ja, size: 20, customWeight: .medium))
                                .foregroundColor(.mainFont)
                            Text("レベルアップ")
                                .font(.languageSpecificFontOveride(for: .ja, size: 30, customWeight: .bold))
                                .foregroundStyle(
                                    LinearGradient(
                                        colors: [.blueGradientTextTop, .blueGradientTextBottom],
                                        startPoint: .top,
                                        endPoint: .bottom
                                    )
                                )
                        }
                        
                        Button("プランに登録する") {
                            //Navigate to plan signup
                        }
                        .buttonStyle(BlueActionButtonStyle(width: 350, height: 56, buttonFont: .languageSpecificFontOveride(for: .ja, size: 16, customWeight: .medium)))
                       
                    }
                }
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .ignoresSafeArea()
            
        }
    }
}

