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
    @Binding var todos: [String]
    @State private var showAlert = false
    @Environment(\.presentationMode) var presentationMode
    
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
                        ImageButton(imageName: "selectDate") {
                        }
                        
                        ImageButton(imageName: "selectTime") {
                        }
                    }
                }
                
                VStack {
                    LabelView(labelText: "Note")
                    
                    TextEditor(text: $note)
                        .font(.body)
                        .frame(height: 60)
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
                    if newReminder.isEmpty {
                        showAlert = true
                    } else {
                        todos.append(newReminder)
                        newReminder = ""
                        presentationMode.wrappedValue.dismiss()
                    }
                }
                .alert(isPresented: $showAlert) {
                    Alert(title: Text("Warning"), message: Text("Please enter a reminder name"), dismissButton: .default(Text("OK")))
                }
            }
            .padding(28)
        }
    }
}

struct NewReminderView_Previews: PreviewProvider {
    static var previews: some View {
        NewReminderView(todos: .constant(["Sample ToDo"]))
    }
}
