//
//  UpdateButtonView.swift
//  Scanner
//
//  Created by Виталий Оранский on 29.07.2021.
//

import SwiftUI

struct UpdateButtonView: View {
    
    var body: some View {
        Button(action: {print("DOWNLOAD")}, label: {
            Text(.init(systemName: "icloud.and.arrow.down.fill"))
                .font(.system(size: 30))
                .foregroundColor(.blue)
                .frame(width: 40, height: 40)
            
        })
    }
}

struct UpdateButtonView_Previews: PreviewProvider {
    static var previews: some View {
        UpdateButtonView()
    }
}
