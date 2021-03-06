//
//  ScanningView.swift
//  ScanningView
//
//  Created by Виталий Оранский on 30.07.2021.
//

import SwiftUI

struct ScanningView: View {
    
    @StateObject var viewModel = BarcodeScannerViewModel()
    
    var body: some View {
        
        NavigationView {
            VStack {
                ScannerView(scannedCode: $viewModel.scannedCode,
                            alertItem: $viewModel.alertItem)
                    .frame(maxWidth: .infinity, maxHeight: 300)
                
                Spacer().frame(height: 60)
                
                Label("Scanned Barcode", systemImage: "barcode.viewfinder")
                    .font(.title)
                
                Text(viewModel.statusText)
                    .bold()
                    .font(.largeTitle)
                    .foregroundColor(viewModel.statusTextColor)
                    .padding()
                
                Button(action: {DataManager.shared.addCode(barCode: viewModel.statusText)}, label: {
                    Text(.init(systemName: "icloud.and.arrow.down.fill"))
                        .font(.system(size: 30))
                        .foregroundColor(.blue)
                        .frame(width: 40, height: 40)
                    
                })
                
            }
            .navigationTitle("Barcode Scanner")
            .alert(item: $viewModel.alertItem) { alertItem in
                Alert(title: Text(alertItem.title),
                      message: Text(alertItem.message),
                      dismissButton: alertItem.dismissButton)
                
            }
        }
        
    }
    
}

struct ScanningView_Previews: PreviewProvider {
    static var previews: some View {
        ScanningView()
    }
}

