//
//  Favourite.swift
//  NavigationDrawer
//
//  Created by Md Omar Faruque Fahad on 31/1/23.
//

import SwiftUI

struct Favourite: View {
    var body: some View {
        NavigationView{
            Text("Favourite")
                .navigationTitle("Favourite")
        }
    }
}

struct Favourite_Previews: PreviewProvider {
    static var previews: some View {
        Favourite()
    }
}
