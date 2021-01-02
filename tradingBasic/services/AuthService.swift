//
//  AuthService.swift
//  tradingBasic
//
//  Created by Yoahn Linard on 13/12/2020.
//

import Foundation
import Apollo
import Promises

class AuthService
{
    
    
    func login(user: String, passowrd: String) -> Promise<LoginReturn>
    {
        let defaults = UserDefaults.standard
        let promise = Promise<LoginReturn>(on: .main) { fulfill, reject in
            apollo.perform(mutation: LoginMutation(input: UsersPermissionsLoginInput(identifier: user, password: passowrd))) {
                result in
                switch result {
                
                case .success(let data):
                    if let errors = data.errors {
                        if !errors.isEmpty {
                            for error in errors {
                                reject(error)
                            }
                        }
                    }
                    defaults.setValue(data.data?.login.user.email, forKey: defaultsKeys.email)
                    defaults.setValue(data.data?.login.user.username, forKey: defaultsKeys.username)
                    defaults.setValue(data.data?.login.user.id, forKey: defaultsKeys.UID)
                    defaults.setValue(data.data?.login.jwt, forKey: defaultsKeys.jwt)
                    fulfill(LoginReturn.success)
                case .failure(_):
                    print("Error")
                }
            }
        }
        return promise
    }
    
    func getUserInfo() -> User
    {
        let defaults = UserDefaults.standard
        if let usernameFrom = defaults.value(forKey: defaultsKeys.username) {
            if let emailFrom = defaults.value(forKey: defaultsKeys.email) {
                let username: String = usernameFrom as! String
                let email: String = emailFrom as! String
                return User(username: username, email: email)
            }
        }
        return User(username: String(), email: String())
    }
    
    func getuserProfilePicture() -> String {
//        let defaults = UserDefaults.standard
////        let jwt = defaults.value(forKey: defaultsKeys)
        return "https://pfpmaker.com/img/profile-3-1.3e702c5b.png"
    }
    
    func logOut()
    {
        let defaults = UserDefaults.standard
        let dictionary = defaults.dictionaryRepresentation()
        dictionary.keys.forEach { key in
            defaults.removeObject(forKey: key)
        }
        
    }
}
