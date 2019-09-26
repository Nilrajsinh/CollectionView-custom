//
//  ViewController.swift
//  CustomCellMain
//
//  Created by Nilrajsinh Vaghela on 26/09/19.
//  Copyright © 2019 Cyphers. All rights reserved.
//

import UIKit

class ViewController: UIViewController ,UICollectionViewDataSource ,UICollectionViewDelegate {
    
    let product = [
        ["Image":#imageLiteral(resourceName: "Image1") , "Price":"10,000", "OfferPrice":"5,000"],
        ["Image":#imageLiteral(resourceName: "Image2") , "Price":"15,000", "OfferPrice":"7,000"],
        ["Image":#imageLiteral(resourceName: "Image4") , "Price":"16,000", "OfferPrice":"8,000"]
    
    ]
    
    
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return product.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "MyCell", for: indexPath) as! ProductCollectionViewCell
        cell.ImgView.image = product[indexPath.item]["Image"] as! UIImage
        cell.Price.text = product[indexPath.item]["Price"] as! String
        cell.OfferPrice.text = product[indexPath.item]["OfferPrice"] as! String
        
        return cell
    
        
        
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

