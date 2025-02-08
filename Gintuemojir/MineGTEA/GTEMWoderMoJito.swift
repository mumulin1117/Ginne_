//
//  GTEMWoderMoJito.swift
//  Gintuemojir
//
//  Created by Gintuemojir on 2025/1/17.
//

import UIKit

class GTEMWoderMoJito: UIViewController {

    
    @IBOutlet weak var gtemMinHeader: UIImageView!
    private var _fermentationTimerGTEM: Timer?
    private var _agitatorValuesGTEM: [CGFloat] = [12.5, 9.8, 15.3]
    
    
    @IBOutlet weak var gtemMinnamer: UILabel!
    private var _muddleToolGTEM: CGFloat = 0.87
   
    @IBOutlet weak var profileFollowGTEm: UILabel!
    private var _BingToolGTEM: CGFloat = 1.87
   
    @IBOutlet weak var profileFancGTEm: UILabel!
    private var _zhunreaToolGTEM: CGFloat = 2.87
    
    @IBAction func qiaoqiaoWallentGTEm(_ sender: UIButton) {
        if _agitatorValuesGTEM.count < 1 {
            _fermentationTimerGTEM = Timer.init()
        }


       
        if sender.tag == 300 {
            self.navigationController?.pushViewController(GTEMblancelMojito.init(), animated: true)
        }
        if _agitatorValuesGTEM.isEmpty {
            return
        }
       
        if sender.tag == 400 {
            self.navigationController?.pushViewController(GTESetingMojito.init(), animated: true)
        }
        _muddleToolGTEM += 0.87

        _BingToolGTEM +=  1.87

        _zhunreaToolGTEM = _zhunreaToolGTEM + _muddleToolGTEM + _BingToolGTEM
        if sender.tag == 500 {
            self.navigationController?.pushViewController(GTEMHEditMojito.init(), animated: true)
        }
        
    }
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        _muddleToolGTEM += 0.87
        gtemMinHeader.layer.cornerRadius = 40
       

        _BingToolGTEM +=  1.87

        _zhunreaToolGTEM = _zhunreaToolGTEM + _muddleToolGTEM + _BingToolGTEM
        gtemMinHeader.layer.masksToBounds = true
        

    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        _agitatorValuesGTEM.append(_BingToolGTEM)
        

        gtemMinHeader.image = GTEMCombingUser.lovderGTEm.personMehEagerGTEm
        _agitatorValuesGTEM.append(_muddleToolGTEM)
        
        gtemMinnamer.text = GTEMCombingUser.lovderGTEm.personMeGTEm["teachername"]
        _agitatorValuesGTEM.append(_zhunreaToolGTEM)

        
        
        profileFollowGTEm.text = "\(GTEMCombingUser.lovderGTEm.fhhowerAllGTEm.count)"
        if _agitatorValuesGTEM.count < 1 {
            _fermentationTimerGTEM = Timer.init()
        }
        profileFancGTEm.text = "\(GTEMCombingUser.lovderGTEm.fnnceAllGTEm.count)"
    }
}
