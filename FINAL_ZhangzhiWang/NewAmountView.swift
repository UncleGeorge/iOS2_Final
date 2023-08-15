//
//  NewAmountView.swift
//  FINAL_ZhangzhiWang
//
//  Created by Zhangzhi Wang on 2023-08-15.
//

import SwiftUI

struct NewAmountView: View {
    
    @State private var newAmountName: String = ""
    @State private var newAmount: Double = 0
    
    private let currencyFormatter: NumberFormatter = {
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        formatter.currencySymbol = "€"
        formatter.currencyGroupingSeparator = ","
        formatter.maximumFractionDigits = 2
        formatter.minimumFractionDigits = 2
        return formatter
    }()
    
    var body: some View {
        ZStack {
            Color("BackgroundColor")
                .edgesIgnoringSafeArea(.all)
            
            VStack(spacing: 20) {
                
                PageTitleView(title: "New Amount")
                
                VStack(spacing: 25) {
                    LabelView(labelText: "Amount Name")
                    
                    CustomTextField(text: $newAmountName, placeholder: "New name")
                }
                
                VStack {
                    LabelView(labelText: "Category")
                    
                    ImageButton(imageName: "categorySelector2") {
                    }
                }
                
                VStack {
                    LabelView(labelText: "Details")
                    
                    HStack {
                        ImageButton(imageName: "selectDate") {
                        }
                        
                        ImageButton(imageName: "selectTime") {
                        }
                    }
                }
                
                VStack(spacing: 20) {
                    LabelView(labelText: "Amount")
                    
                    HStack {
                        Slider(value: $newAmount, in: 0...500, step: 1)
                            .frame(maxWidth: .infinity)
                            .accentColor(Color.orange)
                        
                        TextField("", value: $newAmount, formatter: currencyFormatter)
                            .frame(width: 85)
                            .multilineTextAlignment(.center)
                            .keyboardType(.numberPad)
                            .padding(.vertical, 5)
                            .overlay(
                                RoundedRectangle(cornerRadius: 5)
                                    .stroke(Color.gray, lineWidth: 1)
                            )
                    }
                    .padding(.horizontal, 24)
                    .background(
                        Image("inputbox")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                    )
                }
                
                Spacer()
                
                ImageButton(imageName: "enterNewAmountButton") {
                }
            }
            .padding(28)
        }
    }
}

struct NewAmountView_Previews: PreviewProvider {
    static var previews: some View {
        NewAmountView()
    }
}
