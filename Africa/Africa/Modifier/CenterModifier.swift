//
//  CenterModifier.swift
//  Africa
//
//  Created by LJh on 4/16/24.
//

import SwiftUI
struct CenterModifier: ViewModifier {
    func body(content: Content) -> some View {
        HStack {
            Spacer()
            content
            Spacer()
        }
    }
}
