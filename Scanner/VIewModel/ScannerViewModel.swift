//
//  ScannerViewModel.swift
//  ScannerViewModel
//
//  Created by Виталий Оранский on 30.07.2021.
//

import SwiftUI

final class BarcodeScannerViewModel: ObservableObject {
    
    @Published var scannedCode = ""
    @Published var alertItem: AlertItem?
    @Published var codes = DataManager.shared.scannedCode
    var statusText: String {
        scannedCode.isEmpty ? "Not Yet Scanned" : scannedCode
    }
    
    var statusTextColor: Color {
        scannedCode.isEmpty ? .red : .green
    }
}
