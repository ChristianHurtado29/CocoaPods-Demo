//
//  CocktailView.swift
//  CocoaPods-Demo
//
//  Created by Christian Hurtado on 2/27/20.
//  Copyright © 2020 Christian Hurtado. All rights reserved.
//

import UIKit
import SnapKit

class CocktailView: UIView {

    public lazy var cocktailNameLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.preferredFont(forTextStyle: .largeTitle)
        label.numberOfLines = 2
        label.text = "Cocktail name here"
        return label
    }()
    
    public lazy var cocktailImage: UIImageView = {
        let image = UIImageView()
        image.contentMode = .scaleAspectFit
        image.image = UIImage(named: "people.fill")
        return image
    }()
 
    override init(frame: CGRect) {
        super.init(frame: UIScreen.main.bounds)
        commonInit()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        commonInit()
    }
    
    
    
    private func commonInit(){
        
    }

}
