//
//  GTEMblancelCell.swift
//  Gintuemojir
//
//  Created by Gintuemojir on 2025/2/6.
//

import UIKit

class GTEMblancelCell: UICollectionViewCell {

    @IBOutlet weak var statiusButnGTEm: UIImageView!
    private var _fermentationTimerGTEM: Timer?
   
    
    @IBOutlet weak var allcountGTEM: UILabel!
    private var _agitatorValuesGTEM: [CGFloat] = [12.5, 9.8, 15.3]
    private var _muddleToolGTEM: CGFloat = 0.87
   
    @IBOutlet weak var allDollersGTEm: UILabel!
    private var _BingToolGTEM: (CGFloat,Bool?) = (1.87,false)
    private var _zhunreaToolGTEM: CGFloat = 2.87
  

    override var isSelected: Bool{
        didSet{
            if isSelected {
                _agitatorValuesGTEM.append(_BingToolGTEM.0)
                _agitatorValuesGTEM.append(_muddleToolGTEM)
                _agitatorValuesGTEM.append(_zhunreaToolGTEM)
                statiusButnGTEm.image = UIImage(named: "highy_back")
            }else{
                _muddleToolGTEM += 0.87

                statiusButnGTEm.image = UIImage(named: "nohighy_back")
            }
        }
    }
}
