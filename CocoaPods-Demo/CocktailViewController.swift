//
//  ViewController.swift
//  CocoaPods-Demo
//
//  Created by Christian Hurtado on 2/27/20.
//  Copyright © 2020 Christian Hurtado. All rights reserved.
//

import UIKit
import Kingfisher

class CocktailViewController: UIViewController {
    
    private let cocktailView = CocktailView()
    
    override func loadView() {
        view = cocktailView
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        fetchCocktail()
    }
    
    private func fetchCocktail() {
        APIClient.fetchCocktail { (result) in
            switch result {
            case .failure(let error):
                print("oops no cocktail for you \(error)")
            case .success(let cocktail):
                DispatchQueue.main.async {
                    self.updateUI(cocktail)

                }
            }
            
        }
    }
    private func updateUI(_ cocktail: Cocktail) {
        guard let imageURL = URL(string: cocktail.strDrinkThumb) else {
            return
        }
        cocktailView.cocktailImage.kf.setImage(with: imageURL)
        cocktailView.cocktailNameLabel.text = cocktail.strDrink
        cocktailView.strIngridient.text = "\(cocktail.strIngredient1 ?? "")\n\(cocktail.strIngredient2 ?? "")\n\(cocktail.strIngredient3 ?? "")\n\(cocktail.strIngredient4 ?? "")\n\(cocktail.strIngredient5 ?? "")\n\(cocktail.strIngredient6 ?? "")\n\(cocktail.strIngredient7 ?? "")\n\(cocktail.strIngredient8 ?? "")"
    }


}

