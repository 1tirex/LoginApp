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
    let from: String
    let hobby: String
    let facts: String
    let socialMedia: String
}

extension Person {
    
    static func getPerson() -> Person {
        Person(login: "1",
               password: "1",
               info: InfoList(name: "Ilya",
                              age: 24,
                              from: "Izhevsk 🏙",
                              hobby: "Video games 🎮, Home sport 🧘‍♂️, Board games 🎲, Psychology 🥸, Web Disign 🧑‍💻, take a photo 📸, cook different food 🍥, ride in snowboard 🏂 and love Anime 🎏",
                              facts: "Been to four countries, participated in video game, basketball and volleyball tournaments, passed my law degree with an A and never worked in my profession again, worked in mlm company for 2 years and live with a cat 'Luna' and a dog 'Mint'",
                              socialMedia: "inst: @sobin_ilya")
               )
    }
}
