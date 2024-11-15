//
//  RoudedColorButton.swift
//  NUUP_Challenge
//
//  Created by Damaris Cortés on 03/11/24.
//


import SwiftUI

struct RoudedColorButton: ViewModifier {
    let color : Color
    func body(content: Content) -> some View {
        content
            .font (.subheadline)
            .frame (height: 48)
            .frame (maxWidth: .infinity)
            .foregroundColor(.white)
            .padding(.horizontal)
            .background (color)
            .cornerRadius (24)
            .padding (.horizontal,24)
    }
}
