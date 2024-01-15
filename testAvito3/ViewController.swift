//
//  ViewController.swift
//  testAvito3
//
//  Created by Андреев Николай on 30.08.2023.
//

import UIKit




class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    var collectionView: UICollectionView?
    var goodsList = [Advertisement]()
    var goodsListID: GoodsDataLS?
    var urlId = "https://www.avito.st/s/interns-ios/details/.json"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Avito)"
        fetchData()}
    func viewLoadMore(){
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .vertical
        let width = (view.frame.width - 3*16)/2 // размер ячейки
        layout.itemSize = CGSize(width: width, height: width)
        
        collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        guard let collectionView = collectionView else {
            return
        }
        collectionView.register(CustomCollectionViewCell.self, forCellWithReuseIdentifier: CustomCollectionViewCell.identifier) // cellname
        collectionView.dataSource = self
        collectionView.delegate = self
        view.addSubview(collectionView)
        collectionView.frame = view.bounds
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return goodsList.count // Вставить массив.каунт кол-во ячеейк
    }
    
    func fetchDataId(){   //получаем дату джсон для второго экрана!!urlId
        let url = URL(string: self.urlId)
        let task = URLSession.shared.dataTask(with: url!, completionHandler: {
            (data, response, error) in
            guard let data = data, error == nil else{
                print("Error data acces")
                return
            }
            do{
                
                let goodsListID = try JSONDecoder().decode(GoodsDataLS.self, from: data)
                DispatchQueue.main.async {
                    self.goodsListID = goodsListID
                    self.cont()
                    print("aaa\(goodsListID)")
                    print("уууу\(goodsListID.title)")
                    
                }
            }
            catch{
                print("Error decoding! \(error)")
            }
            
        })
        task.resume()
        
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let itemId = goodsList[indexPath.row].id
        urlId = "https://www.avito.st/s/interns-ios/details/\(itemId).json"
        fetchDataId()
    }
    func cont(){
        let destination = LastViewController()
        navigationController?.pushViewController(destination, animated: true)
        destination.goodsImageView.downloadImg(from: goodsListID!.imageURL)
        destination.goodsTitleLabel.text = goodsListID?.title
        destination.goodsPriceLabel.text = goodsListID?.price
        destination.goodsLocationLabel.text = goodsListID?.location
        destination.goodsDescriptionLabel.text = goodsListID?.description
        destination.goodsMailLabel.text = goodsListID?.email
        destination.goodsDateLabel.text = goodsListID?.createdDate
        destination.goodsNumberLabel.text = goodsListID?.phoneNumber
        destination.goodsAdressLabel.text = goodsListID?.address
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 16, left: 16, bottom: 16, right: 16) //отступы
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CustomCollectionViewCell.identifier, for: indexPath) as! CustomCollectionViewCell
        
        
        cell.goodsImageView.downloadImg(from:  goodsList[indexPath.row].imageURL)
        cell.goodsImageView.layer.cornerRadius = 5
        cell.goodsTitleLabel.text = goodsList[indexPath.row].title
        cell.goodsPriceLabel.text = goodsList[indexPath.row].price
        cell.goodsDateLabel.text = goodsList[indexPath.row].createdDate
        cell.goodsLocationLabel.text = goodsList[indexPath.row].location
        cell.goodsIdLabel.text = goodsList[indexPath.row].id
        return cell
    }
    
    
    
    func fetchData(){   //получаем дату джсон
        let url = URL(string: "https://www.avito.st/s/interns-ios/main-page.json")
        let task = URLSession.shared.dataTask(with: url!,  completionHandler: {
            (data, response, error) in
            guard let data = data, error == nil else{
                print("Error data acces")
                return
            }
            do{
                let jsonData = try JSONDecoder().decode(GoodsData.self, from: data)
                self.goodsList = jsonData.advertisements
                DispatchQueue.main.async {
                    self.viewLoadMore()
                }
            }
            catch{
                print("Error decoding! \(error)")
            }
        })
        task.resume()
    }
    
    
    

}
extension UIImageView{
    func downloadImg(from url:String){
        contentMode = .scaleToFill
        self.image = UIImage(systemName:"arrow.down.circle.dotted")
        let ur=URL(string: url)
        if let ur=ur{
            let dataTask = URLSession.shared.dataTask(with: ur, completionHandler: {
                (data, response, error) in
                guard let URLResponse = response as? HTTPURLResponse, URLResponse.statusCode == 200,
                      let mimeType = response?.mimeType, mimeType.hasPrefix("image"),
                      let data = data, error == nil,
                      let image = UIImage(data: data)
                else{
                    self.image = UIImage(systemName:"arrow.down.circle.dotted")
                    return
                }
                DispatchQueue.main.async {
                    self.image = image
                }
                
            })
            dataTask.resume()
        }else{
            self.image = UIImage(systemName:"arrow.down.circle.dotted")
            return
        }
    }
}
