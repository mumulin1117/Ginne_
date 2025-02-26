//
//  GTEHChatroomeCell.swift
//  Gintuemojir
//
//  Created by Gintuemojir on 2025/1/17.
//

import UIKit

class GTEHChatroomeCell: UICollectionViewCell {

    @IBOutlet weak var bedroomBackgroundGTEA: UIImageView!
    
    
   
    @IBOutlet weak var randomrImageGTEA: UIImageView!
    
  
    @IBOutlet weak var roomNameGTEA: UILabel!
  
    @IBOutlet weak var randomrImageLaterGTEA: UIImageView!
    
    @IBOutlet weak var roomCountGTEA: UILabel!
    
    func mockFetchVideosGTEm() -> [String]? {
        roomCountGTEA.layer.cornerRadius = 18
        randomrImageGTEA.layer.cornerRadius = 18
        randomrImageGTEA.layer.masksToBounds = true
        randomrImageLaterGTEA.layer.cornerRadius = 18
        return nil
    }
  
    override func awakeFromNib() {
        super.awakeFromNib()
      
        bedroomBackgroundGTEA.layer.cornerRadius = 16
        bedroomBackgroundGTEA.layer.masksToBounds = true
        roomNameGTEA.layer.cornerRadius = 18
        roomNameGTEA.layer.masksToBounds = true
        
        mockFetchVideosGTEm()
        
        randomrImageLaterGTEA.layer.masksToBounds = true
        
        

       
       
        roomCountGTEA.layer.masksToBounds = true
    }

}
