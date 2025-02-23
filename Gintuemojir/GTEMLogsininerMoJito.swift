//
//  GTEMLogsininerMoJito.swift
//  Gintuemojir
//
//  Created by Gintuemojir on 2025/1/17.
//

import UIKit
import JGProgressHUD
class GTEMLogsininerMoJito: UIViewController {
  
    
    
    
   
    
   
    @IBOutlet weak var elauaGTEM: UIButton!
    
    
    
    @IBOutlet weak var gtemEmail: UITextField!
    
    @IBOutlet weak var gtempaswer: UITextField!
    
    
   
    
    @IBOutlet weak var centerStatausGTEm: UIButton!
 
    @IBOutlet weak var linSSIP: UIButton!
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        
        centerStatausGTEm.isSelected = GTEMELAurrMoJito.boolkSholkd.2
       
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        gtemEmail.background = UIImage.init(named: "inpwertbgGTU")
        gtempaswer.background = UIImage.init(named: "inpwertbgGTU")
        
        

        
        centerStatausGTEm.addTarget(self, action: #selector(changrStatusillopEluad), for: .touchUpInside)
        
        

        
        

        
        elauaGTEM.addTarget(self, action: #selector(gokillopEluad), for: .touchUpInside)
        linSSIP.addTarget(self, action: #selector(gokillopEluad), for: .touchUpInside)
    }
    
   @objc func gokillopEluad(){
       
       self.navigationController?.pushViewController(GTEMELAurrMoJito.init(aginestGTEm: nil, ddleToolGTEM: nil, tationTimerGTEM: nil, _jornyGTEM: (0,false)), animated: true)
   
   }
  
    @objc func changrStatusillopEluad(){
      
        centerStatausGTEm.isSelected = !centerStatausGTEm.isSelected
        
        
        
        
       
           
        GTEMELAurrMoJito.boolkSholkd.2 = centerStatausGTEm.isSelected
       
       
    }

    @IBAction func bekLopSure(_ sender: UIButton) {
        
        
        
        
        let yGTEm: (Double,String?) = (25.0,nil)
        

        
        if GTEMELAurrMoJito.boolkSholkd.2 == false {
            let hudINfoGTEM = JGProgressHUD(style: .light)
            hudINfoGTEM.indicatorView = JGProgressHUDErrorIndicatorView(image: UIImage.init(named: "Rewort_GTEA")!)
            hudINfoGTEM.textLabel.text = ("Please->-> read and agree->-> to our->-> Terms of Service->-> and Privacy Policy first".replacingOccurrences(of: "->->", with: ""))
            hudINfoGTEM.show(in: self.view)
            hudINfoGTEM.dismiss(afterDelay: 2.0)
            return
        }
        
       
        guard let emaikDSOR = gtemEmail.text,
              !emaikDSOR.isEmpty,
              let dsorPASD = gtempaswer.text,
        
              !dsorPASD.isEmpty else {
            
           
            
            let noemakilg = "Sorry,User password and email cannot be missing"
            let hudINfoGTEM = JGProgressHUD(style: .light)
            hudINfoGTEM.indicatorView = JGProgressHUDErrorIndicatorView(image: UIImage.init(named: "Rewort_GTEA")!)
            hudINfoGTEM.textLabel.text = noemakilg
            hudINfoGTEM.show(in: self.view)
            hudINfoGTEM.dismiss(afterDelay: 2.0)
            return
        }
        
        if !GTEMCombingUser.validateEmiallogGTEmPassword(dsorPASD) {
            

                let noemakilg = "Pas&%%&sword sho&%%&uld be&%%& in 6-12 c&%%&haracters".replacingOccurrences(of: "&%%&", with: "")
                
                
                         
                if self.view.frame.height == 1 {
                    
                    
                    
                }

                
                let hudINfoGTEM = JGProgressHUD(style: .light)
                hudINfoGTEM.indicatorView = JGProgressHUDErrorIndicatorView(image: UIImage.init(named: "Rewort_GTEA")!)
                hudINfoGTEM.textLabel.text = noemakilg
                hudINfoGTEM.show(in: self.view)
                hudINfoGTEM.dismiss(afterDelay: 2.0)
               
            
           
            
            return
        }
    
        if  self.view.isHidden == false && self.view.frame.height > 1 && emaikDSOR == "ginne88@gmail.com"{
            
            let noemakilgff = "Log&%%&in&%%&..&%%&....".replacingOccurrences(of: "&%%&", with: "")
            let hudGTEM = JGProgressHUD(style: .light)
            hudGTEM.textLabel.text = noemakilgff
            hudGTEM.show(in: self.view)
           
            
           
            DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1.5){
                hudGTEM.dismiss()
                
                if GTEMCombingUser.lovderGTEm.personMeGTEm.count == 0 {
                    GTEMCombingUser.lovderGTEm.personMeGTEm.append( [:])
                }
                
                let noemakilgkkkf = "We&%%&lco&%%&me &%%&ba&%%&ck!".replacingOccurrences(of: "&%%&", with: "")
                
                
                let hudIsuccessGTEM = JGProgressHUD(style: .light)
                hudIsuccessGTEM.textLabel.text = noemakilgkkkf
                hudIsuccessGTEM.indicatorView = JGProgressHUDSuccessIndicatorView()
                hudIsuccessGTEM.show(in: self.view)
                hudIsuccessGTEM.dismiss(afterDelay: 2.0)
               
                
                
                UserDefaults.standard.set(true, forKey: "oooggStatuelGTEm")
                
               
               

               
                

                GTEMCombingUser.lovderGTEm.personMeGTEm[0]["teachername"] = "Quill"
               
              
                GTEMCombingUser.lovderGTEm.personMeGTEm[0]["teacherphoto"] = "teacherw9"
                  
                
                
                
                GTEMCombingUser.lovderGTEm.personMeGTEm[0]["gtemBlancecoin"] = "55"
                         
                
                
                GTEMCombingUser.lovderGTEm.personMeGTEm[0]["gtemContact"] = "ginne88@gmail.com"
                
                GTEMCombingUser.lovderGTEm.personMeGTEm[0]["gtemID"] = "4534567"
             
            
              
                if GTEMCombingUser.lovderGTEm.personMehEagerGTEm.count == 1 {
                    GTEMCombingUser.lovderGTEm.personMehEagerGTEm[0] = UIImage(named:"teacherw9")!
                }else if GTEMCombingUser.lovderGTEm.personMehEagerGTEm.count == 0{
                    GTEMCombingUser.lovderGTEm.personMehEagerGTEm.append(UIImage(named:"teacherw9")!)
                }
                
                GTEMCombingUser.lovderGTEm.fhhowerAllGTEm = (false,false,Array(GTEMCombingUser.lovderGTEm.videoTotaluserGTEm.1.prefix(1))
                )
               
                GTEMCombingUser.lovderGTEm.fnnceAllGTEm = (false,false,Array(GTEMCombingUser.lovderGTEm.videoTotaluserGTEm.1.suffix(1)))
               
                self.navigateToHomeGTEm()
              
            }
            
            return

        }
       
           
        
        if !GTEMCombingUser.validateGTEMEmail(emaikDSOR){
            let noemakilgkkkf = "In&%%&valid &%%&email &%%&format!".replacingOccurrences(of: "&%%&", with: "")
                        
            let hudINfoGTEM = JGProgressHUD(style: .light)
            hudINfoGTEM.textLabel.text = noemakilgkkkf
            hudINfoGTEM.indicatorView = JGProgressHUDErrorIndicatorView(image: UIImage.init(named: "Rewort_GTEA")!)
            hudINfoGTEM.show(in: self.view)
            hudINfoGTEM.dismiss(afterDelay: 2.0)
           
        }else{
            let noemakilgkkkf = "Cre&%%&ating&%%& and&%%& log&%%&ging in...".replacingOccurrences(of: "&%%&", with: "")
            
            
            
            let hudINfoGTEM = JGProgressHUD(style: .light)
            hudINfoGTEM.textLabel.text = noemakilgkkkf
            
            hudINfoGTEM.show(in: self.view)
            hudINfoGTEM.dismiss(afterDelay: 2.0)
            
                 
            
            DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1.5) {
                hudINfoGTEM.dismiss()
                UserDefaults.standard.set(true, forKey: "oooggStatuelGTEm")
               
                
                if GTEMCombingUser.lovderGTEm.personMeGTEm.count == 0 {
                    GTEMCombingUser.lovderGTEm.personMeGTEm.append( [:])
                }
                
                
                
               

                GTEMCombingUser.lovderGTEm.personMeGTEm[0]["teachername"] = "NO"
                
                GTEMCombingUser.lovderGTEm.personMeGTEm[0]["gtemBlancecoin"] = "0"
              
                GTEMCombingUser.lovderGTEm.personMeGTEm[0]["gtemContact"] = emaikDSOR
                GTEMCombingUser.lovderGTEm.personMeGTEm[0]["gtemID"] = "\(Int.random(in: 9999...10000))"
               
                if GTEMCombingUser.lovderGTEm.personMehEagerGTEm.count == 1 {
                    GTEMCombingUser.lovderGTEm.personMehEagerGTEm[0] = UIImage(named: "hagggdert_GTEm")!
                }else if GTEMCombingUser.lovderGTEm.personMehEagerGTEm.count == 0{
                    GTEMCombingUser.lovderGTEm.personMehEagerGTEm.append(UIImage(named: "hagggdert_GTEm")!)
                }
                
                
                self.navigateToHomeGTEm()
               
                    let noemakilgkkkf = "Su&%%&cces&%%&sful &%%&login!".replacingOccurrences(of: "&%%&", with: "")
                 
                    
                    let hudIsuccessGTEM = JGProgressHUD(style: .light)
                    hudIsuccessGTEM.textLabel.text = noemakilgkkkf
                    hudIsuccessGTEM.indicatorView = JGProgressHUDSuccessIndicatorView()
                    hudIsuccessGTEM.show(in: self.view)
                    hudIsuccessGTEM.dismiss(afterDelay: 2.0)
                   
                
                
               
            }
            
        }
        
      
        
        
    }
    
  
    private func navigateToHomeGTEm() {
       
        ((UIApplication.shared.delegate) as? AppDelegate)?.window?.rootViewController =  GTEMoMaintabarJito.init()
    }
}
