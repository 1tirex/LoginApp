//
//  Model.swift
//  LoginApp
//
//  Created by Илья on 18.08.2022.
//

struct Person {
    let login: String
    let password: String
    let info: InfoList
}

struct InfoList {
    let name: String
    let age: Int
    let hobby: String
    let facts: String
    let socialMedia: String
}

extension Person {
    
    static func getPerson() -> Person {
        Person(login: "User",
               password: "Password",
               info: InfoList(name: "Ilya",
                              age: 24,
                              hobby: "Video games, Home sport, Board games, Psychology, Web Disign, take a photo, ",
                              facts: "Been to four countries, participated in video game, basketball and volleyball tournaments, passed my law degree with an A and never worked in my profession again.",
                              socialMedia: "inst: @sobin_ilya")
               )
    }
}
