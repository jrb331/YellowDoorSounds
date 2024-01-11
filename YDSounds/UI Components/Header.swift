//
//  Header.swift
//  YDSounds
//
//  Created by Jonathan Boyd on 11/4/22.
//

import Foundation
import SwiftUI

struct Header {
    
    HStack {
        Text("YD Sounds")
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.leading, 20)
            .foregroundColor(Color(.white))
            .font(Font.custom("Exo-Bold", size: 30))
        
        Button (action: {}) {
            Image(systemName: "magnifyingglass")
                .font(.largeTitle.weight(.semibold))
                .foregroundColor(.white)
                .padding(.trailing, 20)
        }
    }
    .frame(height: 65, alignment: .top)
    
}
