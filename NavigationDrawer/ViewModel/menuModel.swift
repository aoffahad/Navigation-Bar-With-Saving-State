//
//  menuModel.swift
//  NavigationDrawer
//
//  Created by Md Omar Faruque Fahad on 31/1/23.
//

import SwiftUI

class MenuViewModel: ObservableObject{
    //Default..
    @Published var selectedMenu = "Catalogue"
    
    //Show
    @Published var showDrawer = false
}
