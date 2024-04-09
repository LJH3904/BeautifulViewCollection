//
//  AnimalModel.swift
//  Africa
//
//  Created by LJh on 4/9/24.
//

import Foundation

struct Animal: Codable, Identifiable {
  let id: String
  let name: String
  let headline: String
  let description: String
  let link: String
  let image: String
  let gallery: [String]
  let fact: [String]
}

let tempAnimal = Animal(id: "", name: "s", headline: "Ssss", description: "Sss", link: "", image: "", gallery: [""], fact: [""])
