//
//  PaddingModifier.swift
//  TouchDown
//
//  Created by LJh on 4/18/24.
//

import SwiftUI

struct PaddingModifier: ViewModifier {
    func body(content: Content) -> some View {
        content.padding(.top, UIApplication.shared.connectedScenes
            .compactMap { $0 as? UIWindowScene }
            .first?.windows
            .first?.safeAreaInsets.top ?? 0)
    }
}
