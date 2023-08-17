//
//  CalendarView.swift
//  FINAL_ZhangzhiWang
//
//  Created by Zhangzhi Wang on 2023-08-15.
//

import SwiftUI

struct CalendarView: View {
    
    @State private var selectedDate = Date()
    
    var body: some View {
        ZStack {
            
            Color("BackgroundColor")
                .edgesIgnoringSafeArea(.all)
            
            VStack(spacing: 20) {
                PageTitleView(title: "Login")
                
                DescriptionText()
                
                DatePicker("Select a date", selection: $selectedDate, displayedComponents: .date)
                    .datePickerStyle(GraphicalDatePickerStyle())
                    .frame(maxHeight: 400)
                    .accentColor(Color.orange)
                
                HStack {
                    Text("Schedule (09.08)")
                        .font(.system(size: 22, weight: .bold))
                    Spacer()
                    Text("Add Event")
                        .font(.system(size: 13))
                        .foregroundColor(Color("GreyBlueColor"))
                }
                
                Spacer()
            }
            .padding(28)
        }
    }
}

struct CalendarView_Previews: PreviewProvider {
    static var previews: some View {
        CalendarView()
    }
}
