//
//  ScanningListCellView.swift
//  ScanningListCellView
//
//  Created by Виталий Оранский on 31.07.2021.
//

import SwiftUI

struct ScanningListCellView: View {
    
    let product: Product
    
    var body: some View {
        
        VStack(alignment: .leading) {
            Text("Name: \(product.name)")
            Text("Price: \(product.price)")
            Text("Code: \(product.barCode)")
        }
    }
}

struct ScanningListCellView_Previews: PreviewProvider {
    static var previews: some View {
        ScanningListCellView(product: Product(name: "4Season", price: "90", barCode: "098123876"))
    }
}
