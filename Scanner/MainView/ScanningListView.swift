//
//  ScanningListView.swift
//  ScanningListView
//
//  Created by Виталий Оранский on 31.07.2021.
//

import SwiftUI

struct ScanningListView: View {
    
    let scannerData = Product.getProducts()
    
    var body: some View {
            List(scannerData) { product in
                VStack {
                    ScanningListCellView(product: product)
                   
                }
                
            }
        
    }
}

struct ScanningListView_Previews: PreviewProvider {
    static var previews: some View {
        ScanningListView()
    }
}
