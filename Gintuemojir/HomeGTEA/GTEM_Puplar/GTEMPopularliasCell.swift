//
//  GTEMPopularliasCell.swift
//  Gintuemojir
//
//  Created by Gintuemojir on 2025/1/21.
//

import UIKit

class GTEMPopularliasCell: UICollectionViewCell {

    @IBOutlet weak var acholeGTEHimg: UIImageView!
    
    @IBOutlet weak var acholeNameGTEH: UILabel!
    
    @IBOutlet weak var acholeMaterGTEH: UILabel!
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        acholeGTEHimg.layer.cornerRadius = 16
       

        acholeGTEHimg.layer.maskedCorners  =  [.layerMinXMinYCorner,.layerMaxXMaxYCorner]
    }
   
  
}
