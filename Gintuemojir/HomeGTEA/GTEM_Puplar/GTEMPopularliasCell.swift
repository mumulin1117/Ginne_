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
        let alpgocoloe = UIColor.init(white: 0.99, alpha: 0.999)
        let pinghio = UIColor.red
        var colfulLisftGTEM = Array<UIColor>.init()

        colfulLisftGTEM.append(alpgocoloe)
        colfulLisftGTEM.append(pinghio)

        if colfulLisftGTEM.last == .blue{
            return //恒为假
        }

        acholeGTEHimg.layer.maskedCorners  =  [.layerMinXMinYCorner,.layerMaxXMaxYCorner]
    }

}
