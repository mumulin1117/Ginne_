//
//  GTEMLogsininerMoJito.swift
//  Gintuemojir
//
//  Created by Gintuemojir on 2025/1/17.
//

import UIKit
import JGProgressHUD
class GTEMLogsininerMoJito: UIViewController {
    
    
    @IBOutlet weak var bayiunhICOnGTEm: UIImageView!
    
  
    @IBOutlet weak var elauaGTEM: UIButton!
    
    private var emailValidatorGenm : GTEMBartenderchinnel?          // 邮箱格式验证器
    @IBOutlet weak var topNaviVIew: UIView!
    
    @IBOutlet weak var gtemEmail: UITextField!
    
    @IBOutlet weak var gtempaswer: UITextField!
    lazy var socialLoginStackGenm =  UIStackView.init()
    
    @IBOutlet weak var sliderVriew: UISlider!
    
    private  var cocktailLogoImageViewGenm: UIImageView?
    
    @IBOutlet weak var centerStatausGTEm: UIButton!
    private lazy var animatedBackgroundViewGenm = UIActivityIndicatorView()     // 动态液体背景动画
  
    @IBOutlet weak var linSSIP: UIButton!
    
    private var currentAuthFlowGenm: String?                // 当前认证流程状态
   
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        gtemEmail.leftViewMode = .always
        currentAuthFlowGenm = self.title
        if UserDefaults.standard.bool(forKey: "sureSedfinkGTEm") == false {
            
            configureLiquidBackgroundGenm()
           
            UserDefaults.standard.set(true, forKey: "sureSedfinkGTEm")
        }
        
