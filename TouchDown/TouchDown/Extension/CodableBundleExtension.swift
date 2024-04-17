//
//  CodableBundleExtension.swift
//  TouchDown
//
//  Created by LJh on 4/18/24.
//

import Foundation

extension Bundle {
    func decode<T: Codable>(_ file: String) -> T {
        // 1. Locate the Json File
        guard let url = self.url(forResource: file, withExtension: nil) else {
            fatalError("failed to locate \(file) in bundle")
        }
        // 2. create a property for the data
        guard let data = try? Data(contentsOf: url) else {
            fatalError("failed to load \(file) from bundle")

        }
        // 3. create a decoder
        let decoder = JSONDecoder()
        // 4. create  a property for the decoded data
        guard let decodedData = try? decoder.decode(T.self, from: data) else {
            fatalError("failed to decode \(file) from bundle")

        }
        // 5. return the ready - to - use data
        
        return decodedData
    }
}

