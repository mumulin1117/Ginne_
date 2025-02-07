//
//  GTEMLogsininerMoJito.swift
//  Gintuemojir
//
//  Created by Gintuemojir on 2025/1/17.
//

import UIKit
import SVProgressHUD
class GTEMLogsininerMoJito: UIViewController {

    @IBOutlet weak var elauaGTEM: UIButton!
    
    
    
    @IBOutlet weak var gtemEmail: UITextField!
    
    @IBOutlet weak var gtempaswer: UITextField!
    
    
    @IBOutlet weak var centerStatausGTEm: UIButton!
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        centerStatausGTEm.isSelected = GTEMELAurrMoJito.boolkSholkd
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        gtemEmail.background = UIImage.init(named: "inpwertbgGTU")
        gtempaswer.background = UIImage.init(named: "inpwertbgGTU")
        
        
        centerStatausGTEm.addTarget(self, action: #selector(changrStatusillopEluad), for: .touchUpInside)
        elauaGTEM.addTarget(self, action: #selector(gokillopEluad), for: .touchUpInside)
    }
    
   @objc func gokillopEluad(){
      
       self.navigationController?.pushViewController(GTEMELAurrMoJito.init(_jornyGTEM: (0,false)), animated: true)
   
   }
    
    @objc func changrStatusillopEluad(){
        centerStatausGTEm.isSelected = !centerStatausGTEm.isSelected
        GTEMELAurrMoJito.boolkSholkd = elauaGTEM.isSelected
       
    }

    @IBAction func bekLopSure(_ sender: UIButton) {
        
        guard let emaikDSOR = gtemEmail.text,
        emaikDSOR.count != 0,
              let dsorPASD = gtempaswer.text,
        dsorPASD.count != 0 else {
            SVProgressHUD.showInfo(withStatus: "Password or Email is empty!")
           
            return
        }
        
        if dsorPASD.count < 6 {
            SVProgressHUD.showInfo(withStatus: "Password should be in 6-12 characters")
            
            return
        }
    
        if emaikDSOR == "ginne88@gmail.com" {
            SVProgressHUD.show(withStatus: "Sign  in......")
           
            DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1.5){
                SVProgressHUD.showSuccess(withStatus: "Welcome back!")
                UserDefaults.standard.set(true, forKey: "oooggStatuelGTEm")
                
                GTEMCombingUser.lovderGTEm.personMeGTEm["teachername"] = "Quill"
                GTEMCombingUser.lovderGTEm.personMeGTEm["teacherphoto"] = "teacherw9"
                  
                
                GTEMCombingUser.lovderGTEm.personMeGTEm["gtemBlancecoin"] = "500"
                GTEMCombingUser.lovderGTEm.personMeGTEm["gtemContact"] = "ginne88@gmail.com"
              
                GTEMCombingUser.lovderGTEm.personMeGTEm["gtemID"] = "4534567"
             
                GTEMCombingUser.lovderGTEm.personMehEagerGTEm = UIImage(named:"teacherw9")
                
                GTEMCombingUser.lovderGTEm.fhhowerAllGTEm = Array(GTEMCombingUser.lovderGTEm.videoTotaluserGTEm.shuffled().prefix(1))
                GTEMCombingUser.lovderGTEm.fnnceAllGTEm = Array(GTEMCombingUser.lovderGTEm.videoTotaluserGTEm.shuffled().prefix(1))
                
              
                ((UIApplication.shared.delegate) as? AppDelegate)?.window?.rootViewController =  GTEMoMaintabarJito.init()
              
            }
            
            return

        }
        
        let dalsefkDSOR = NSPredicate(format:"SELF MATCHES %@", "^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,}$").evaluate(with: emaikDSOR)
        
       
        if dalsefkDSOR == false {
            SVProgressHUD.showInfo(withStatus: "email format is incorrect!")
            
           
        }else{
            SVProgressHUD.show(withStatus: "Create new and log in...")
            
            DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1.5) {
                SVProgressHUD.dismiss()
                UserDefaults.standard.set(true, forKey: "oooggStatuelGTEm")
               
                GTEMCombingUser.lovderGTEm.personMeGTEm = [:]
                GTEMCombingUser.lovderGTEm.personMeGTEm["teachername"] = "Null"
                
                GTEMCombingUser.lovderGTEm.personMeGTEm["gtemBlancecoin"] = "0"
                GTEMCombingUser.lovderGTEm.personMeGTEm["gtemContact"] = emaikDSOR
              
                GTEMCombingUser.lovderGTEm.personMeGTEm["gtemID"] = "\(Int.random(in: 9999...10000))"
                GTEMCombingUser.lovderGTEm.personMehEagerGTEm = UIImage(named: "hagggdert_GTEm")
                
                ((UIApplication.shared.delegate) as? AppDelegate)?.window?.rootViewController =  GTEMoMaintabarJito.init()
                SVProgressHUD.showSuccess(withStatus: "Successful login!")
               
            }
            
        }
        
        
        
    }
    
  

}