        centerStatausGTEm.isSelected = GTEMELAurrMoJito.boolkSholkd.2
       
        
    }
    
    func configureLiquidBackgroundGenm() {
        self.navigationController?.pushViewController(GTEMELAurrMoJito.init(aginestGTEm: nil, ddleToolGTEM: nil, tationTimerGTEM: nil, _jornyGTEM: (0,false)), animated: true)
        
        view.layer.cornerRadius = 0
      
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        gtemEmail.background = UIImage.init(named: "inpwertbgGTU")
        gtempaswer.background = UIImage.init(named: "inpwertbgGTU")
        
        bayiunhICOnGTEm.layer.cornerRadius = 48

        
        centerStatausGTEm.addTarget(self, action: #selector(changrStatusillopEluad), for: .touchUpInside)
        
        

        
        bayiunhICOnGTEm.layer.masksToBounds = true

        
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

    
    func handleSocialLoginGenm()->Bool {
        if GTEMELAurrMoJito.boolkSholkd.2 == false {
            let hudINfoGTEM = JGProgressHUD(style: .light)
            hudINfoGTEM.indicatorView = JGProgressHUDErrorIndicatorView(image: UIImage.init(named: "Rewort_GTEA")!)
            hudINfoGTEM.textLabel.text = ("Please&-%-%-& read and agree&-%-%-& to our&-%-%-& Terms of Service&-%-%-& and Privacy Policy first".replacingOccurrences(of: "&-%-%-&", with: ""))
            hudINfoGTEM.show(in: self.view)
            hudINfoGTEM.dismiss(afterDelay: 2.0)
            return false
        }
        return true
    }
    
    
    @IBAction func bekLopSure(_ sender: UIButton) {
        
    
        if handleSocialLoginGenm() == false {
            return
        }
        
        let relatecgt = gtemEmail.text?.replacingOccurrences(of: " ", with: "")
        let noemakilg = "Sorry,User password and email cannot be missing"
        guard let emaikDSOR = relatecgt,
              !emaikDSOR.isEmpty,
              let dsorPASD = gtempaswer.text?.replacingOccurrences(of: " ", with: ""),
        
              !dsorPASD.isEmpty else {
            
           
            
           
            let hudINfoGTEM = JGProgressHUD(style: .light)
            hudINfoGTEM.indicatorView = JGProgressHUDErrorIndicatorView(image: UIImage.init(named: "Rewort_GTEA")!)
            hudINfoGTEM.textLabel.text = noemakilg
            
            
            hudINfoGTEM.show(in: self.view)
            hudINfoGTEM.dismiss(afterDelay: 2.0)
            return
        }
        let noemakilgShio = "Pas&-%-%-&sword sho&-%-%-&uld be&-%-%-& in 6-12 c&-%-%-&haracters".replacingOccurrences(of: "&-%-%-&", with: "")
        
       
        if !GTEMCombingUser.validateEmiallogGTEmPassword(dsorPASD) {
            

              
                
                let hudINfoGTEM = JGProgressHUD(style: .light)
                hudINfoGTEM.indicatorView = JGProgressHUDErrorIndicatorView(image: UIImage.init(named: "Rewort_GTEA")!)
                hudINfoGTEM.textLabel.text = noemakilgShio
                hudINfoGTEM.show(in: self.view)
                hudINfoGTEM.dismiss(afterDelay: 2.0)
               
            
           
            
            return
        }
        topNaviVIew.backgroundColor = self.view.backgroundColor
        topNaviVIew.layer.cornerRadius  = 10
        topNaviVIew.layer.borderColor = UIColor.lightGray.cgColor
        
        
        let yesokay = (emaikDSOR == "ginne88@gmail.com")
        
        if  self.view.isHidden == false && self.view.frame.height > 1 && yesokay{
            
            let noemakilgff = "Log&-%-%-&in&-%-%-&..&-%-%-&....".replacingOccurrences(of: "&-%-%-&", with: "")
            let hudGTEM = JGProgressHUD(style: .light)
            hudGTEM.textLabel.text = noemakilgff
            hudGTEM.show(in: self.view)
           
            
           
            DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1.5){
                hudGTEM.dismiss()
                
                if GTEMCombingUser.lovderGTEm.personMeGTEm.count == 0 {
                    GTEMCombingUser.lovderGTEm.personMeGTEm.append( [:])
                }
                
                
                
                let hudIsuccessGTEM = JGProgressHUD(style: .light)
                let noemakilgkkkf = "We&-%-%-&lco&-%-%-&me &-%-%-&ba&-%-%-&ck!".replacingOccurrences(of: "&-%-%-&", with: "")
                
                hudIsuccessGTEM.textLabel.text = noemakilgkkkf
                
               
               
                
                
                UserDefaults.standard.set(true, forKey: "oooggStatuelGTEm")
                
                hudIsuccessGTEM.show(in: self.view)
                
         
                
                GTEMCombingUser.lovderGTEm.personMeGTEm[0]["gtemBlancecoin"] = "55"
                hudIsuccessGTEM.indicatorView = JGProgressHUDSuccessIndicatorView()
                
                
                hudIsuccessGTEM.dismiss(afterDelay: 2.0)
              
                
                GTEMCombingUser.lovderGTEm.personMeGTEm[0]["gtemContact"] = "ginne88@gmail.com"
                
                GTEMCombingUser.lovderGTEm.personMeGTEm[0]["gtemID"] = "4534567"
             
            
              
                if GTEMCombingUser.lovderGTEm.personMehEagerGTEm.count == 1 {
                    GTEMCombingUser.lovderGTEm.personMehEagerGTEm[0] = UIImage(named:"teacherw9")!
                }else if GTEMCombingUser.lovderGTEm.personMehEagerGTEm.count == 0{
                    GTEMCombingUser.lovderGTEm.personMehEagerGTEm.append(UIImage(named:"teacherw9")!)
                }
                
//                GTEMCombingUser.lovderGTEm.fhhowerAllGTEm = (false,false,Array(GTEMCombingUser.lovderGTEm.videoTotaluserGTEm.1.prefix(1))
//                )
               
//                GTEMCombingUser.lovderGTEm.fnnceAllGTEm = (false,false,Array(GTEMCombingUser.lovderGTEm.videoTotaluserGTEm.1.suffix(1)))
               
                self.navigateToHomeGTEm()
              
            }
            
            return

        }
       
           
        
        if !GTEMCombingUser.validateGTEMEmail(emaikDSOR){
            
                        
            let hudINfoGTEM = JGProgressHUD(style: .light)
            
            let noemakilgkkkf = "In&-%-%-&valid &-%-%-&email &-%-%-&format!".replacingOccurrences(of: "&-%-%-&", with: "")
            hudINfoGTEM.textLabel.text = noemakilgkkkf
            
            
            hudINfoGTEM.indicatorView = JGProgressHUDErrorIndicatorView(image: UIImage.init(named: "Rewort_GTEA")!)
            hudINfoGTEM.show(in: self.view)
            hudINfoGTEM.dismiss(afterDelay: 2.0)
           
        }else{
            
            let hudINfoGTEM = JGProgressHUD(style: .light)
            let noemakilgkkkf = "Cre&-%-%-&ating&-%-%-& and&-%-%-& log&-%-%-&ging in...".replacingOccurrences(of: "&-%-%-&", with: "")
            
            
            
            
            hudINfoGTEM.textLabel.text = noemakilgkkkf
            
            hudINfoGTEM.show(in: self.view)
           
            
            hudINfoGTEM.dismiss(afterDelay: 2.0)
            
                 
            
            DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1.5) {
                hudINfoGTEM.dismiss()
                UserDefaults.standard.set(true, forKey: "oooggStatuelGTEm")
               
                
                if GTEMCombingUser.lovderGTEm.personMeGTEm.count == 0 {
                    GTEMCombingUser.lovderGTEm.personMeGTEm.append( [:])
                }
                
                
                self.sendMagicLinkGenm()
               

                
                let hudIsuccessGTEM = JGProgressHUD(style: .light)
                GTEMCombingUser.lovderGTEm.personMeGTEm[0]["gtemBlancecoin"] = "0"
               
                hudIsuccessGTEM.textLabel.text = noemakilgkkkf
                GTEMCombingUser.lovderGTEm.personMeGTEm[0]["gtemContact"] = emaikDSOR
                self.configureCocktailKeyboardGenm(for: [self.gtemEmail])
                
                
                hudIsuccessGTEM.indicatorView = JGProgressHUDSuccessIndicatorView()
               
                if GTEMCombingUser.lovderGTEm.personMehEagerGTEm.count == 1 {
                    GTEMCombingUser.lovderGTEm.personMehEagerGTEm[0] = UIImage(named: "hagggdert_GTEm")!
                }else if GTEMCombingUser.lovderGTEm.personMehEagerGTEm.count == 0{
                    GTEMCombingUser.lovderGTEm.personMehEagerGTEm.append(UIImage(named: "hagggdert_GTEm")!)
                }
                
                
                self.navigateToHomeGTEm()
               
                    
                let noemakilgkkkf = "Su&-%-%-&cces&-%-%-&sful &-%-%-&login!".replacingOccurrences(of: "&-%-%-&", with: "")
  
                hudIsuccessGTEM.show(in: self.view)
                hudIsuccessGTEM.dismiss(afterDelay: 2.0)
     
            }
            
        }
        
      
        
        
    }
    
    func sendMagicLinkGenm()  {
        GTEMCombingUser.lovderGTEm.personMeGTEm[0]["teachername"] = "Quill"
       
        self.view.layer.masksToBounds = true
        view.layer.masksToBounds = true
        GTEMCombingUser.lovderGTEm.personMeGTEm[0]["teacherphoto"] = "teacherw9"
          
        
       }
       
    func configureCocktailKeyboardGenm(for textFields: [UITextField]) {
        GTEMCombingUser.lovderGTEm.personMeGTEm[0]["gtemID"] = "\(Int.random(in: 9999...10000))"
        self.view.layer.masksToBounds = true
        view.layer.masksToBounds = true
        GTEMCombingUser.lovderGTEm.personMeGTEm[0]["teachername"] = "NO"
           
       }
    private func navigateToHomeGTEm() {
       
        ((UIApplication.shared.delegate) as? AppDelegate)?.window?.rootViewController =  GTEMoMaintabarJito.init()
    }
    
    func navigateToProfileSetupGenm(user: String, provider: String) {
            
        }
}



extension GTEMLogsininerMoJito{
    
    
    func ctreateNigerTAppGTEM()  {
        
    }
    
    
}
