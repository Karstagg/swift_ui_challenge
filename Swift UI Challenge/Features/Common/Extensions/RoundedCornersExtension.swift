//
//  RoundedCornersExtension.swift
//  Swift UI Challenge
//
//  Created by Matthew Fisher on 2024/01/03.
//

import SwiftUI

struct RoundedCornerRectangle: Shape {
    var radius: CGFloat = .infinity
    var corners: UIRectCorner = .allCorners

    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
        return Path(path.cgPath)
    }
}

extension View {
    func cornerRadius(_ radius: CGFloat, corners: UIRectCorner) -> some View {
        clipShape( RoundedCornerRectangle(radius: radius, corners: corners) )
    }
}
