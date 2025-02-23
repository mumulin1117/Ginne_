//
//  GTEMWoderMoJito.swift
//  Gintuemojir
//
//  Created by Gintuemojir on 2025/1/17.
//

import UIKit

class GTEMWoderMoJito: UIViewController {

    
    @IBOutlet weak var gtemMinHeader: UIImageView!
    
    
    
    
    @IBOutlet weak var gtemMinnamer: UILabel!
    
   
    @IBOutlet weak var profileFollowGTEm: UILabel!
    
   
    @IBOutlet weak var profileFancGTEm: UILabel!
    
    
    
    @IBAction func qiaoqiaoWallentGTEm(_ sender: UIButton) {
        
        
        
        
        if sender.tag == 300 {
           
            self.navigationController?.pushViewController(GTEMblancelMojito.init(), animated: true)
        }
        
       
        if sender.tag == 400 {
            
            self.navigationController?.pushViewController(GTESetingMojito.init(), animated: true)
        }
        

        if sender.tag == 500 {
            
            self.navigationController?.pushViewController(GTEMHEditMojito.init(), animated: true)
        }
        
    }
    
  
  
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        gtemMinHeader.layer.cornerRadius = 40
       

        gtemMinHeader.layer.masksToBounds = true
        

    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        
        
       
        
        
         

        let firstOhoto = GTEMCombingUser.lovderGTEm.personMehEagerGTEm.first
        
        

        gtemMinHeader.image = firstOhoto
        
        var minUserGTEM = GTEMCombingUser.lovderGTEm.personMeGTEm[0]
        
        


       
        gtemMinnamer.text = minUserGTEM["teachername"]
        

        
        

        
        

      
        profileFollowGTEm.text = "0"//(GTEMCombingUser.lovderGTEm.fhhowerAllGTEm.2.count)"
        
        
        profileFancGTEm.text = "0"//"\(GTEMCombingUser.lovderGTEm.fnnceAllGTEm.2.count)"
    }
}
