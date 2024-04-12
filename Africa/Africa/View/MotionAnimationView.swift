//
//  MotionAnimationView.swift
//  Africa
//
//  Created by LJh on 4/12/24.
//

import SwiftUI

struct MotionAnimationView: View {
    
    @State private var randomCircle = Int.random(in: 12...16)
    @State private var isAnimating: Bool = false
    
     //1. random 좌표
    func randomCooridinate(max: CGFloat) -> CGFloat {
        return CGFloat.random(in: 0...max)
        
    }
     //2. 랜덤 사이즈
    
    func randomSize() -> CGFloat {
        return CGFloat(Int.random(in: 10...300))
    }
     //3. 랜덤 비율
    func randomScale() -> CGFloat {
        return CGFloat(Double.random(in: 0.1...2.0))
    }
     //4. 랜덤 속도
    
    func randomSpeed() -> Double {
        return Double.random(in: 0.025...1.0)
    }
     //5. 랜덤 딜레이
     
    func randomDelay() -> Double {
        return Double.random(in: 0...2)
    }
    
    var body: some View {
        GeometryReader { geometry in
            ZStack {
                ForEach(0...randomCircle, id: \.self) { item in
                    Circle()
                        .foregroundColor(.gray)
                        .opacity(0.15)
                        .frame(width: randomSize(), height: randomSize(), alignment: .center)
                        .scaleEffect(isAnimating ? randomScale() : 1)
                        .position(
                            x: randomCooridinate(max: geometry.size.width),
                            y: randomCooridinate(max: geometry.size.height)
                        )
                        .animation(Animation.interpolatingSpring(stiffness: 0.5, damping: 0.5)
                            .repeatForever()
                            .speed(randomSpeed())
                            .delay(randomDelay())
                                   
                        )
                        .onAppear(perform: {
                            isAnimating = true
                        })
                    
                    
                }
                
            }
            .drawingGroup()
        }
    }
}

#Preview {
    MotionAnimationView()
}
