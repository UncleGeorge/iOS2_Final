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
    @Binding var transactions: [Transaction]
    @State private var showingAlert = false
    @State private var alertMessage = ""
    @Environment(\.presentationMode) var presentationMode
    
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
                    if newAmountName.isEmpty {
                        alertMessage = "Please input the amount name."
                        showingAlert = true
                    } else if newAmount == 0 {
                        alertMessage = "Please input a valid amount."
                        showingAlert = true
                    } else {
                        transactions.append(Transaction(name: newAmountName, date: Date(), amount: -newAmount))
                        presentationMode.wrappedValue.dismiss()
                    }
                }
                .alert(isPresented: $showingAlert) {
                    Alert(title: Text("Error"), message: Text(alertMessage), dismissButton: .default(Text("Okay")))
                }
            }
            .padding(28)
        }
    }
}

struct NewAmountView_Previews: PreviewProvider {
    @State static var previewTransactions: [Transaction] = [
        Transaction(name: "Sample", date: Date(), amount: 20.0)
    ]
    
    static var previews: some View {
        NewAmountView(transactions: $previewTransactions)
    }
}
