//
//  GradientButtonStyle.swift
//  HikeApp
//
//  Created by stamoulis nikolaos on 8/6/24.
//

import Foundation
import SwiftUI

struct GradientButton: ButtonStyle {
    
    func makeBody(configuration: Configuration) -> some View {
        configuration
            .label
            .padding(.vertical)
            .padding(.horizontal, 30)
            .background(
                // Conditional statement with nil Coalescing
                // COndition ? A : B
                configuration.isPressed ?
                // A: When user pressed the button
                LinearGradient(colors: [.customGrayMedium, .colorGrayLight], startPoint: .top, endPoint: .bottom)
                // B: When the Button is not pressed
                :
                LinearGradient(colors:
                                [.customGrayLight,
                                 .customGrayMedium],
                               startPoint: .top,
                               endPoint: .bottom)
                )
            .cornerRadius(40)
    }
}
