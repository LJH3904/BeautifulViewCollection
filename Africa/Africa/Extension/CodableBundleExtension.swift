//
//  CodableBundleExtension.swift
//  Africa
//
//  Created by LJh on 4/4/24.
//

import Foundation

extension Bundle {
    func decode(_ file: String) -> [CoverImage] {
        // 1. Locate the Json file
        guard let url = self.url(forResource: file, withExtension: nil) else {
            fatalError("Failed to lacate \(file) in bundle ")
        }
        // 2. create a property for the data
        
        // 3. create a decoder
        // 4. create a decoder
        // 5,  return the ready to use data
        return [CoverImage(id: 1, name: "s")]
    }
}
