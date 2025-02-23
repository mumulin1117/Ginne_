//
//  GTEVideocerCell.swift
//  Gintuemojir
//
//  Created by Gintuemojir on 2025/1/22.
//

import UIKit


class GTEVideocerCell: UICollectionViewCell {
    
    
    
    
    

    @IBOutlet weak var playButtonGTEA: UIButton!
    
    @IBOutlet weak var diomonelog: UIImageView!
    
    @IBOutlet weak var subscribtionGTEU: UIButton!
    
    @IBOutlet weak var userGTEUAvator: UIImageView!
    
    
    @IBOutlet weak var userGTEUFolloweCount: UILabel!

    @IBOutlet weak var userGTEUName: UILabel!
    
    @IBOutlet weak var thunmbImageGTEA: UIImageView!
    
    @IBOutlet weak var videoTitleGTEM: UILabel!
    
    @IBOutlet weak var enterUserGTEM: UIButton!
    
    @IBOutlet weak var attitudeButtonGTEM: UIButton!
    
    
    @IBOutlet weak var commentButGTEm: UIButton!
   
    override func awakeFromNib() {
        super.awakeFromNib()
        userGTEUAvator.layer.cornerRadius = 25
        
        
        

        userGTEUAvator.layer.masksToBounds = true
   
    }


}
