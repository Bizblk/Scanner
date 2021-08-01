//
//  DataManager.swift
//  Scanner
//
//  Created by Виталий Оранский on 30.07.2021.
//

import Foundation

class DataManager {
    
    
    static let shared = DataManager()
    
    @Published var scannedCode = ["0000000001"]
    
    private init() {}
    
    
    func addCode(barCode: String) {
        scannedCode.append(barCode)
        print(scannedCode.count)
    }
    
    
}
