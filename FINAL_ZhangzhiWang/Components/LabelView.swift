//
//  LabelView.swift
//  FINAL_ZhangzhiWang
//
//  Created by Zhangzhi Wang on 2023-08-12.
//

import SwiftUI

struct LabelView: View {
    
    var labelText: String
    
    var body: some View {
        HStack {
            Text(labelText)
                .font(.system(size: 12))
                .foregroundColor(Color("GreyBlueColor"))
            Spacer()
        }
        .padding(.horizontal, 20)
    }
}

struct LabelView_Previews: PreviewProvider {
    static var previews: some View {
        LabelView(labelText: "Name")
    }
}
