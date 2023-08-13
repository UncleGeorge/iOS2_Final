//
//  ImageButton.swift
//  FINAL_ZhangzhiWang
//
//  Created by Zhangzhi Wang on 2023-08-12.
//

import SwiftUI

struct ImageButton: View {
    
    var imageName: String
    var action: () -> Void
    
    var body: some View {
        Button(action: action) {
            Image(imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
        }
    }
}

struct ImageButton_Previews: PreviewProvider {
    static var previews: some View {
        ImageButton(imageName: "googleButton") {
        }
    }
}
