//
//  SwiftUIView.swift
//  Swift UI Challenge
//
//  Created by Matthew Fisher on 2023/12/24.
//

import SwiftUI

struct GradientBgWrapper<Content: View>: View {
    let color: Color
    @ViewBuilder let content: Content
    var body: some View {
        content
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(LinearGradient(stops: [
                Gradient.Stop(color: color, location: 0.0),
                Gradient.Stop(color: .white, location: 1),
            ], startPoint: .top, endPoint: .bottom))
    }
}
