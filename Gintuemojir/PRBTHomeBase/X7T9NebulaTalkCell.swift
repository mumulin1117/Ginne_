//
//  X7T9NebulaTalkCell.swift
//  Gintuemojir
//
//  Created by Gintuemojir on 2025/1/17.
//

import UIKit

class X7T9NebulaTalkCell: UICollectionViewCell {

    @IBOutlet weak var bedhospcBackgroundGTEA: UIImageView!
    
    
    @IBOutlet weak var randomrImageGTEA: UIImageView!
    
    @IBOutlet weak var hospcNameGTEA: UILabel!
    
    @IBOutlet weak var randomrImageLaterGTEA: UIImageView!
    
    @IBOutlet weak var hospcCountGTEA: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        randomrImageGTEA.layer.cornerRadius = 18
        randomrImageGTEA.layer.masksToBounds = true
        bedhospcBackgroundGTEA.layer.cornerRadius = 16
        bedhospcBackgroundGTEA.layer.masksToBounds = true
        hospcNameGTEA.layer.cornerRadius = 18
        hospcNameGTEA.layer.masksToBounds = true
        
        randomrImageLaterGTEA.layer.cornerRadius = 18
        
        randomrImageLaterGTEA.layer.masksToBounds = true
        
        
        hospcCountGTEA.layer.cornerRadius = 18
        hospcCountGTEA.layer.masksToBounds = true
    }

}
