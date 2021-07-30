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
                }.padding()

                Image("barcode")
                    .resizable()
                    .frame(width: 350, height: 300)
                NavigationLink(destination: ScanningView()) {
                    Text("SCAN")
                }
                ButtonView(width: 200, height: 50, color: .green, buttonName: "Scan")

                Spacer()
                Text("0 product in base")
            }
        }
    }
        
        

}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
