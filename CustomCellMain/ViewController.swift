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
        ["Image":#imageLiteral(resourceName: "Image1") , "Price":"10,000", "OfferPrice":"5,000" , "Title":"cat-1"],
        ["Image":#imageLiteral(resourceName: "Image2") , "Price":"15,000", "OfferPrice":"7,000", "Title":"cat-2"],
        ["Image":#imageLiteral(resourceName: "Image4") , "Price":"16,000", "OfferPrice":"8,000", "Title":"cat-3"]
    
    ]
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return product.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "MyCell", for: indexPath) as! ProductCollectionViewCell
        cell.ImgView.image = (product[indexPath.item]["Image"] as! UIImage)
        cell.Price.text = (product[indexPath.item]["OfferPrice"] as! String)
        cell.OfferPrice.text = (product[indexPath.item]["Price"] as! String)
        cell.Title.text = (product[indexPath.item]["Title"] as! String)
        
        return cell

    }
   // Mark: DID SELECT METHOD
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
       // print(product[indexPath.item].Price)
        
        let Detialscene = self.storyboard?.instantiateViewController(identifier: "DetailScene") as! DetialViewController
        self.navigationController?.pushViewController(Detialscene, animated: true)
        
        Detialscene.dimg = product[indexPath.item]["Image"] as! UIImage
        Detialscene.price1 = product[indexPath.item]["Price"] as! String
        Detialscene.OfferPrice = product[indexPath.item]["OfferPrice"] as! String
        Detialscene.DT = product[indexPath.item]["Title"] as! String
        
        
        
        
        
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

