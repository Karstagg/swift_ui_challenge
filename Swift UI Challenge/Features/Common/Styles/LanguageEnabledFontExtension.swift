//
//  LanguageEnabledFontExtension.swift
//  Swift UI Challenge
//
//  Created by Matthew Fisher on 2024/01/02.
//

import SwiftUI

// extend as needed
enum AvailableLanguages {
    case ja, en
}

// extend as needed
enum Weights {
    case regular, bold, medium
}

// Extend as neeed
let languageDictionary: [AvailableLanguages: [Weights: String]] =
[
    AvailableLanguages.ja: [
        Weights.regular: "HiraginoSans-W4",
        Weights.medium: "HiraginoSans-w6",
        Weights.bold: "HiraginoSans-W7"
    ]
]

// This may not be strictly necessary. It was developed to enforce Japanese text being displayed in Hiragino Sans on non Japanese language devices
extension Font {
    static func languageSpecificFontOveride(for language: AvailableLanguages, size: CGFloat, customWeight: Weights = Weights.regular, systemWeight: Font.Weight = .regular) -> Font {
        
        // SF Pro is the default font for latin characters, this font has not been made accessible to custom fonts
        if (language == AvailableLanguages.en) {
            return .system(size: size, weight: systemWeight)
        }
        
        // return a custom font with specified size and weight based on language
        return .custom(languageDictionary[language]![customWeight]!, size: size)
        
    }
}
