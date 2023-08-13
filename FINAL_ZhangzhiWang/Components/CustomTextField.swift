//
//  CustomTextField.swift
//  FINAL_ZhangzhiWang
//
//  Created by Zhangzhi Wang on 2023-08-12.
//

import SwiftUI

struct CustomTextField: View {
    
    @Binding var text: String
    var placeholder: String
    
    var body: some View {
        TextField(placeholder, text: $text)
            .padding(.leading, 20)
            .background(
                Image("inputbox")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
            )
            .padding(.bottom, 20)
    }
}

struct CustomTextField_Previews: PreviewProvider {
    static var previews: some View {
        CustomTextField(text: .constant("SampleUsername"), placeholder: "Username")
    }
}
