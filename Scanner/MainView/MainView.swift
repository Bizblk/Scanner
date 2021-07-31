//
//  ContentView.swift
//  Scanner
//
//  Created by Виталий Оранский on 29.07.2021.
//

import SwiftUI

struct MainView: View {
    
    var body: some View {
        
        NavigationView {
            
            VStack {
                HStack {
                    Spacer()
                    UpdateButtonView()
                        .padding()
                }
                Image("barcode")
                    .resizable()
                    .frame(width: 350, height: 200)
                NavigationLink(destination: ScanningView()) {
                    ScanningButtonView()
                }
                
                
                ScanningListView()
                
                Text("0 product in base")
                
            }
            .navigationTitle("")
            .navigationBarHidden(true)
        }
    }
    
    
    
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
