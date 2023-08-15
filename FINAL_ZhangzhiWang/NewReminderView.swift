//
//  NewReminderView.swift
//  FINAL_ZhangzhiWang
//
//  Created by Zhangzhi Wang on 2023-08-12.
//

import SwiftUI

struct NewReminderView: View {
    
    @State private var newReminder: String = ""
    @State private var note: String = ""
    
    var body: some View {
        ZStack {
            Color("BackgroundColor")
                .edgesIgnoringSafeArea(.all)
            
            VStack(spacing: 20) {
                
                PageTitleView(title: "New Reminder")
                
                VStack(spacing: 25) {
                    LabelView(labelText: "Reminder Name")
                    
                    CustomTextField(text: $newReminder, placeholder: "New reminder")
                }
                
                VStack {
                    LabelView(labelText: "Category")
                    
                    ImageButton(imageName: "categorySelector") {
                    }
                }
                
                VStack {
                    LabelView(labelText: "Details")
                    
                    HStack {
                        ImageButton(imageName: "googleButton") {
                        }
                        
                        ImageButton(imageName: "facebookButton") {
                        }
                    }
                }
                
                
                VStack {
                    LabelView(labelText: "Note")
                    
                    TextEditor(text: $note)
                        .font(.body)
                        .frame(height: 120)
                        .shadow(color: .gray.opacity(0.3), radius: 1.5, x: 1, y: 1)
                }
                
                
                
                LabelView(labelText: "Add Smiley")
                
                HStack(spacing: 10) {
                    IconButton(imageName: "loveIcon") {
                    }
                    
                    IconButton(imageName: "smileIcon") {
                    }
                    
                    IconButton(imageName: "nothappyIcon") {
                    }
                    
                    IconButton(imageName: "sadIcon") {
                    }
                    
                    IconButton(imageName: "plusIcon") {
                    }
                    Spacer()
                }
                
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
