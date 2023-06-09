//
//  File.swift
//  Navigation
//
//  Created by Евгений Дроздов on 20.12.2022.
//


import UIKit



protocol UserService {
     func checkLogin(login: String, pass: String) -> User?
 }

 class User {
     let login: String

     let fullName: String
     
     let password: String

     let avatarImage: UIImage
     let status: String

     init(login: String, password: String, fullName: String, avatarImage: UIImage, status: String) {
         self.login = login
         self.fullName = fullName
         self.avatarImage = avatarImage
         self.status = status
         self.password = password
     }
 }

 class CurrentUserService: UserService {
     private let user = User(login: "Evgeny", password: "Drozdov", fullName: "Hipster Cat", avatarImage: UIImage(named: "cat")! , status: "Waiting for something" )
     private let userPass = "Drozdov"

     func checkLogin(login: String, pass: String) -> User? {
         if (login == user.login) && (pass == userPass) {
             return user
         } else{
             return nil
         }
     }
 }
     class TestUserService: UserService {
         private let testUser = User(login: "Steve", password: "Jobs", fullName: "Steve Jobs", avatarImage: UIImage(named: "jobs")! , status: "Buy iPhone" )
         private let testUserPass = "Jobs"

         func checkLogin(login: String, pass: String) -> User? {
             if (login == testUser.login) && (pass == testUserPass) {
                 return testUser
             } else{
                 return nil
             }

         }
     }
