//
//  ProductModel.swift
//  Scanner
//
//  Created by Виталий Оранский on 30.07.2021.
//

import Foundation

struct Product: Identifiable {
    let id = UUID()
    let name: String
    let price: String
    let barCode: String
    
    static func getProducts() -> [Product] {
        [
            Product(name: "Pure 0.18", price: "90", barCode: "213231123"),
            Product(name: "Classic 0.35", price: "90", barCode: "123786123")
        ]
    }
}

struct ScanningCode: Identifiable {
    let id = UUID()
    let barCode: String
}
