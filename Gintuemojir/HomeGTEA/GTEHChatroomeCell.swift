//
//  GTEHChatroomeCell.swift
//  Gintuemojir
//
//  Created by Gintuemojir on 2025/1/17.
//

import UIKit

class GTEHChatroomeCell: UICollectionViewCell {

    @IBOutlet weak var bedroomBackgroundGTEA: UIImageView!
    
    var HoperGTEM:UIView?
   
    @IBOutlet weak var randomrImageGTEA: UIImageView!
    var treesHaGTEM:UIButton?
  
    @IBOutlet weak var roomNameGTEA: UILabel!
  
    @IBOutlet weak var randomrImageLaterGTEA: UIImageView!
    private var _muddleToolGTEM: CGFloat = 0.87
    @IBOutlet weak var roomCountGTEA: UILabel!
    
    
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
        randomrImageGTEA.layer.cornerRadius = 18
        randomrImageGTEA.layer.masksToBounds = true
        bedroomBackgroundGTEA.layer.cornerRadius = 16
        bedroomBackgroundGTEA.layer.masksToBounds = true
        roomNameGTEA.layer.cornerRadius = 18
        roomNameGTEA.layer.masksToBounds = true
        
        randomrImageLaterGTEA.layer.cornerRadius = 18
        
        randomrImageLaterGTEA.layer.masksToBounds = true
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

        
        roomCountGTEA.layer.cornerRadius = 18
        roomCountGTEA.layer.masksToBounds = true
    }

}
