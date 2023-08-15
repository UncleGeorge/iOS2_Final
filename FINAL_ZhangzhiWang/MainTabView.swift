//
//  MainTabView.swift
//  FINAL_ZhangzhiWang
//
//  Created by Zhangzhi Wang on 2023-08-15.
//

import SwiftUI

struct MainTabView: View {
    @State private var selectedTab = 0
        
        var body: some View {
            TabView(selection: $selectedTab) {
                CalendarView()
                    .tabItem {
                        Image("calendarGreyIcon")
                            .renderingMode(.template)
                        Text("Calendar")
                    }
                    .tag(0)
                
                ToDosView()
                    .tabItem {
                        Image("checkGreyIcon")
                            .renderingMode(.template)
                        Text("ToDo List")
                    }
                    .tag(1)
                
                MoneyTrackerView()
                    .tabItem {
                        Image("financeGreyIcon")
                            .renderingMode(.template)
                        Text("Finance")
                    }
                    .tag(2)
                
                SettingsView()
                    .tabItem {
                        Image("SettingsGreyIcon")
                            .renderingMode(.template)
                        Text("Settings")
                    }
                    .tag(3)
            }
            .accentColor(Color("DarkBlueColor"))
        }
}

struct MainTabView_Previews: PreviewProvider {
    static var previews: some View {
        MainTabView()
    }
}
