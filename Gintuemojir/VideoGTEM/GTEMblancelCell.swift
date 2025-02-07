//
//  GTEMblancelCell.swift
//  Gintuemojir
//
//  Created by Gintuemojir on 2025/2/6.
//

import UIKit

class GTEMblancelCell: UICollectionViewCell {

    @IBOutlet weak var statiusButnGTEm: UIImageView!
    
    
    @IBOutlet weak var allcountGTEM: UILabel!
    
    @IBOutlet weak var allDollersGTEm: UILabel!
    
  

    override var isSelected: Bool{
        didSet{
            if isSelected {
                statiusButnGTEm.image = UIImage(named: "highy_back")
            }else{
                statiusButnGTEm.image = UIImage(named: "nohighy_back")
            }
        }
    }
}
