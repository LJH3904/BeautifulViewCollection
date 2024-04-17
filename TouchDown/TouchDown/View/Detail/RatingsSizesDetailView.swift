//
//  RatingsSizesDetailView.swift
//  TouchDown
//
//  Created by LJh on 4/18/24.
//

import SwiftUI

struct RatingsSizesDetailView: View {
    
    let sizes: [String] = ["XS","s","M","L","XL"]
    @State private var selectedButton: Int? = nil
    @State private var selectedSize: String? = nil

    
    var body: some View {
        HStack(alignment: .top, spacing: 3, content: {
            VStack(alignment: .leading, spacing: 3,content: {
                Text("Ratings")
                    .font(.footnote)
                    .fontWeight(.semibold)
                    .foregroundStyle(colorGray)
                
                HStack(alignment: .center, spacing: 3, content: {
                    ForEach(1...5, id: \.self) { item in
                        Button {
                            selectedButton = item
                        } label: {
                            Image(systemName: "star.fill")
                                .frame(width: 28, height: 28, alignment: .center)
                                .background(selectedButton == item ? Color.black : Color.gray)
                                .clipShape(RoundedRectangle(cornerRadius: 5))
                                .foregroundColor(.white)
                        }
                    }
                })
            })
            Spacer()
            
            VStack(alignment: .trailing, spacing: 3, content: {
                Text("Sizes")
                    .font(.footnote)
                    .fontWeight(.semibold)
                    .foregroundStyle(colorGray)
                
                HStack(alignment: .center, spacing: 5, content: {
                    ForEach(sizes, id: \.self) { size in
                        Button {
                            selectedSize = size
                        } label: {
                            Text(size)
                                .font(.footnote)
                                .fontWeight(.heavy)
                                .foregroundStyle(selectedSize == size ? .black : colorGray)
                                .frame(width: 28, height: 28, alignment: .center)
                                .background(selectedSize == size ? Color.gray : Color.white)
                                .clipShape(RoundedRectangle(cornerRadius: 5))
                                .overlay(
                                    RoundedRectangle(cornerRadius: 5)
                                        .stroke(colorGray, lineWidth: 2)
                                )
                        }
                    }
                })
            })
            
        })
    }
}

#Preview {
    RatingsSizesDetailView()
}
