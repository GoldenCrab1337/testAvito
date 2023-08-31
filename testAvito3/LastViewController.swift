//
//  lastViewController.swift
//  testAvito3
//
//  Created by Андреев Николай on 31.08.2023.
//

import Foundation
import UIKit

class LastViewController : UIViewController {
    let goodsTitleLabel = UILabel(frame: CGRect(x: 0, y: 350, width: 400, height: 20))
    let goodsPriceLabel = UILabel(frame: CGRect(x: 0, y: 370, width: 200, height: 21))
    let goodsLocationLabel = UILabel(frame: CGRect(x: 0, y: 390, width: 200, height: 21))
    let goodsDateLabel = UILabel(frame: CGRect(x: 0, y: 410, width: 200, height: 21))
    let goodsDescriptionLabel = UILabel(frame: CGRect(x: 0, y: 430, width: 300, height: 30))
    let goodsMailLabel = UILabel(frame: CGRect(x: 0, y: 460, width: 300, height: 21))
    let goodsNumberLabel = UILabel(frame: CGRect(x: 0, y: 480, width: 200, height: 21))
    let goodsAdressLabel = UILabel(frame: CGRect(x: 0, y: 500, width: 200, height: 21))
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
    }
    
    
    
    private func setupViews() {
        view.backgroundColor = .systemBackground
        
        var goodsImageView : UIImageView
        goodsImageView  = UIImageView(frame:CGRectMake(0, 50, 300, 300));
        goodsImageView.image = UIImage(systemName:"house")
        
        
        //title
        goodsTitleLabel.textAlignment = .left
        goodsTitleLabel.font = UIFont.systemFont(ofSize: 15)
        //price
        goodsPriceLabel.textAlignment = .left
        
        goodsPriceLabel.font = UIFont.boldSystemFont(ofSize: 16)
        
         //location
        goodsLocationLabel.textAlignment = .left
        
        goodsLocationLabel.font = UIFont.systemFont(ofSize: 14)
        
         //created_date
        goodsDateLabel.textAlignment = .left
        goodsDateLabel.text = "sdad"
        goodsDateLabel.font = UIFont.systemFont(ofSize: 14)
        
         //description
        goodsDescriptionLabel.textAlignment = .center
        goodsDescriptionLabel.font = UIFont.systemFont(ofSize: 15)
        goodsDescriptionLabel.numberOfLines = 0
        goodsDescriptionLabel.lineBreakMode = .byWordWrapping
      
        
         //email
        goodsMailLabel.textAlignment = .left
        
        goodsMailLabel.font = UIFont.systemFont(ofSize: 14)
        
         //phone_number
        goodsNumberLabel.textAlignment = .left
        
        goodsNumberLabel.font = UIFont.boldSystemFont(ofSize: 15)
        
         //address
        goodsAdressLabel.textAlignment = .left
        
        goodsAdressLabel.font = UIFont.systemFont(ofSize: 14)
        
        
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


   

    
    
    
    
    
    
    
    
    
    
    
    
    
    
