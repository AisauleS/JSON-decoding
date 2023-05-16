//
//  Model.swift
//  JSON decoding
//
//  Created by Aisaule Sibatova on 15.05.2023.

import Foundation

// MARK: - Card
struct Cards: Decodable {
    var cards: [Card]
}

struct Card: Decodable {
    let name: String?
    let manaCost: String?
    let cmc: Int?
    let type: String?
    let rarity: String?
    let setName: String?
    let number: String?
    let multiverseid: String?
    let imageURL: String?
    let printings: [String]?
}
