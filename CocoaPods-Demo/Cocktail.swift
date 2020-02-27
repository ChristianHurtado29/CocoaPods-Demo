//
//  Cocktail.swift
//  CocoaPods-Demo
//
//  Created by Christian Hurtado on 2/27/20.
//  Copyright © 2020 Christian Hurtado. All rights reserved.
//

import Foundation

struct DrinksWrapper: Codable {
    let drinks: [Cocktail]
}

struct Cocktail: Codable{
    let strDrink: String // cocktail name
    let strDrinkThumb: String // cocktail image
}
