//
//  IconButton.swift
//  FINAL_ZhangzhiWang
//
//  Created by Zhangzhi Wang on 2023-08-14.
//

import SwiftUI

struct IconButton: View {
    let imageName: String
    var action: () -> Void = {}
    var width: CGFloat = 40
    var height: CGFloat = 40
    
    var body: some View {
        Button(action: action) {
            Image(imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: width, height: height)
        }
    }
}

struct IconButton_Previews: PreviewProvider {
    static var previews: some View {
        IconButton(imageName: "loveIcon") {
            print("Button tapped!")
        }
    }
}
