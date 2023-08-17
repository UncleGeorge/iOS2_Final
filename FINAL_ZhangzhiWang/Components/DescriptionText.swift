//
//  DescriptionText.swift
//  FINAL_ZhangzhiWang
//
//  Created by Zhangzhi Wang on 2023-08-17.
//

import SwiftUI

struct DescriptionText: View {
    var body: some View {
        Text("Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt")
            .font(.system(size: 13))
            .foregroundColor(Color("GreyBlueColor"))
            .multilineTextAlignment(.leading)
    }
}

struct DescriptionText_Previews: PreviewProvider {
    static var previews: some View {
        DescriptionText()
    }
}
