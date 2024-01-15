//
//  lastViewController.swift
//  testAvito3
//
//  Created by Андреев Николай on 31.08.2023.
//

import Foundation
import UIKit

class LastViewController : UIViewController {
    let goodsTitleLabel = UILabel(frame:.zero)
    let goodsPriceLabel = UILabel(frame: .zero)
    let goodsLocationLabel = UILabel(frame: .zero)
    let goodsDateLabel = UILabel(frame: .zero)
    let goodsDescriptionLabel = UILabel(frame: .zero)
    let goodsMailLabel = UILabel(frame: .zero)
    let goodsNumberLabel = UILabel(frame: .zero)
    let goodsAdressLabel = UILabel(frame: .zero)
    let goodsImageView = UIImageView(frame:.zero);
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
    }
    
    
    
    private func setupViews() {
        view.backgroundColor = .systemBackground
        goodsImageView.image = UIImage(systemName:"arrow.down.circle.dotted")
        goodsImageView.contentMode = .scaleAspectFit
        let borderWidth = CGFloat(5)
        let standartWidth = view.frame.size.width - 2*borderWidth
        
        if let nc = self.navigationController {
            goodsImageView.frame = CGRect(x: borderWidth, y: nc.navigationBar.frame.maxY + borderWidth, width: standartWidth, height: standartWidth)
        }else{
            
            goodsImageView.frame = CGRect(x: borderWidth, y: borderWidth, width: standartWidth, height: standartWidth)
        }
        
        //title
        
        goodsTitleLabel.textAlignment = .left
        goodsTitleLabel.font = UIFont.systemFont(ofSize: 15)
        goodsTitleLabel.frame = CGRect(x: borderWidth, y: goodsImageView.frame.maxY + borderWidth, width: standartWidth, height: 20)
        //price
        goodsPriceLabel.textAlignment = .left
        
        goodsPriceLabel.font = UIFont.boldSystemFont(ofSize: 16)
        goodsPriceLabel.frame = CGRect(x: borderWidth, y: goodsTitleLabel.frame.maxY + borderWidth, width: standartWidth, height: 20)
        
         //location
        goodsLocationLabel.textAlignment = .left
        
        goodsLocationLabel.font = UIFont.systemFont(ofSize: 14)
        goodsLocationLabel.frame = CGRect(x: borderWidth, y: goodsPriceLabel.frame.maxY + borderWidth, width: standartWidth, height: 20)
         //created_date
        goodsDateLabel.textAlignment = .left
        goodsDateLabel.font = UIFont.systemFont(ofSize: 14)
        goodsDateLabel.frame = CGRect(x: borderWidth, y: goodsLocationLabel.frame.maxY + borderWidth, width: standartWidth, height: 20)

        
         //description
        goodsDescriptionLabel.textAlignment = .left
        goodsDescriptionLabel.font = UIFont.systemFont(ofSize: 15)
        goodsDescriptionLabel.numberOfLines = 0
        goodsDescriptionLabel.lineBreakMode = .byWordWrapping
        goodsDescriptionLabel.frame = CGRect(x: borderWidth, y: goodsDateLabel.frame.maxY + borderWidth, width: standartWidth, height: 60)
        
         //email
        goodsMailLabel.textAlignment = .left
        goodsMailLabel.font = UIFont.systemFont(ofSize: 14)
        goodsMailLabel.frame = CGRect(x: borderWidth, y: goodsDescriptionLabel.frame.maxY + borderWidth, width: standartWidth, height: 20)

        
         //phone_number
        goodsNumberLabel.textAlignment = .left
        goodsNumberLabel.font = UIFont.boldSystemFont(ofSize: 15)
        goodsNumberLabel.frame = CGRect(x: borderWidth, y: goodsMailLabel.frame.maxY + borderWidth, width: standartWidth, height: 20)

         //address
        goodsAdressLabel.textAlignment = .left
        goodsAdressLabel.font = UIFont.systemFont(ofSize: 14)
        goodsAdressLabel.frame = CGRect(x: borderWidth, y: goodsNumberLabel.frame.maxY + borderWidth, width: standartWidth, height: 20)

        
        
        self.view.addSubview(goodsImageView)
        self.view.addSubview(goodsTitleLabel)
        self.view.addSubview(goodsPriceLabel)
        self.view.addSubview(goodsLocationLabel)
        self.view.addSubview(goodsDateLabel)
        self.view.addSubview(goodsDateLabel)
        self.view.addSubview(goodsDescriptionLabel)
        self.view.addSubview(goodsMailLabel)
        self.view.addSubview(goodsNumberLabel)
        self.view.addSubview(goodsAdressLabel)
    }
}


   

    
    
    
    
    
    
    
    
    
    
    
    
    
    
