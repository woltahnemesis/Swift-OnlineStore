//
//  Models.swift
//  Online-Store
//
//  Created by Rey Walter Magbanua on 2020-07-17.
//  Copyright © 2020 Walter Magbanua. All rights reserved.
//

import Foundation

struct User {
    var username, password, fName, lName: String!
    var location: Location
    var visa: Visa
}

struct Location {
    var country, province, city, streetAdd, postal: String!
}

struct Visa {
    var cardHolderName, cardNumber, expiryDate: String!
    var secureCode: Int!
}

let user1 = User.init(username: "kuan200", password: "kuan123", fName: "Kuan-Wen", lName: "Liu", location: Location(country: "Canada", province: "ON", city: "Barrie", streetAdd: "54 Luisa St.", postal: "L9C 1D5" ), visa: Visa(cardHolderName: "Kuan-Wen Liu", cardNumber: "373575959880899", expiryDate: "05/23", secureCode: 123))

let user2 = User.init(username: "walter231", password: "mgbn123", fName: "Walter", lName: "Magbanua", location: Location(country: "Canada", province: "ON", city: "Barrie", streetAdd: "58 Luisa St.", postal: "L3C 1S3" ), visa: Visa(cardHolderName: "Walter Magbanua", cardNumber: "379015959880899", expiryDate: "02/22", secureCode: 456))

let user3 = User.init(username: "jake231", password: "jake123", fName: "Jake", lName: "Voldemort", location: Location(country: "Canada", province: "ON", city: "Toronto", streetAdd: "12 Gordon St.", postal: "D3C 7S3" ), visa: Visa(cardHolderName: "Jake Voldemort", cardNumber: "379090959880899", expiryDate: "03/14", secureCode: 789))
