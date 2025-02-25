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
    
    
    @IBOutlet weak var gtemBalnvr: UIView!
    

    override var isSelected: Bool{
        didSet{
            gtemBalnvr.isHidden = true
            gtemBalnvr.layer.borderWidth = 0
            
            gtemBalnvr.layer.masksToBounds = true
            if isSelected {
                
                
                
                statiusButnGTEm.image = UIImage(named: "highy_back")
            }else{
                

                statiusButnGTEm.image = UIImage(named: "nohighy_back")
            }
        }
    }
}
