//
//  SwiftUIView.swift
//  Swift UI Challenge
//
//  Created by Matthew Fisher on 2023/12/24.
//

import SwiftUI

struct GradientBg: View {
    var body: some View {
        LinearGradient(stops: [
            Gradient.Stop(color: .speakBuddyBg, location: 0.0),
            Gradient.Stop(color: .white, location: 1),
        ], startPoint: .top, endPoint: .bottom).edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
    }
}

#Preview {
    GradientBg()
}
