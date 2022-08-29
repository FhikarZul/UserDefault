//
//  Preferences.swift
//  UserDefault
//
//  Created by Lucy on 29/08/22.
//

import Foundation

class Preferences{
    let userDefault = UserDefaults.standard
    let keyAccessToken = "access_token"
    
    func saveAccesToken(accessToken: String){
        userDefault.set(accessToken, forKey: keyAccessToken)
        
        let didSave = userDefault.synchronize()
        
        if !didSave{
            print("preferences could not be saved!")
        }
    }
    
    func getAccessToken() -> String?{
        
        guard let accessToken = userDefault.string(forKey: keyAccessToken) else{
            return nil
        }
        
        return accessToken
    }
    
    func clearAccessToken(){
        UserDefaults.standard.removePersistentDomain(forName: Bundle.main.bundleIdentifier!)
        UserDefaults.standard.synchronize()
    }
    
    
}
