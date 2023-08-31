//
//  CustomCollectionViewCell.swift
//  testAvito3
//
//  Created by Андреев Николай on 31.08.2023.
//

import UIKit

class CustomCollectionViewCell: UICollectionViewCell {
    
    static let identifier = "CustomCollectionViewCell"
    
    let goodsImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage()
        imageView.contentMode = .scaleAspectFit
        imageView.clipsToBounds = true
        return imageView
    }()
    let goodsTitleLabel: UILabel = {
        let label = UILabel()
        label.text = "тут будет имя товара"
        label.textAlignment = .left
        label.font = UIFont.systemFont(ofSize: 15)
        return label
    }()
    let goodsPriceLabel: UILabel = {
        let label2 = UILabel()
        label2.text = "200.500р"
        label2.textAlignment = .left
        label2.font = UIFont.boldSystemFont(ofSize: 16)
        return label2
    }()
    let goodsLocationLabel: UILabel = {
        let label3 = UILabel()
        label3.text = "Москва"
        label3.textAlignment = .left
        label3.font = UIFont.systemFont(ofSize: 14)
        return label3
    }()
    let goodsDateLabel: UILabel = {
        let label4 = UILabel()
        label4.text = "2023-08-16"
        label4.textAlignment = .left
        label4.font = UIFont.systemFont(ofSize: 12)
        return label4
    }()
    let goodsIdLabel: UILabel = {
        let label5 = UILabel()
        label5.text = "id"
        label5.textAlignment = .right
        label5.font = UIFont.boldSystemFont(ofSize: 5)
        return label5
    }()
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        contentView.clipsToBounds = true
        contentView.backgroundColor = .systemBackground
        contentView.addSubview(goodsImageView)
        contentView.addSubview(goodsTitleLabel)
        contentView.addSubview(goodsPriceLabel)
        contentView.addSubview(goodsLocationLabel)
        contentView.addSubview(goodsDateLabel)
        contentView.addSubview(goodsIdLabel)
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder: ) has not been implemented")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        goodsImageView.frame = CGRect(x: 5, y: 1, width: contentView.frame.size.width-10, height: contentView.frame.size.height-70)
        goodsTitleLabel.frame = CGRect(x:1, y: contentView.frame.size.height-85, width: contentView.frame.size.width-10, height: 50)
        goodsPriceLabel.frame = CGRect(x:1, y: contentView.frame.size.height-70, width: contentView.frame.size.width-10, height: 50)
        goodsLocationLabel.frame = CGRect(x:1, y: contentView.frame.size.height-55, width: contentView.frame.size.width-10, height: 50)
        goodsDateLabel.frame = CGRect(x:1, y: contentView.frame.size.height-40, width: contentView.frame.size.width-10, height: 50)
        goodsIdLabel.frame = CGRect(x:1, y: contentView.frame.size.height-30, width: contentView.frame.size.width-10, height: 50)
        
        
    }
    override func prepareForReuse() {
        self.goodsImageView.image = nil
    }
}
