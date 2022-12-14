//
//  Model.swift
//  LoginApp
//
//  Created by ะะปัั on 18.08.2022.
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
                              from: "Izhevsk ๐",
                              hobby: "Video games ๐ฎ, Home sport ๐งโโ๏ธ, Board games ๐ฒ, Psychology ๐ฅธ, Web Disign ๐งโ๐ป, take a photo ๐ธ, cook different food ๐ฅ, ride in snowboard ๐ and love Anime ๐",
                              facts: "Been to four countries, participated in video game, basketball and volleyball tournaments, passed my law degree with an A and never worked in my profession again, worked in mlm company for 2 years and live with a cat 'Luna' and a dog 'Mint'",
                              socialMedia: "inst: @sobin_ilya")
               )
    }
}
