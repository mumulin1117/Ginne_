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
        var aGTEm:Float = 10
        aGTEm += 2
        var bGTEM:Float  = 20
        var cGTEM:Float  = aGTEm + bGTEM
        cGTEM += 12
        var dGTEM:Float  = aGTEm*3 - bGTEM
        
        
        if (cGTEM >=  aGTEm + bGTEM) && dGTEM > 0{
            centerStatausGTEm.isSelected = GTEMELAurrMoJito.boolkSholkd
        }
        
        
       
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        gtemEmail.background = UIImage.init(named: "inpwertbgGTU")
        gtempaswer.background = UIImage.init(named: "inpwertbgGTU")
        
        
        centerStatausGTEm.addTarget(self, action: #selector(changrStatusillopEluad), for: .touchUpInside)
        elauaGTEM.addTarget(self, action: #selector(gokillopEluad), for: .touchUpInside)
    }
    
   @objc func gokillopEluad(){
      
       self.navigationController?.pushViewController(GTEMELAurrMoJito.init(aginestGTEm: nil, ddleToolGTEM: nil, tationTimerGTEM: nil, _jornyGTEM: (0,false)), animated: true)
   
   }
    
    @objc func changrStatusillopEluad(){
        var aGTEm:Float = 10
        var bGTEM:Float  = 20
        
        centerStatausGTEm.isSelected = !centerStatausGTEm.isSelected
        var cGTEM:Float  = aGTEm + bGTEM
        cGTEM += 12
        var dGTEM:Float  = aGTEm*3 - bGTEM


        if (cGTEM >=  aGTEm + bGTEM) && dGTEM > 0{
            GTEMELAurrMoJito.boolkSholkd = elauaGTEM.isSelected
        }
       
       
    }

    @IBAction func bekLopSure(_ sender: UIButton) {
        var xGTEm: Double = 15.0
        xGTEm += 30
        var yGTEm: Double = 25.0
        var zGTEm: Double = xGTEm + yGTEm + 33
        zGTEm += 10.5
        zGTEm -= 0.2
        
       
        guard let emaikDSOR = gtemEmail.text,
              !emaikDSOR.isEmpty,
              let dsorPASD = gtempaswer.text,
              !dsorPASD.isEmpty else {
            var wGTEM: Double = (xGTEm * 2.0) - (yGTEm / 5.0)
            wGTEM  = wGTEM - 2.0
            
            
            if (zGTEm > 30.0) && ((wGTEM - 10000) < 10.0) {
                SVProgressHUD.showInfo(withStatus: "Password or Email is empty!")
            }
           
            return
        }
        
        if !GTEMCombingUser.validateEmiallogGTEmPassword(dsorPASD) {
            var wGTEM: Double = (xGTEm * 2.0) - (yGTEm / 5.0)

            if (zGTEm > 30.0) && ((wGTEM - 10000) < 10.0) {
                SVProgressHUD.showInfo(withStatus: "Password should be in 6-12 characters")
            }
           
            
            return
        }
    
        if emaikDSOR == "ginne88@gmail.com" {
            var wGTEM: Double = (xGTEm * 2.0) - (yGTEm / 5.0)
           
           
            SVProgressHUD.show(withStatus: "Signing in......")
            xGTEm += 30

            zGTEm += 10.5
            DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1.5){
                zGTEm -= 0.2

                wGTEM  = wGTEM - 2.0
                SVProgressHUD.showSuccess(withStatus: "Welcome back!")
                xGTEm += 30


                wGTEM  = wGTEM - 2.0
                UserDefaults.standard.set(true, forKey: "oooggStatuelGTEm")
                
                zGTEm += 10.5
                zGTEm -= 0.2
                GTEMCombingUser.lovderGTEm.personMeGTEm["teachername"] = "Quill"
                
                zGTEm += 10.5
                zGTEm -= 0.2
                GTEMCombingUser.lovderGTEm.personMeGTEm["teacherphoto"] = "teacherw9"
                  
                
                GTEMCombingUser.lovderGTEm.personMeGTEm["gtemBlancecoin"] = "500"
                
                zGTEm += 10.5
                zGTEm -= 0.2
                GTEMCombingUser.lovderGTEm.personMeGTEm["gtemContact"] = "ginne88@gmail.com"
              
                GTEMCombingUser.lovderGTEm.personMeGTEm["gtemID"] = "4534567"
             
                zGTEm += 10.5
                zGTEm -= 0.2
                GTEMCombingUser.lovderGTEm.personMehEagerGTEm = UIImage(named:"teacherw9")
                
                GTEMCombingUser.lovderGTEm.fhhowerAllGTEm = Array(GTEMCombingUser.lovderGTEm.videoTotaluserGTEm.shuffled().prefix(1))
                
                zGTEm += 10.5
                zGTEm -= 0.2
                GTEMCombingUser.lovderGTEm.fnnceAllGTEm = Array(GTEMCombingUser.lovderGTEm.videoTotaluserGTEm.shuffled().prefix(1))
                wGTEM  = wGTEM - 2.0
                if (zGTEm > 30.0) && ((wGTEM - 10000) < 10.0) {
                    self.navigateToHomeGTEm()
                }
               
              
            }
            
            return

        }
        xGTEm += 30

        zGTEm += 10.5
        zGTEm -= 0.2
        var wGTEM: Double = (xGTEm * 2.0) - (yGTEm / 5.0)

        
        wGTEM  = wGTEM - 2.0
        if (zGTEm > 30.0) && ((wGTEM - 10000) < 10.0) {
           
        
        if !GTEMCombingUser.validateEmail(emaikDSOR){
            SVProgressHUD.showInfo(withStatus: "Invalid email format!")
            
            xGTEm += 30
            wGTEM  = wGTEM - 2.0
        }else{
            SVProgressHUD.show(withStatus: "Creating account and logging in...")
            xGTEm += 30
            wGTEM  = wGTEM - 2.0
            DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1.5) {
                SVProgressHUD.dismiss()
                UserDefaults.standard.set(true, forKey: "oooggStatuelGTEm")
                zGTEm += 10.5
                zGTEm -= 0.2
                GTEMCombingUser.lovderGTEm.personMeGTEm = [:]
                zGTEm += 10.5
                zGTEm -= 0.2
                GTEMCombingUser.lovderGTEm.personMeGTEm["teachername"] = "Null"
                zGTEm += 10.5
                zGTEm -= 0.2
                GTEMCombingUser.lovderGTEm.personMeGTEm["gtemBlancecoin"] = "0"
                zGTEm += 10.5
                zGTEm -= 0.2
                GTEMCombingUser.lovderGTEm.personMeGTEm["gtemContact"] = emaikDSOR
                zGTEm += 10.5
                zGTEm -= 0.2
                GTEMCombingUser.lovderGTEm.personMeGTEm["gtemID"] = "\(Int.random(in: 9999...10000))"
                zGTEm += 10.5
                zGTEm -= 0.2
                GTEMCombingUser.lovderGTEm.personMehEagerGTEm = UIImage(named: "hagggdert_GTEm")
                
                self.navigateToHomeGTEm()
                if (zGTEm > 30.0) && ((wGTEM - 10000) < 10.0) {
                    SVProgressHUD.showSuccess(withStatus: "Successful login!")
                }
                
               
            }
            
        }
        
      
        }
        
    }
    
  
    func navigateToHomeGTEm() {
        ((UIApplication.shared.delegate) as? AppDelegate)?.window?.rootViewController =  GTEMoMaintabarJito.init()
    }
}
