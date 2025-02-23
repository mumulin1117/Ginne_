//
//  GTESetingMojito.swift
//  Gintuemojir
//
//  Created by Gintuemojir on 2025/1/22.
//

import UIKit
import JGProgressHUD
class GTESetingMojito: UIViewController {
    
    
    
    
    @IBOutlet weak var gtemMinHeader: UIImageView!
    
   
    
    @IBOutlet weak var gtemMinnamer: UILabel!
    
   
    override func viewDidLoad() {
        super.viewDidLoad()
        
       
        
        gtemMinHeader.layer.cornerRadius = 40
        
        

        

        gtemMinHeader.layer.masksToBounds = true
        
        
        gtemMinHeader.image = GTEMCombingUser.lovderGTEm.personMehEagerGTEm.first
        
        var minUserGTEM = GTEMCombingUser.lovderGTEm.personMeGTEm[0]
        gtemMinnamer.text = minUserGTEM["teachername"]
        
        
    }
    
    
    
    @IBAction func navibakerinhGTEM(_ sender: UIButton) {
        

        

        self.navigationController?.popViewController(animated: true)
    }

    
    
  
   
    
    @IBAction func noeiwertwonderfulGTEm(_ sender: UIButton) {
        
        
       
        if sender.tag == 51 {
            
            

            let showingAslertGTEm = UIAlertController.init(title: " Account  Deletion?", message: " Upon deletion,  all information pertaining to your account will be wiped!", preferredStyle: .alert)
           
            
           
            showingAslertGTEm.addAction(UIAlertAction(title: "Sure", style: .default, handler: { acv in
               
                    
                    let hudGTEM = JGProgressHUD(style: .light)
                    hudGTEM.textLabel.text = "Deleting..."
                    hudGTEM.show(in: self.view)
                
                
                
                
                
                DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1.5){
                    hudGTEM.dismiss()
                    
                    UserDefaults.standard.set(false, forKey: "oooggStatuelGTEm")
                    
                             
                    GTEMCombingUser.lovderGTEm.personMeGTEm.removeAll()
                    
                    
                    
                    
                    GTEMCombingUser.lovderGTEm.personMehEagerGTEm.removeAll()
                    
                    GTEMCombingUser.lovderGTEm.fhhowerAllGTEm.2.removeAll()
                    
                    
                    
                    GTEMCombingUser.lovderGTEm.fnnceAllGTEm.2.removeAll()
                    
//                    GTEMCombingUser.lovderGTEm.ancholeRoomGTEm.1.removeAll()
                    ((UIApplication.shared.delegate) as? AppDelegate)?.window?.rootViewController =  PEAUFNeuGuideChallengnng.init(rootViewController: GTEMLogsininerMoJito.init())
                    
                    
                    let hudINfoGTEM = JGProgressHUD(style: .light)
                    hudINfoGTEM.textLabel.text = "The account has been erased!"
                    hudINfoGTEM.show(in: self.view)
                    hudINfoGTEM.dismiss(afterDelay: 2.0)
                    
                    
                }
                
            
            }))
            
            showingAslertGTEm.addAction(UIAlertAction(title: "End Action", style: .default))
            
            self.present(showingAslertGTEm, animated: true)
        }
        
        if sender.tag == 50 {
            
            
           
            UserDefaults.standard.set(false, forKey: "oooggStatuelGTEm")
            
            
            GTEMCombingUser.lovderGTEm.personMeGTEm.removeAll()
            
            

            GTEMCombingUser.lovderGTEm.personMehEagerGTEm.removeAll()
            
            

           
            GTEMCombingUser.lovderGTEm.fhhowerAllGTEm.2.removeAll() 
            ((UIApplication.shared.delegate) as? AppDelegate)?.window?.rootViewController =  PEAUFNeuGuideChallengnng.init(rootViewController: GTEMLogsininerMoJito.init())
           
        }
        
        
        

        
        

       
        if sender.tag == 52 {
            self.navigationController?.pushViewController(GTEMELAurrMoJito.init(aginestGTEm: nil, ddleToolGTEM: nil, tationTimerGTEM: nil, _jornyGTEM: (1,false)), animated: true)
        }
        
        
        if sender.tag == 53 {
            self.navigationController?.pushViewController(GTEMELAurrMoJito.init(aginestGTEm: nil, ddleToolGTEM: nil, tationTimerGTEM: nil, _jornyGTEM: (2,false)), animated: true)
        }
        
        if sender.tag == 54 {
            
            
            
             let hudGTEM = JGProgressHUD(style: .light)
            hudGTEM.textLabel.text = "Clearing..."
            hudGTEM.show(in: self.view)
           
            
            
            DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1.5){
                
                
                hudGTEM.dismiss()
                

                let hudIsuccessGTEM = JGProgressHUD(style: .light)
                hudIsuccessGTEM.textLabel.text = " All Chache are Cleared!"
                hudIsuccessGTEM.indicatorView = JGProgressHUDSuccessIndicatorView()
                hudIsuccessGTEM.show(in: self.view)
                hudIsuccessGTEM.dismiss(afterDelay: 2.0)
               
            }
        }
    }
    
}
