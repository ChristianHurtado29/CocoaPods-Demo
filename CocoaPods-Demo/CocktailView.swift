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
        label.font = UIFont(name: "Helvetica", size: 40)
        label.numberOfLines = 2
        label.text = "Cocktail name here"
        label.textAlignment = .center
        return label
    }()
    
    public lazy var cocktailImage: UIImageView = {
        let image = UIImageView()
        image.contentMode = .scaleAspectFit
        image.image = UIImage(named: "mic")
        return image
    }()
    
    public lazy var strIngridient: UILabel = {
        let label = UILabel()
        label.font = UIFont(name: "Helvetica", size: 20)
        label.numberOfLines = 0
        label.text = "ingredients start here"
        return label
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
        setupCocktailImageConstraints()
        setupLabel()
        setupIngredients()
    }
    
    private func setupCocktailImageConstraints() {
        addSubview(cocktailImage)
        cocktailImage.snp.makeConstraints { (make) in
            make.top.leading.bottom.trailing.equalToSuperview()
            
        }
    }
    
    private func setupLabel(){
        addSubview(cocktailNameLabel)
        cocktailNameLabel.snp.makeConstraints { (make) in
            make.top.equalToSuperview().inset(200)
        }
    }
    
    private func setupIngredients(){
        addSubview(strIngridient)
        strIngridient.snp.makeConstraints { (make) in
            make.top.equalTo(cocktailNameLabel).inset(460)
        }
    }

}
