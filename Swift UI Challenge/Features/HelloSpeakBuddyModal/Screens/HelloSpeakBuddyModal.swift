//
//  HelloSpeakBuddy.swift
//  Swift UI Challenge
//
//  Created by Matthew Fisher on 2023/12/24.
//

import SwiftUI

struct HelloSpeakBuddyModal: View {
    let titleFont = Font.custom("SFProText-Heavy", size: 36)
    let asss = Font.Design.default
    let jaFont = Font.custom("HiraginoSans-W6", size: 20)
    
    var body: some View {
        GeometryReader { geometry in
            let deviceWidth = geometry.size.width
            let deviceHeight = geometry.size.height
            Modal {
                VStack {
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
                        StudyTimeChart()
                            .padding(.top, deviceHeight * 0.1)
                            .padding(.horizontal, deviceWidth * 0.05)
                    }
                    // using the device height for the width is more consistant accross device models
                    .frame(width: deviceHeight * 0.47, height: deviceHeight * 0.50)
                    VStack {
                        Spacer()
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
                        Spacer()
                        Button("プランに登録する") {
                            
                        }
                        .buttonStyle(BlueActionButtonStyle(width: 350, height: 56, buttonFont: .languageSpecificFontOveride(for: .ja, size: 16, customWeight: .medium)))
                    }
                    .frame(width: 350, height: 200)
                }
            }
        }
    }
}

#Preview {
    HelloSpeakBuddyModal()
}
