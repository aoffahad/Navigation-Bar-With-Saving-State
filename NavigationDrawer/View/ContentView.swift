//
//  ContentView.swift
//  NavigationDrawer
//
//  Created by Md Omar Faruque Fahad on 31/1/23.
//

import SwiftUI

struct ContentView: View {
    @State private var username: String = ""
    @State private var password = ""
    @State private var wrongUsername = 0
    @State private var wrongPassword = 0
    @State private var showingLoginScreen = false
    var body: some View {
        //Home()
        
         NavigationView {
             ZStack{
                 Image("Background")
                     .resizable()
                     .scaledToFill()
                     .edgesIgnoringSafeArea(.all)

                 VStack{
                     Image("logo")
                         .resizable()
                         .scaledToFit()
                         .frame(width: 100,height: 100)
                     Text("LOG IN TO YOUR ACCOUNT")
                         .font(.system(size: 12))
                         .bold()
                         .foregroundColor(.black)
                         .frame(maxWidth: .infinity)
                     TextField("Username", text: $username)
                         .padding()
                         .frame(width: 200,height: 50)
                         .background(Color.black.opacity(0.05))
                         .cornerRadius(10)
                         .border(.red, width: CGFloat(wrongUsername))
                         .textInputAutocapitalization(.never)
                     
                     SecureField("Password", text: $password)
                         .padding()
                         .frame(width: 200,height: 50)
                         .background(Color.black.opacity(0.05))
                         .cornerRadius(10)
                         .border(.red, width: CGFloat(wrongPassword))
                         
                     Text("Forgot Passwod?")
                         .padding(.leading,80)
                         .foregroundColor(.blue)
 //                    Button("Login"){
 //                       authinticateUser(username: username, password: password)
 //                    }
 //                    .foregroundColor(.white)
 //                    .frame(width: 300,height: 50)
 //                    .background(Color(.systemBlue))
 //                    .cornerRadius(10)
                     
                     
 //                    NavigationLink(destination: HomePage(), isActive: $showingLoginScreen) {
 //                        EmptyView()
 //                    }
                     NavigationLink(destination: Home()) {
                         ContinueButton(ButtonName: "Login")
                     }
                 }
                 .padding(100)
                 .background{
                     RoundedRectangle(cornerRadius: 25, style: .continuous)
                         .fill(Color.white)
                     
                 }
                 .cornerRadius(15)
                 
             }
         }
         .navigationBarHidden(true)
     }
 //    func authinticateUser (username: String, password: String){
 //        if username.lowercased() == "fahad2022" {
 //            wrongUsername = 0
 //            if password.lowercased() == "fahad" {
 //                wrongPassword = 0
 //                showingLoginScreen = true
 //            }  else{
 //                wrongUsername = 2
 //            }
 //        }
 //    }
 }
 struct ContinueButton: View{
     var ButtonName: String
     var body: some View{
         Text(ButtonName)
             .frame(width: 200, height: 50,alignment: .center)
             .background(Color.blue)
             .foregroundColor(.white)
             .cornerRadius(10)
     }
 }




struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
