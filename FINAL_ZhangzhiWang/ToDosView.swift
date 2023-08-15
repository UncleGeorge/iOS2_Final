//
//  ToDosView.swift
//  FINAL_ZhangzhiWang
//
//  Created by Zhangzhi Wang on 2023-08-12.
//

import SwiftUI

struct ToDosView: View {
    
    let todos = ["Daily Meeting with the team",
                 "Completing the prototype",
                 "Find people for the user test",
                 "Buy cookies for the kids",
                 "Pay electricity bill"]
    
    var body: some View {
        ZStack {
            
            Color("BackgroundColor")
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                VStack(spacing: 20) {
                    
                    PageTitleView(title: "ToDos")
                    
                    Text("Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt")
                        .font(.system(size: 13))
                        .foregroundColor(Color("GreyBlueColor"))
                        .multilineTextAlignment(.leading)
                    
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
                        Spacer()
                    }
                }
            }
            
            FloatingActionButton {
            }
        }
    }
}

struct ToDosView_Previews: PreviewProvider {
    static var previews: some View {
        ToDosView()
    }
}
