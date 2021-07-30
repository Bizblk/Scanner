//
//  ScannButtonView.swift
//  Scanner
//
//  Created by Виталий Оранский on 29.07.2021.
//

import SwiftUI

struct ButtonView: View {
    let width: CGFloat
    let height: CGFloat
    let color: Color
    let buttonName: String
    
    var body: some View {
        Button(action: {print("SCANNING")}, label: {
            Text(buttonName)
                .foregroundColor(.black)
                .frame(width: width, height: height)
                .background(color)
                .cornerRadius(15)
        })
    }
}

struct ButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonView(width: 200, height: 50, color: .green, buttonName: "Scan")
    }
}
