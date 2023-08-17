//
//  LoginView.swift
//  FINAL_ZhangzhiWang
//
//  Created by Zhangzhi Wang on 2023-08-12.
//

import SwiftUI

struct LoginView: View {
    
    @State private var username: String = ""
    @State private var password: String = ""
    @State private var isNavigating: Bool = false
    
    var body: some View {
        NavigationView {
            ZStack {
                
                Color("BackgroundColor")
                    .edgesIgnoringSafeArea(.all)
                
                VStack(spacing: 20) {
                    
                    PageTitleView(title: "Login")
                    
                    DescriptionText()
                    
                    Spacer()
                    
                    VStack(spacing: 20) {
                        
                        LabelView(labelText: "Name")
                        
                        CustomTextField(text: $username, placeholder: "Username")
                        
                        LabelView(labelText: "Password")
                        
                        SecureField("Password", text: $password)
                            .padding(.leading, 20)
                            .background(
                                Image("inputbox")
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                            )
                            .padding(.bottom, 20)
                        
                        HStack {
                            Spacer()
                            Text("Forgot password?")
                                .font(.system(size: 12))
                                .foregroundColor(Color("GreyBlueColor"))
                        }
                    }
                    
                    Spacer()
                    
                    Text("Or login with...")
                        .font(.system(size: 12))
                        .foregroundColor(Color("GreyBlueColor"))
                    
                    HStack {
                        ImageButton(imageName: "googleButton") {
                        }
                        
                        ImageButton(imageName: "facebookButton") {
                        }
                    }
                    
                    NavigationLink(
                        destination: MainTabView()
                            .navigationBarBackButtonHidden(true),
                        isActive: $isNavigating,
                        label: {
                            ImageButton(imageName: "loginButton") {
                                isNavigating = true
                            }
                        }
                    )
                }
                .padding(28)
            }
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
