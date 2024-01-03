//
//  MasteryChart.swift
//  Swift UI Challenge
//
//  Created by Matthew Fisher on 2024/01/02.
//

import SwiftUI

struct MasteryChart: View {
    let width: CGFloat
    let height: CGFloat
    
    var body: some View {
        let masteryData: [Mastery] = [
            Mastery(timeLabel: "現在", masteryLevel: height * 0.3),
            Mastery(timeLabel: "3ヶ月", masteryLevel: height * 0.42),
            Mastery (timeLabel: "1年", masteryLevel: height * 0.73),
            Mastery(timeLabel: "2年", masteryLevel: height)
        ]
        HStack (alignment: .bottom, spacing: width * 0.07) {
            ForEach(masteryData.indices, id: \.self) { i in
                let datum = masteryData[i]
                MasteryBar(label: datum.timeLabel, width: width / CGFloat(masteryData.count), height: datum.masteryLevel, delay: CGFloat(Double(i) * 0.1))
            }
        }
        .padding(.horizontal, 20)
    }
}

#Preview {
    MasteryChart(width: 300, height: 300)
}
