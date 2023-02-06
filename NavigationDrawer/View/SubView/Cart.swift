//
//  Cart.swift
//  NavigationDrawer
//
//  Created by Md Omar Faruque Fahad on 31/1/23.
//

import SwiftUI

struct Cart: View {
    var body: some View {
        NavigationView{
            Text("Cart")
                .navigationTitle("Cart")
        }
    }
}

struct Cart_Previews: PreviewProvider {
    static var previews: some View {
        Cart()
    }
}
