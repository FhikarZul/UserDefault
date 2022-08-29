//
//  ContentView.swift
//  UserDefault
//
//  Created by Lucy on 29/08/22.
//

import SwiftUI

struct ContentView: View {
    let preferences = Preferences()
    
    var body: some View {
        VStack{
            Text(preferences.getAccessToken() ?? "")
            Button(preferences.getAccessToken() == nil ? "Login" : "Logout"){
                if preferences.getAccessToken() == nil {
                    preferences.saveAccesToken(accessToken: "123fdahsdf65q67e237t2jfgrjt73t2rt347")
                }else{
                    preferences.clearAccessToken()
                }
            }
            .padding()
            .background(Color.brown)
            .foregroundColor(Color.white)
            .clipShape(RoundedRectangle(cornerRadius: 20))
           
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
