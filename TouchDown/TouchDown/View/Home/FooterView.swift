//
//  FooterView.swift
//  TouchDown
//
//  Created by LJh on 4/17/24.
//

import SwiftUI

struct FooterView: View {
    var body: some View {
        VStack(alignment: .center, spacing: 10) {
            Text("우리는 가장 최첨단이고 편안하며 가볍고 내구성이 뛰어난 헬멧을 제공합니다.")
                .foregroundStyle(.gray)
                .multilineTextAlignment(.center)
                .layoutPriority(2)

            
            Image("logo-lineal")
                .renderingMode(.template)
                .foregroundStyle(.gray)
                .layoutPriority(0)

            
            Text("Copyright © Robert petras\n All right reserved")
                .font(.footnote)
                .fontWeight(.bold)
                .foregroundStyle(.gray)
                .multilineTextAlignment(.center)
                .layoutPriority(1)
            
        }
    }
}

#Preview {
    FooterView()
}
