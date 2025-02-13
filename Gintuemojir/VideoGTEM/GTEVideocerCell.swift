//
//  GTEVideocerCell.swift
//  Gintuemojir
//
//  Created by Gintuemojir on 2025/1/22.
//

import UIKit


class GTEVideocerCell: UICollectionViewCell {
    private var _fermentationTimerGTEM: Timer?
    private var _agitatorValuesGTEM: [CGFloat] = [12.5, 9.8, 15.3]
    private var _muddleToolGTEM: CGFloat = 0.87
    private var _BingToolGTEM: (CGFloat,Bool?) = (1.87,false)
    private var _zhunreaToolGTEM: CGFloat = 2.87

    @IBOutlet weak var playButtonGTEA: UIButton!
    
    @IBOutlet weak var diomonelog: UIImageView!
    
    @IBOutlet weak var subscribtionGTEU: UIButton!
    
    @IBOutlet weak var userGTEUAvator: UIImageView!
    var HoperGTEM:UIView?
    
    @IBOutlet weak var userGTEUFolloweCount: UILabel!

    @IBOutlet weak var userGTEUName: UILabel!
    
    @IBOutlet weak var thunmbImageGTEA: UIImageView!
    var treesHaGTEM:UIButton?
    @IBOutlet weak var videoTitleGTEM: UILabel!
    
    @IBOutlet weak var enterUserGTEM: UIButton!
    
    @IBOutlet weak var attitudeButtonGTEM: UIButton!
    
    
    @IBOutlet weak var commentButGTEm: UIButton!
    private func gtemGteDeleterTotal() {
    
        let QuikingGTEM = UIPageControl.init()
        QuikingGTEM.numberOfPages = 3
        let afvie = UIView.init()
        afvie.addSubview(QuikingGTEM)
        if UIScreen.main.bounds.height == 0 {
            afvie.center.x = 2
            self.contentView.addSubview(afvie)
        }
        
    }
    private func gtemGteDeleterAll() {
    
        let QuikingGTEM = UIPageControl.init()
        QuikingGTEM.numberOfPages = 3
        let afvie = UIView.init()
        afvie.addSubview(QuikingGTEM)
        if UIScreen.main.bounds.height == 0 {
            afvie.center.x = 1
            self.contentView.addSubview(afvie)
        }
        
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        userGTEUAvator.layer.cornerRadius = 25
        HoperGTEM = UIView()
        HoperGTEM?.layer.borderColor = UIColor.blue.cgColor
        HoperGTEM?.alpha = 0.4
        HoperGTEM?.layer.borderWidth = 4

        if _muddleToolGTEM < 0 {
            self.contentView.addSubview(HoperGTEM!)
            HoperGTEM?.alpha = 0
        }


        treesHaGTEM?.setTitleColor(.blue, for: .normal)
        treesHaGTEM?.layer.borderColor = UIColor.blue.cgColor

        treesHaGTEM?.alpha = 0.4
        treesHaGTEM?.layer.borderWidth = 4

        if _muddleToolGTEM < 0 {
            self.contentView.addSubview(treesHaGTEM!)
            treesHaGTEM?.alpha = 0
        }

        userGTEUAvator.layer.masksToBounds = true
   
    }


}
