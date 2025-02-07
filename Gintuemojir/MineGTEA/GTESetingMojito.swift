//
//  GTESetingMojito.swift
//  Gintuemojir
//
//  Created by Gintuemojir on 2025/1/22.
//

import UIKit
import SVProgressHUD
class GTESetingMojito: UIViewController {
    @IBOutlet weak var gtemMinHeader: UIImageView!
    
    
    @IBOutlet weak var gtemMinnamer: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        gtemMinHeader.layer.cornerRadius = 40
        gtemMinHeader.layer.masksToBounds = true
        
        
        gtemMinHeader.image = GTEMCombingUser.lovderGTEm.personMehEagerGTEm
        
        gtemMinnamer.text = GTEMCombingUser.lovderGTEm.personMeGTEm["teachername"]
        
        
    }

    
    @IBAction func navibakerinhGTEM(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }

    
    @IBAction func noeiwertwonderfulGTEm(_ sender: UIButton) {
        if sender.tag == 51 {
            let showingAslertGTEm = UIAlertController.init(title: "Account Deletion?", message: "Upon deletion, all information pertaining to your account will be wiped!", preferredStyle: .alert)
           
            showingAslertGTEm.addAction(UIAlertAction(title: "Sure", style: .default, handler: { acv in
                
                SVProgressHUD.show()
                
                DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1.5){
                    SVProgressHUD.dismiss()
                    UserDefaults.standard.set(false, forKey: "oooggStatuelGTEm")
                    
                    GTEMCombingUser.lovderGTEm.personMeGTEm.removeAll()
                    GTEMCombingUser.lovderGTEm.personMehEagerGTEm = nil
                    GTEMCombingUser.lovderGTEm.fhhowerAllGTEm.removeAll()
                    GTEMCombingUser.lovderGTEm.fnnceAllGTEm.removeAll()
                    
                    GTEMCombingUser.lovderGTEm.ancholeRoomGTEm.removeAll()
                    
                    ((UIApplication.shared.delegate) as? AppDelegate)?.window?.rootViewController =  PEAUFNeuGuideChallengnng.init(rootViewController: GTEMLogsininerMoJito.init())
                   
                    SVProgressHUD.showSuccess(withStatus: "The account has been erased!")
                  

                }
                
            }))
        
            showingAslertGTEm.addAction(UIAlertAction(title: "Cancel", style: .default))
       
            self.present(showingAslertGTEm, animated: true)
        }
        
        if sender.tag == 50 {
            UserDefaults.standard.set(false, forKey: "oooggStatuelGTEm")
            
            GTEMCombingUser.lovderGTEm.personMeGTEm.removeAll()
            GTEMCombingUser.lovderGTEm.personMehEagerGTEm = nil
            GTEMCombingUser.lovderGTEm.fhhowerAllGTEm.removeAll()
            GTEMCombingUser.lovderGTEm.fnnceAllGTEm.removeAll()
            
            GTEMCombingUser.lovderGTEm.ancholeRoomGTEm.removeAll()
            ((UIApplication.shared.delegate) as? AppDelegate)?.window?.rootViewController =  PEAUFNeuGuideChallengnng.init(rootViewController: GTEMLogsininerMoJito.init())
           
        }
        
        if sender.tag == 52 {
            self.navigationController?.pushViewController(GTEMELAurrMoJito.init(_jornyGTEM: (1,false)), animated: true)
        }
        
        
        if sender.tag == 53 {
            self.navigationController?.pushViewController(GTEMELAurrMoJito.init(_jornyGTEM: (2,false)), animated: true)
        }
        
        if sender.tag == 54 {
            SVProgressHUD.show(withStatus: "Clearing...")
            DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1.5){
                SVProgressHUD.showSuccess(withStatus: "All Chache are Cleared!")
            }
        }
    }
    
}
