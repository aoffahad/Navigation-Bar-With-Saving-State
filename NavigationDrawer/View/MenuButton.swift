//
//  MenuButton.swift
//  NavigationDrawer
//
//  Created by Md Omar Faruque Fahad on 31/1/23.
//

import SwiftUI

struct MenuButton: View {
    var name: String
    var image: String
    @Binding var selectedMenu: String
    
    var animation: Namespace.ID
    
    var body: some View {
        Button(action: {
            withAnimation(.spring()){
                selectedMenu = name
            }
        }, label: {
            HStack(spacing: 15){
               Image(systemName: image )
                    .font(.title2)
                    .foregroundColor(selectedMenu == name ? .black : .white)
               Text(name)
                    .foregroundColor(selectedMenu == name ? .black : .white)
            }
            .padding(.horizontal)
            .padding(.vertical,12)
            .frame(width: 200,alignment: .leading)
            .background(
                ZStack{
                    if selectedMenu == name{
                        Color.white
                            .cornerRadius(10)
                            .matchedGeometryEffect(id: "TAB", in: animation)
                    } else {
                        Color.clear
                        
                    }
                }
            )
            .cornerRadius(10)
        })
    }
}

struct MenuButton_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
