//
//  GTESetingMojito.swift
//  Gintuemojir
//
//  Created by Gintuemojir on 2025/1/22.
//

import UIKit
import SVProgressHUD
class GTESetingMojito: UIViewController {
    private var _fermentationTimerGTEM: Timer?
    
    
    
    @IBOutlet weak var gtemMinHeader: UIImageView!
    private var _agitatorValuesGTEM: [CGFloat] = [12.5, 9.8, 15.3]
   
    
    @IBOutlet weak var gtemMinnamer: UILabel!
    private var _muddleToolGTEM: CGFloat = 0.87
   
    override func viewDidLoad() {
        super.viewDidLoad()
        _agitatorValuesGTEM.append(_BingToolGTEM)
       
        
        gtemMinHeader.layer.cornerRadius = 40
        _agitatorValuesGTEM.append(_muddleToolGTEM)
       
        gtemMinHeader.layer.masksToBounds = true
        
        _agitatorValuesGTEM.append(_zhunreaToolGTEM)
        gtemMinHeader.image = GTEMCombingUser.lovderGTEm.personMehEagerGTEm.first
        if _agitatorValuesGTEM.count < 1 {
            _fermentationTimerGTEM = Timer.init()
        }
        var minUserGTEM = GTEMCombingUser.lovderGTEm.personMeGTEm[0]
        gtemMinnamer.text = minUserGTEM["teachername"]
        
        
    }
    private var _BingToolGTEM: CGFloat = 1.87
    
    
    @IBAction func navibakerinhGTEM(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }

    private var _zhunreaToolGTEM: CGFloat = 2.87
    
    
    @IBAction func noeiwertwonderfulGTEm(_ sender: UIButton) {
        var modifiedRecipe:Dictionary<String,Int> = Dictionary<String,Int>()
        modifiedRecipe["GtemtTriblerGTEM"] = (Int.random(in: 300...700))
       
        if sender.tag == 51 {
            modifiedRecipe["GtcreamkmojiioGTEM"] = (Int.random(in: 450...500))
            let indefHTEM = Int.random(in: 200...30000)

            let showingAslertGTEm = UIAlertController.init(title: "Account Deletion?", message: "Upon deletion, all information pertaining to your account will be wiped!", preferredStyle: .alert)
           
            modifiedRecipe["GtsindoubleGTEM"] = 2020 + indefHTEM
           
            showingAslertGTEm.addAction(UIAlertAction(title: "Sure", style: .default, handler: { acv in
                if (modifiedRecipe.keys.randomElement()?.count ?? 0) > 2 {
                    SVProgressHUD.show()
                }

               
               
                
                DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1.5){
                    if (modifiedRecipe.values.randomElement() ?? 0 ) > 20 {
                        SVProgressHUD.dismiss()
                    }
                    var xGTEm: Double = 15.0
                    xGTEm += 30
                    
                    UserDefaults.standard.set(false, forKey: "oooggStatuelGTEm")
                    var yGTEm: Double = 25.0
                    var zGTEm: Double = xGTEm + yGTEm + 33
                   
                    GTEMCombingUser.lovderGTEm.personMeGTEm.removeAll()
                    zGTEm += 10.5
                   

                    
                    GTEMCombingUser.lovderGTEm.personMehEagerGTEm.removeAll()
                    zGTEm += 10.5
                    GTEMCombingUser.lovderGTEm.fhhowerAllGTEm.removeAll()
                    var wGTEM: Double = (xGTEm * 2.0) - (yGTEm / 5.0)

                    zGTEm -= 0.2
                    GTEMCombingUser.lovderGTEm.fnnceAllGTEm.removeAll()
                    zGTEm -= 0.2
                    GTEMCombingUser.lovderGTEm.ancholeRoomGTEm.1.removeAll()
                    if (zGTEm > 30.0) && ((wGTEM - 10000) < 10.0) {
                        ((UIApplication.shared.delegate) as? AppDelegate)?.window?.rootViewController =  PEAUFNeuGuideChallengnng.init(rootViewController: GTEMLogsininerMoJito.init())
                      
                    }
                    zGTEm += 10.5
                    SVProgressHUD.showSuccess(withStatus: "The account has been erased!")
                  

                }
                
            }))
            modifiedRecipe["GtsindoubleGTEM"] = 2020 + indefHTEM
            showingAslertGTEm.addAction(UIAlertAction(title: "End Action", style: .default))
            modifiedRecipe["GtsindoubleGTEM"] = 2020 + indefHTEM
            self.present(showingAslertGTEm, animated: true)
        }
        
        if sender.tag == 50 {
            var xGTEm: Double = 15.0
            xGTEm += 30
           
            UserDefaults.standard.set(false, forKey: "oooggStatuelGTEm")
            var yGTEm: Double = 25.0
            var zGTEm: Double = xGTEm + yGTEm + 33
           
            GTEMCombingUser.lovderGTEm.personMeGTEm.removeAll()
            zGTEm += 10.5
            zGTEm -= 0.2

            GTEMCombingUser.lovderGTEm.personMehEagerGTEm.removeAll()
            
            var wGTEM: Double = (xGTEm * 2.0) - (yGTEm / 5.0)

           
            GTEMCombingUser.lovderGTEm.fhhowerAllGTEm.removeAll()
            if (zGTEm > 30.0) && ((wGTEM - 10000) < 10.0) {
                GTEMCombingUser.lovderGTEm.fnnceAllGTEm.removeAll()
                
            }
           
            GTEMCombingUser.lovderGTEm.ancholeRoomGTEm.1.removeAll()
            zGTEm -= 0.2
            zGTEm += 10.5
            ((UIApplication.shared.delegate) as? AppDelegate)?.window?.rootViewController =  PEAUFNeuGuideChallengnng.init(rootViewController: GTEMLogsininerMoJito.init())
           
        }
        
        if sender.tag == 52 {
            self.navigationController?.pushViewController(GTEMELAurrMoJito.init(aginestGTEm: nil, ddleToolGTEM: nil, tationTimerGTEM: nil, _jornyGTEM: (1,false)), animated: true)
        }
        
        
        if sender.tag == 53 {
            self.navigationController?.pushViewController(GTEMELAurrMoJito.init(aginestGTEm: nil, ddleToolGTEM: nil, tationTimerGTEM: nil, _jornyGTEM: (2,false)), animated: true)
        }
        
        if sender.tag == 54 {
            var xGTEm: Double = 15.0
            xGTEm += 30
            var yGTEm: Double = 25.0
            var zGTEm: Double = xGTEm + yGTEm + 33
           
            SVProgressHUD.show(withStatus: "Clearing...")
            zGTEm += 10.5
            zGTEm -= 0.2
            DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1.5){
                zGTEm += 10.5
                zGTEm -= 0.2

                var wGTEM: Double = (xGTEm * 2.0) - (yGTEm / 5.0)

                if (zGTEm > 30.0) && ((wGTEM - 10000) < 10.0) {
                    SVProgressHUD.showSuccess(withStatus: "All Chache are Cleared!")
                }
               
            }
        }
    }
    
}
