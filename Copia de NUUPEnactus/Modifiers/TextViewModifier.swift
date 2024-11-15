//
//  TextViewModifier.swift
//  NUUP_Challenge
//
//  Created by Damaris Cortés on 05/11/24.
//

import Foundation
import SwiftUI

struct TextViewModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .overlay(
                RoundedRectangle(cornerRadius: 24)
                    .stroke(Color(.systemGray3), lineWidth: 1)
                    .padding(.horizontal, -12)
            )
            .padding(.horizontal, 24)
    }
}
