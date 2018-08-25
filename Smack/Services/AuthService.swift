//
//  AuthService.swift
//  Smack
//
//  Created by Developer on 8/25/18.
//  Copyright © 2018 Aaron. All rights reserved.
//

import Foundation
import Alamofire

//singleton por eso la instancia
class AuthService {
    static let instance = AuthService()
    let defaults = UserDefaults.standard
    
    var isLoggedIn: Bool {
        get {
            return defaults.bool(forKey: LOGGED_IN_KEY)
        }
        set {
            defaults.set(newValue, forKey: LOGGED_IN_KEY)
        }
    }
    
    var authToken: String {
        get {
            return defaults.value(forKey: TOKEN_KEY) as! String
        }
        set {
            defaults.set(newValue,forKey: TOKEN_KEY)
        }
    }
    
    var userEmail: String {
        get {
            return defaults.value(forKey: USER_EMAIL) as! String
        }
        set {
            defaults.set(newValue,forKey: USER_EMAIL)
        }
    }
    
    func registerUser(email: String, passwod: String, completion: @escaping CompletionHandler) {
        let lowerCaseEmail = email.lowercased()
        let header = [
            "Content-type":"application/json; charset=utf-8"
        ]
        let body: [String:Any] = [
            "email":lowerCaseEmail,
            "password":passwod
        ]
        Alamofire.request(BASE_URL, method: .post, parameters: body, encoding: JSONEncoding.default, headers: header).responseString { (response) in
            if response.result.error == nil {
                completion(true)
            } else {
                completion(false)
                debugPrint(response.result.error as Any)
            }
        }
    }
}
