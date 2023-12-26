//
//  YearChart.swift
//  Swift UI Challenge
//
//  Created by Matthew Fisher on 2023/12/24.
//

import SwiftUI
import Charts

struct StudyTimeChart: View {
    let StudyTimeData: [StudyTimeDatapoint] = [
        StudyTimeDatapoint(studyTime: "現在", mastery: 15),
        StudyTimeDatapoint(studyTime: "3ヶ月", mastery: 25),
        StudyTimeDatapoint(studyTime: "1年", mastery: 75),
        StudyTimeDatapoint(studyTime: "2年", mastery: 100)
    ]
    var body: some View {
        VStack {
            Chart {
                ForEach(StudyTimeData) { dataPoint in
                    BarMark(
                        x: .value("StudyTime", dataPoint.studyTime),
                        y: .value("Mastery", dataPoint.mastery)
                    )
                    .foregroundStyle((LinearGradient(stops: [
                        Gradient.Stop(color: .chartBarTop, location: 0.0),
                        Gradient.Stop(color: .chartBarBottom, location: 1),
                    ], startPoint: .top, endPoint: .bottom)))
                }
            }
            .chartXAxis {
                AxisMarks(values: .automatic) { value in
                    AxisValueLabel {
                        Text(StudyTimeData[value.index].studyTime)
                            .font(.title3)
                            .foregroundColor(.black)
                            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    }
                }
            }
            .chartYAxis(.hidden)
        }
    }
}


#Preview {
    StudyTimeChart()
}
