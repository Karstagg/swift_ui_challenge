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
                        .onAppear {
                            let animation = Animation.easeInOut(duration: 0.5)
                            
                            DispatchQueue.main.asyncAfter(deadline: .now() + delay) {
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
