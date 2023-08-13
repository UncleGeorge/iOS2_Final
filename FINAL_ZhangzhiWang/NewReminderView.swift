//
//  NewReminderView.swift
//  FINAL_ZhangzhiWang
//
//  Created by Zhangzhi Wang on 2023-08-12.
//

import SwiftUI

struct NewReminderView: View {
    
    @State private var newReminder: String = ""
    
    var body: some View {
        ZStack {
            Color("BackgroundColor")
                .edgesIgnoringSafeArea(.all)
            
            VStack(spacing: 20) {
                
                PageTitleView(title: "New Reminder")
                
                LabelView(labelText: "Reminder Name")
                
                CustomTextField(text: $newReminder, placeholder: "New reminder")
                
                LabelView(labelText: "Category")
                
                ImageButton(imageName: "categorySelector") {
                }
                
                LabelView(labelText: "Details")
                
                HStack {
                    ImageButton(imageName: "googleButton") {
                    }
                    
                    ImageButton(imageName: "facebookButton") {
                    }
                }
                
                LabelView(labelText: "Note")
                
                LabelView(labelText: "Add Smiley")
                
                ImageButton(imageName: "createReminderButton") {
                }
                
            }
            .padding(28)
        }
    }
}

struct NewReminderView_Previews: PreviewProvider {
    static var previews: some View {
        NewReminderView()
    }
}
