//
//  Home.swift
//  NavigationDrawer
//
//  Created by Md Omar Faruque Fahad on 31/1/23.
//

import SwiftUI

struct Home: View {
    //Hiding Tab bar
    init() {
        UITabBar.appearance().isHidden = true
    }
    
    @StateObject var menuData = MenuViewModel()
    @Namespace var animation
    
    
    var body: some View {
        HStack(spacing: 0){
            // Drawer and main view.....
            
            
            
            //Drawer.....
            Drawer(animation: animation)
            
            
            //Main View
            
            TabView(selection: $menuData.selectedMenu){
                Catelog()
                    .tag("Catelog")
                Cart()
                    .tag("Cart")
                Favourite()
                    .tag("Favourite")
                Order()
                    .tag("Orders")
            }
            .frame(width: UIScreen.main.bounds.width)
        }
        //Max Frame
        .frame(width: UIScreen.main.bounds.width)
        //Moving View 250/2 = 125
        .offset(x: menuData.showDrawer ? 125 : -125)
        .overlay(
            ZStack{
                if !menuData.showDrawer{
                    DrawerClosedButon(animation: animation)
                        .padding()
                }
            },
            alignment: .topLeading
                
        )
        .environmentObject(menuData)
        
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
