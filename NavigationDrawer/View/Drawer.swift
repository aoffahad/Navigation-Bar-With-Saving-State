//
//  Drawer.swift
//  NavigationDrawer
//
//  Created by Md Omar Faruque Fahad on 31/1/23.
//

import SwiftUI

struct Drawer: View {
    @EnvironmentObject var menuData: MenuViewModel
    //Animation
    
    var animation: Namespace.ID
    
    var body: some View {
        VStack{
            HStack{
                Image("Profile")
                    .resizable()
                    .aspectRatio( contentMode: .fill)
                    .frame(width: 65,height: 65)
                    .padding(.top,20)
                    .clipShape(Circle())
                    
                Spacer()
                //Close Button
                if menuData.showDrawer {
                    DrawerClosedButon( animation: animation)
                        .padding(.top,50)
                }
                    
            }
            .padding(.top,40)
            .padding(.horizontal)
            VStack(alignment: .leading,spacing: 10, content: {
                Text("Hello")
                    .font(.title2)
                Text("AOF Fahad")
                    .font(.title)
                    .fontWeight(.heavy)
            })
            .foregroundColor(.white)
            .frame(maxWidth: .infinity,alignment: .leading)
            .padding(.horizontal)
            .padding(.top,5)
            
            //Menu Buttons.....
            VStack(spacing: 18){
                MenuButton(name: "Catelog", image: "envelope.fill", selectedMenu: $menuData.selectedMenu, animation: animation)
                MenuButton(name: "Cart", image: "bag.fill", selectedMenu: $menuData.selectedMenu, animation: animation)
                MenuButton(name: "Favourite", image: "suit.heart.fill", selectedMenu: $menuData.selectedMenu, animation: animation)
                MenuButton(name: "Orders", image: "list.triangle", selectedMenu: $menuData.selectedMenu, animation: animation)
                
                    
            }
            .padding(.leading)
            .frame(width: 250,alignment: .leading)
            .padding(.top,30)
            
            Divider()
                .background(Color.white)
                .padding(.top,30)
                .padding(.horizontal,25)
            
            Spacer()
            
            MenuButton(name: "Sign Out", image: "rectangle.righthalf.inset.fill.arrow.right", selectedMenu: .constant(""), animation: animation)
                .padding(.bottom)
                
        }
        //Default Size
        .frame(width: 250)
        .background(Color(UIColor(red: 0.10, green: 0.16, blue: 0.34, alpha: 1.00)))
        .ignoresSafeArea(.all,edges: .vertical)
    }
}

struct Drawer_Previews: PreviewProvider {
    static var previews: some View {
        Home()
            
    }
}

struct DrawerClosedButon: View{
    @EnvironmentObject var menuData: MenuViewModel
    var animation: Namespace.ID
    var body: some View{
        Button(action: {
            withAnimation(.easeInOut){
                menuData.showDrawer.toggle()
            }
        }, label: {
            VStack(spacing: 5) {
                Capsule()
                    .fill(menuData.showDrawer ? Color.white : Color.primary)
                    .frame(width:35,height: 3)
                    .rotationEffect(.init(degrees: menuData.showDrawer ? -50 : 0))
                //Adjusting like X
                    .offset(x: menuData.showDrawer ? 3 : 0, y: menuData.showDrawer ? 9 : 0)
                
                VStack(spacing: 5){
                    Capsule()
                        .fill(menuData.showDrawer ? Color.white : Color.primary)
                        .frame(width:35,height: 3)
                    Capsule()
                        .fill(menuData.showDrawer ? Color.white : Color.primary)
                        .frame(width:35,height: 3)
                        .offset(y: menuData.showDrawer ? -8 : 0)
                }
                .rotationEffect(.init(degrees: menuData.showDrawer ? 50 : 0))
            }
        })
        //Making it little
        .scaleEffect(0.8)
        .matchedGeometryEffect(id: "MENU_BUTTON", in: animation)
    }
}
