//
//  MoneyTrackerView.swift
//  FINAL_ZhangzhiWang
//
//  Created by Zhangzhi Wang on 2023-08-14.
//

import SwiftUI

struct MoneyTrackerView: View {
    
    @State private var selectedSegment = 0
    @State private var showNewAmountView = false
    
    let transactions: [Transaction] = [
        Transaction(name: "John Doe", date: Date(), amount: 10),
        Transaction(name: "Amazon", date: Date(), amount: -25),
        Transaction(name: "Ikea", date: Date(), amount: -150),
        Transaction(name: "Mc Donalds NYC", date: Date(), amount: -15)
    ]
    
    var body: some View {
        ZStack{
            Color("BackgroundColor")
                .edgesIgnoringSafeArea(.all)
            
            VStack(spacing: 20) {
                
                PageTitleView(title: "Money Tracker")
                    .padding(.horizontal,28)
                
                Picker("Options", selection: $selectedSegment) {
                    Text("Movements").tag(0)
                    Text("Statistics").tag(1)
                }
                .pickerStyle(SegmentedPickerStyle())
                .padding(.horizontal,28)
                
                Image("bankCard")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .padding(.leading,25)
                
                HStack {
                    Text("Today")
                        .font(.system(size: 22, weight: .bold))
                    Spacer()
                }
                .padding(.top, 10)
                .padding(.leading, 28)
                
                VStack {
                    ForEach(transactions, id: \.self) { transaction in
                        HStack {
                            Image("redRing")
                                .resizable()
                                .frame(width: 20, height: 20)
                                .padding(.leading, 28)
                            
                            Text(transaction.name)
                                .font(.system(size: 13))
                                .foregroundColor(Color("DarkBlueColor"))
                            
                            Spacer()
                        }
                        .padding(20)
                        .background(
                            Image("todoListRect")
                                .resizable()
                                .frame(width: UIScreen.main.bounds.width - 45)
                        )
                    }
                    
                }
                
            }
            NavigationLink(
                destination: NewAmountView(),
                isActive: $showNewAmountView,
                label: {
                    FloatingActionButton {
                        showNewAmountView = true
                    }
                }
            )
        }
    }
}

struct MoneyTrackerView_Previews: PreviewProvider {
    static var previews: some View {
        MoneyTrackerView()
    }
}
