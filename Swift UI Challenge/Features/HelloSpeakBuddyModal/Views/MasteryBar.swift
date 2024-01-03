//
//  MasteryBar.swift
//  Swift UI Challenge
//
//  Created by Matthew Fisher on 2024/01/02.
//

import SwiftUI

struct MasteryBar: View {
    let label: String
    let width: CGFloat
    let height: CGFloat
    let delay: CGFloat
    @State private var animationHeight = 0.0
    
    var body: some View {
        HStack {
            VStack {
                VStack {
                    Spacer()
                    Rectangle().frame(height: animationHeight)
                        .foregroundStyle((LinearGradient(stops: [
                            Gradient.Stop(color: .chartBarTop, location: 0.0),
                            Gradient.Stop(color: .chartBarBottom, location: 1),
                        ], startPoint: .top, endPoint: .bottom)))
                        .cornerRadius(2.73, corners: [.topLeft, .topRight])
                        .onAppear {
                            let animation = Animation.easeInOut
                            
                            DispatchQueue.main.asyncAfter(deadline: .now() + 1 + delay) {
                                withAnimation(animation) {
                                    animationHeight = height
                                }
                            }
                            
                        }
                    
                }
                .frame(height: height + 10)
                .padding(.bottom, 5)
                Text(label)
                    .font(.languageSpecificFontOveride(for: .ja, size: 12, customWeight: .medium))
            }
        }
        .frame(maxWidth: .infinity)
        
    }
}

#Preview {
    MasteryBar(label: "テスト", width: 60, height: 100, delay: 1)
}
