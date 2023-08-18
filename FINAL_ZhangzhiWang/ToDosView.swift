//
//  ToDosView.swift
//  FINAL_ZhangzhiWang
//
//  Created by Zhangzhi Wang on 2023-08-12.
//

import SwiftUI

struct ToDosView: View {
    
    @State private var todos = ["Daily Meeting with the team",
                                "Completing the prototype",
                                "Find people for the user test",
                                "Buy cookies for the kids",
                                "Pay electricity bill"]
    @State private var showNewReminderView = false
    
    var body: some View {
        NavigationView {
            ZStack {
                
                Color("BackgroundColor")
                    .edgesIgnoringSafeArea(.all)
                
                VStack {
                    VStack(spacing: 20) {
                        
                        PageTitleView(title: "ToDos")
                        
                        DescriptionText()
                        
                        HStack {
                            Image("computerIcon")
                            Spacer()
                            Image("familyIcon")
                            Spacer()
                            Image("clockIcon")
                            
                        }
                        .padding(12)
                        
                    }
                    .padding(28)
                    
                    ZStack {
                        VStack {
                            HStack{
                                Spacer()
                                Image("yellowRect")
                                Image("blueRect")
                            }
                            Spacer()
                        }
                        .padding(.top, 10)
                        
                        VStack {
                            HStack {
                                Text("Today")
                                    .font(.system(size: 22, weight: .bold))
                                Spacer()
                            }
                            .padding(.top, 40)
                            .padding(.leading, 28)
                            
                            ScrollView {
                                VStack {
                                    ForEach(todos, id: \.self) { todo in
                                        HStack {
                                            Image("redRing")
                                                .resizable()
                                                .frame(width: 20, height: 20)
                                                .padding(.leading, 28)
                                            
                                            Text(todo)
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
                            Spacer()
                        }
                    }
                }
                NavigationLink(
                    destination: NewReminderView(todos: $todos),
                    isActive: $showNewReminderView,
                    label: {
                        FloatingActionButton {
                            showNewReminderView = true
                        }
                    }
                )
            }
        }
    }
}

struct ToDosView_Previews: PreviewProvider {
    static var previews: some View {
        ToDosView()
    }
}
