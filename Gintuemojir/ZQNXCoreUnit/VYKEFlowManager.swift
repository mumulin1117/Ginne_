//
//  VYKEFlowManager.swift
//  Gintuemojir
//
//  Created by Gintuemojir on 2025/1/17.
//

import UIKit

class VYKEFlowManager: UIViewController {

    
    @IBOutlet weak var gtemadafder: UIImageView!
    
    
    @IBOutlet weak var gtemMinnamer: UILabel!
    
    @IBOutlet weak var profileFollowGTEm: UILabel!
    
    @IBOutlet weak var profileFancGTEm: UILabel!
    
    
    @IBAction func qiaoqiaoWallentGTEm(_ sender: UIButton) {
        if sender.tag == 300 {
            self.navigationController?.pushViewController(Z5W8BalanceCore.init(), animated: true)
        }
        
        if sender.tag == 400 {
            self.navigationController?.pushViewController(QWLOptionHandler.init(), animated: true)
        }
        
        if sender.tag == 500 {
            self.navigationController?.pushViewController(BVXUEditHandler.init(), animated: true)
        }
        
    }
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        gtemadafder.layer.cornerRadius = 40
        gtemadafder.layer.masksToBounds = true
        

    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        gtemadafder.image = XQZPDataNode.W7N4FavorData.W9Z7UserIntentData
        
        gtemMinnamer.text = XQZPDataNode.W7N4FavorData.V6K3UserProfile["teachername"]
        
        
        profileFollowGTEm.text = "\(XQZPDataNode.W7N4FavorData.B3J7CompleteData.count)"
        
        profileFancGTEm.text = "\(XQZPDataNode.W7N4FavorData.H5K3FullRange.count)"
    }
}
