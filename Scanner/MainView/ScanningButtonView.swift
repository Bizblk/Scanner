//
//  ScanningButtonView.swift
//  ScanningButtonView
//
//  Created by Виталий Оранский on 31.07.2021.
//

import SwiftUI

struct ScanningButtonView: View {
    var body: some View {
        
        ZStack {
            RoundedRectangle(cornerRadius: 5)
                .foregroundColor(Color.green)
                .frame(width: 200, height: 50)
                .overlay(RoundedRectangle(cornerRadius: 5).stroke(lineWidth: 4))
            Text("SCAN")

        }
        
    }
}

struct ScanningButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ScanningButtonView()
    }
}
