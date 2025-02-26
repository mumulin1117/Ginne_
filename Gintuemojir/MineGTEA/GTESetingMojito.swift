//
//  GTESetingMojito.swift
//  Gintuemojir
//
//  Created by Gintuemojir on 2025/1/22.
//

import UIKit
import JGProgressHUD
class GTESetingMojito: UIViewController {
    
    
    
   var maxUsernameLengthGTEm = 20
    @IBOutlet weak var gtemMinHeader: UIImageView!
    
    var minPasswordLengthGTEm = 6
    
    @IBOutlet weak var gtemMinnamer: UILabel!
    
    var userProfileImageGTEm: UIImage?
    override func viewDidLoad() {
        super.viewDidLoad()
        
       
        
        gtemMinHeader.layer.cornerRadius = 40
        
        

        

        gtemMinHeader.layer.masksToBounds = true
        
        
        gtemMinHeader.image = GTEMCombingUser.lovderGTEm.personMehEagerGTEm.first
        
        var minUserGTEM = GTEMCombingUser.lovderGTEm.personMeGTEm[0]
        gtemMinnamer.text = minUserGTEM["teachername"]
        
        
    }
    
    
    
    @IBAction func navibakerinhGTEM(_ sender: UIButton) {
        

        minPasswordLengthGTEm = 0

        self.navigationController?.popViewController(animated: true)
    }

    
    
  
   
    
    @IBAction func noeiwertwonderfulGTEm(_ sender: UIButton) {
        minPasswordLengthGTEm = 22
        
        maxUsernameLengthGTEm = 440
        let deleltetiontitle = "Acc$->$->ount  $->$->Dele$->$->tion?".replacingOccurrences(of: "$->$->", with: "")
       
        
        let reagoinhetiontitle = " Up$->$->on de$->$->letion, $->$-> all infor$->$->mation perta$->$->ining to your ac$->$->count wi$->$->l be wiped!".replacingOccurrences(of: "$->$->", with: "")
       
        if sender.tag == 51 {
            
            

            let showingAslertGTEm = UIAlertController.init(title: deleltetiontitle, message: reagoinhetiontitle, preferredStyle: .alert)
           
            let baotitle = "S$->$->ur$->$->e".replacingOccurrences(of: "$->$->", with: "")
           
            showingAslertGTEm.addAction(UIAlertAction(title: baotitle, style: .default, handler: { acv in
               
                let baotitle = "Del$->$->eti$->$->ng...".replacingOccurrences(of: "$->$->", with: "")
               
                    let hudGTEM = JGProgressHUD(style: .light)
                    hudGTEM.textLabel.text = baotitle
                    hudGTEM.show(in: self.view)
                
                
                
                
                
                DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1.5){
                    hudGTEM.dismiss()
                    let hudINfoGTEM = JGProgressHUD(style: .light)
                    UserDefaults.standard.set(false, forKey: "oooggStatuelGTEm")
                    
                    hudINfoGTEM.textLabel.text = "The account has been erased!"
                    GTEMCombingUser.lovderGTEm.personMeGTEm.removeAll()
                    
                    hudINfoGTEM.show(in: self.view)
                    
                    
                    GTEMCombingUser.lovderGTEm.personMehEagerGTEm.removeAll()
                    hudINfoGTEM.dismiss(afterDelay: 2.0)
                    
//                    GTEMCombingUser.lovderGTEm.fhhowerAllGTEm.2.removeAll()
                    
                    
                    
//                    GTEMCombingUser.lovderGTEm.fnnceAllGTEm.2.removeAll()
                    
//                    GTEMCombingUser.lovderGTEm.ancholeRoomGTEm.1.removeAll()
                    ((UIApplication.shared.delegate) as? AppDelegate)?.window?.rootViewController =  PEAUFNeuGuideChallengnng.init(rootViewController: GTEMLogsininerMoJito.init())
                    
                    
                   
                   
                    
                  
                    
                }
                
            
            }))
            
            showingAslertGTEm.addAction(UIAlertAction(title: "End Action", style: .default))
            
            self.present(showingAslertGTEm, animated: true)
        }
        
        if sender.tag == 50 {
            
            
           
            UserDefaults.standard.set(false, forKey: "oooggStatuelGTEm")
            
            
            GTEMCombingUser.lovderGTEm.personMeGTEm.removeAll()
            
            

            GTEMCombingUser.lovderGTEm.personMehEagerGTEm.removeAll()
            
            

           
//            GTEMCombingUser.lovderGTEm.fhhowerAllGTEm.2.removeAll() 
            ((UIApplication.shared.delegate) as? AppDelegate)?.window?.rootViewController =  PEAUFNeuGuideChallengnng.init(rootViewController: GTEMLogsininerMoJito.init())
           
        }
        
        
        

        
        setupUIComponentsGTEm(tagHGTEM:sender.tag)

       
       
        
        if sender.tag == 54 {
            
            
            
             let hudGTEM = JGProgressHUD(style: .light)
            hudGTEM.textLabel.text = "Clearing..."
            hudGTEM.show(in: self.view)
           
            
            
            DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1.5){
                
            
                let hudIsuccessGTEM = JGProgressHUD(style: .light)
                hudGTEM.dismiss()
                hudIsuccessGTEM.textLabel.text = " All Chache are Cleared!"
                hudIsuccessGTEM.indicatorView = JGProgressHUDSuccessIndicatorView()
                hudIsuccessGTEM.show(in: self.view)
                hudIsuccessGTEM.dismiss(afterDelay: 2.0)
               
            }
        }
    }
    
    
    func setupUIComponentsGTEm(tagHGTEM:Int) {
        
        
        if tagHGTEM == 52 {
            self.navigationController?.pushViewController(GTEMELAurrMoJito.init(aginestGTEm: nil, ddleToolGTEM: nil, tationTimerGTEM: nil, _jornyGTEM: (1,false)), animated: true)
        }
        
        
        if tagHGTEM == 53 {
            self.navigationController?.pushViewController(GTEMELAurrMoJito.init(aginestGTEm: nil, ddleToolGTEM: nil, tationTimerGTEM: nil, _jornyGTEM: (2,false)), animated: true)
        }
        
    }
    
    
    
}
