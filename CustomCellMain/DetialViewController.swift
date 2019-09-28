//
//  DetialViewController.swift
//  CustomCellMain
//
//  Created by Nilrajsinh Vaghela on 27/09/19.
//  Copyright © 2019 Cyphers. All rights reserved.
//

import UIKit

class DetialViewController: UIViewController {

    
    
    @IBOutlet weak var ImgDetail: UIImageView!
    @IBOutlet weak var PriceLbl: UILabel!
    
    @IBOutlet weak var DTitle: UILabel!
    @IBOutlet weak var Offerpricelbl: UILabel!
    
    var dimg = UIImage()
    var price1 = ""
    var OfferPrice = ""
    var DT = ""
        
    override func viewDidLoad() {
        super.viewDidLoad()

        ImgDetail.image = dimg
        PriceLbl.text = price1
        Offerpricelbl.text = OfferPrice
        DTitle.text = DT
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
