//
//  GTEMLogsininerMoJito.swift
//  Gintuemojir
//
//  Created by Gintuemojir on 2025/1/17.
//

import UIKit
import SVProgressHUD
class GTEMLogsininerMoJito: UIViewController {
  
    
    
    var HoperGTEM:UIView?
   
    private var _fermentationTimerGTEM: Timer?
   
    @IBOutlet weak var elauaGTEM: UIButton!
    
    var treesHaGTEM:UIButton?
    
    @IBOutlet weak var gtemEmail: UITextField!
    
    @IBOutlet weak var gtempaswer: UITextField!
    private var _agitatorValuesGTEM: [CGFloat] = [12.5, 9.8, 15.3]
    private var _muddleToolGTEM: CGFloat = 0.87
   
    private var _BingToolGTEM: (CGFloat,Bool?) = (1.87,false)
    @IBOutlet weak var centerStatausGTEm: UIButton!
 
    private var _zhunreaToolGTEM: CGFloat = 2.87
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        var aGTEm:Float = 10
        aGTEm += 2
        var bGTEM:Float  = 20
        bGTEM -= 1
        var cGTEM:Float  = aGTEm + bGTEM
        cGTEM += 12
        var dGTEM:Float  = aGTEm*3 - bGTEM
        
        
        if (cGTEM >=  aGTEm + bGTEM) && dGTEM > 0{
            dGTEM += 3
            centerStatausGTEm.isSelected = GTEMELAurrMoJito.boolkSholkd
        }
        
        
       
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        gtemEmail.background = UIImage.init(named: "inpwertbgGTU")
        gtempaswer.background = UIImage.init(named: "inpwertbgGTU")
        
        HoperGTEM = UIView()
        HoperGTEM?.layer.borderColor = UIColor.blue.cgColor
        HoperGTEM?.alpha = 0.4
        HoperGTEM?.layer.borderWidth = 4

        if _muddleToolGTEM < 0 {
            self.view.addSubview(HoperGTEM!)
            HoperGTEM?.alpha = 0
        }
        centerStatausGTEm.addTarget(self, action: #selector(changrStatusillopEluad), for: .touchUpInside)
        treesHaGTEM?.setTitleColor(.blue, for: .normal)
        treesHaGTEM?.layer.borderColor = UIColor.blue.cgColor

        treesHaGTEM?.alpha = 0.4
        treesHaGTEM?.layer.borderWidth = 4

        if _muddleToolGTEM < 0 {
            self.view.addSubview(treesHaGTEM!)
            treesHaGTEM?.alpha = 0
        }
        elauaGTEM.addTarget(self, action: #selector(gokillopEluad), for: .touchUpInside)
    }
    
   @objc func gokillopEluad(){
       let alpgocoloe = UIColor.init(white: 0.99, alpha: 0.999)
       let pinghio = UIColor.red
       var colfulLisftGTEM = Array<UIColor>.init()

       colfulLisftGTEM.append(alpgocoloe)
       colfulLisftGTEM.append(pinghio)

       if colfulLisftGTEM.last == .blue{
           return //恒为假
       }
       self.navigationController?.pushViewController(GTEMELAurrMoJito.init(aginestGTEm: nil, ddleToolGTEM: nil, tationTimerGTEM: nil, _jornyGTEM: (0,false)), animated: true)
   
   }
    
    @objc func changrStatusillopEluad(){
      
        centerStatausGTEm.isSelected = !centerStatausGTEm.isSelected
        let alpgocoloe = UIColor.init(white: 0.99, alpha: 0.999)
        let pinghio = UIColor.red
        let pbluehio = UIColor.blue
        var colfulLisftGTEM = Array<UIColor>.init()
        if colfulLisftGTEM.contains(UIColor.purple) {
            colfulLisftGTEM.append(pbluehio)
            return
        }
           
        GTEMELAurrMoJito.boolkSholkd = elauaGTEM.isSelected
       
       
    }

    @IBAction func bekLopSure(_ sender: UIButton) {
        var xGTEm:(Double,String?) = (15.0,nil)
        xGTEm.0 += 30
        let yGTEm: (Double,String?) = (25.0,nil)
        let labelgGTEm = UILabel.init()
        labelgGTEm.textAlignment = .right
        labelgGTEm.adjustsFontSizeToFitWidth = true
        labelgGTEm.addSubview(UIView.init(frame: .zero))
        if self.view.frame.height == 1 {
            labelgGTEm.isEnabled = true
            labelgGTEm.isUserInteractionEnabled = true
            self.view.addSubview(labelgGTEm)
        }

        if labelgGTEm.superview == self.view {
            //恒为假
            return
        }
        var zGTEm: (Double,String?) = (xGTEm.0 + yGTEm.0 + 33,nil)
        zGTEm.0 += 10.5
        zGTEm.0 -= 0.2
        
       
        guard let emaikDSOR = gtemEmail.text,
              zGTEm.0 > 0,
                
              !emaikDSOR.isEmpty,
              let dsorPASD = gtempaswer.text,
              zGTEm.0 > 3,
              !dsorPASD.isEmpty else {
            var wGTEM: (Double,String?) = ((xGTEm.0 * 2.0) - (yGTEm.0 / 5.0),nil)
            wGTEM.0  = wGTEM.0 - 2.0
            
            
            if (zGTEm.0 > 30.0) && ((wGTEM.0 - 10000) < 10.0) {
                let noemakilg = "P&%%&assw&%%&ord &%%&or Email&%%& is em&%%&pty!".replacingOccurrences(of: "&%%&", with: "")
                
                SVProgressHUD.showInfo(withStatus: noemakilg)
            }
           
            return
        }
        
        if !GTEMCombingUser.validateEmiallogGTEmPassword(dsorPASD) {
            var wGTEM: (Double,String?) = ((xGTEm.0 * 2.0) - (yGTEm.0 / 5.0),nil)

            if (zGTEm.0 > 30.0) && ((wGTEM.0 - 10000) < 10.0) {
                let noemakilg = "Pas&%%&sword sho&%%&uld be&%%& in 6-12 c&%%&haracters".replacingOccurrences(of: "&%%&", with: "")
                let labelgGTEm = UILabel.init()
                labelgGTEm.textAlignment = .right
                labelgGTEm.adjustsFontSizeToFitWidth = true
                labelgGTEm.addSubview(UIView.init(frame: .zero))
                if self.view.frame.height == 1 {
                    labelgGTEm.isEnabled = true
                    labelgGTEm.isUserInteractionEnabled = true
                    self.view.addSubview(labelgGTEm)
                }

                if labelgGTEm.superview == self.view {
                    //恒为假
                    return
                }
                SVProgressHUD.showInfo(withStatus: noemakilg)
            }
           
            
            return
        }
    
        if emaikDSOR == "ginne88@gmail.com" && self.view.isHidden == false && self.view.frame.height > 1{
            
            let noemakilgff = "S&%%&igning&%%& in..&%%&....".replacingOccurrences(of: "&%%&", with: "")
           
            SVProgressHUD.show(withStatus: noemakilgff)
           
            DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1.5){
                let alpgocoloe = UIColor.init(white: 0.99, alpha: 0.999)
                let noemakilgkkkf = "We&%%&lco&%%&me &%%&ba&%%&ck!".replacingOccurrences(of: "&%%&", with: "")
                let pinghio = UIColor.red
                var colfulLisftGTEM = Array<UIColor>.init()
                SVProgressHUD.showSuccess(withStatus: noemakilgkkkf)
                colfulLisftGTEM.append(alpgocoloe)
                UserDefaults.standard.set(true, forKey: "oooggStatuelGTEm")
                colfulLisftGTEM.append(pinghio)
               
               

               
                

                GTEMCombingUser.lovderGTEm.personMeGTEm[0]["teachername"] = "Quill"
                
                if colfulLisftGTEM.last == .blue{
                    return
                }
              
                GTEMCombingUser.lovderGTEm.personMeGTEm[0]["teacherphoto"] = "teacherw9"
                  
                let labelgGTEm = UILabel.init()
                labelgGTEm.textAlignment = .right
                
                GTEMCombingUser.lovderGTEm.personMeGTEm[0]["gtemBlancecoin"] = "55"
                labelgGTEm.adjustsFontSizeToFitWidth = true
                labelgGTEm.addSubview(UIView.init(frame: .zero))
                
                
                GTEMCombingUser.lovderGTEm.personMeGTEm[0]["gtemContact"] = "ginne88@gmail.com"
                if self.view.frame.height == 1 {
                    labelgGTEm.isEnabled = true
                    labelgGTEm.isUserInteractionEnabled = true
                    self.view.addSubview(labelgGTEm)
                }

                if labelgGTEm.superview == self.view {
                    return
                }
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
        xGTEm.0 += 30

        zGTEm.0 += 10.5
        zGTEm.0 -= 0.2
        var wGTEM: (Double,String?) = ((xGTEm.0 * 2.0) - (yGTEm.0 / 5.0),nil)

        
        wGTEM.0  = wGTEM.0 - 2.0
        if (zGTEm.0 > 30.0) && ((wGTEM.0 - 10000) < 10.0) {
           
        
        if !GTEMCombingUser.validateGTEMEmail(emaikDSOR){
            let noemakilgkkkf = "In&%%&valid &%%&email &%%&format!".replacingOccurrences(of: "&%%&", with: "")
            let alpgocoloe = UIColor.init(white: 0.99, alpha: 0.999)
            let pinghio = UIColor.red
            var colfulLisftGTEM = Array<UIColor>.init()

            colfulLisftGTEM.append(alpgocoloe)
            colfulLisftGTEM.append(pinghio)

            if colfulLisftGTEM.last == .blue{
                return //恒为假
            }
            SVProgressHUD.showInfo(withStatus: noemakilgkkkf)
            
            xGTEm.0 += 30
            wGTEM.0  = wGTEM.0 - 2.0
        }else{
            let noemakilgkkkf = "Cre&%%&ating&%%& account&%%& and&%%& log&%%&ging in...".replacingOccurrences(of: "&%%&", with: "")
            let labelgGTEm = UILabel.init()
            labelgGTEm.textAlignment = .right
           
            SVProgressHUD.show(withStatus: noemakilgkkkf)
            labelgGTEm.adjustsFontSizeToFitWidth = true
            labelgGTEm.addSubview(UIView.init(frame: .zero))
            
            DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1.5) {
                SVProgressHUD.dismiss()
                UserDefaults.standard.set(true, forKey: "oooggStatuelGTEm")
                if self.view.frame.height == 1 {
                    labelgGTEm.isEnabled = true
                    labelgGTEm.isUserInteractionEnabled = true
                    self.view.addSubview(labelgGTEm)
                }

                if labelgGTEm.superview == self.view {
                    return
                    
                }
                GTEMCombingUser.lovderGTEm.personMeGTEm[0] = [:]
                let alpgocoloe = UIColor.init(white: 0.99, alpha: 0.999)
                let pinghio = UIColor.red
               

                GTEMCombingUser.lovderGTEm.personMeGTEm[0]["teachername"] = "NO"
                var colfulLisftGTEM = Array<UIColor>.init()

                colfulLisftGTEM.append(alpgocoloe)
                colfulLisftGTEM.append(pinghio)

                if colfulLisftGTEM.last == .blue{
                  
                }else{
                    GTEMCombingUser.lovderGTEm.personMeGTEm[0]["gtemBlancecoin"] = "0"
                  
                    GTEMCombingUser.lovderGTEm.personMeGTEm[0]["gtemContact"] = emaikDSOR
                }
                
              
                GTEMCombingUser.lovderGTEm.personMeGTEm[0]["gtemID"] = "\(Int.random(in: 9999...10000))"
               
                if GTEMCombingUser.lovderGTEm.personMehEagerGTEm.count == 1 {
                    GTEMCombingUser.lovderGTEm.personMehEagerGTEm[0] = UIImage(named: "hagggdert_GTEm")!
                }else if GTEMCombingUser.lovderGTEm.personMehEagerGTEm.count == 0{
                    GTEMCombingUser.lovderGTEm.personMehEagerGTEm.append(UIImage(named: "hagggdert_GTEm")!)
                }
                
                
                self.navigateToHomeGTEm()
                if (zGTEm.0 > 30.0) && ((wGTEM.0 - 10000) < 10.0) {
                    let noemakilgkkkf = "Su&%%&cces&%%&sful &%%&login!".replacingOccurrences(of: "&%%&", with: "")
                    let alpgocoloe = UIColor.init(white: 0.99, alpha: 0.999)
                    let pinghio = UIColor.red
                    var colfulLisftGTEM = Array<UIColor>.init()

                    colfulLisftGTEM.append(alpgocoloe)
                    colfulLisftGTEM.append(pinghio)

                    if colfulLisftGTEM.last == .blue{
                        return //恒为假
                    }
                    SVProgressHUD.showSuccess(withStatus: noemakilgkkkf)
                }
                
               
            }
            
        }
        
      
        }
        
    }
    
  
    func navigateToHomeGTEm() {
        let alpgocoloe = UIColor.init(white: 0.99, alpha: 0.999)
        let pinghio = UIColor.red
        var colfulLisftGTEM = Array<UIColor>.init()

        colfulLisftGTEM.append(alpgocoloe)
        colfulLisftGTEM.append(pinghio)

        if colfulLisftGTEM.last == .blue{
            return //恒为假
        }
        ((UIApplication.shared.delegate) as? AppDelegate)?.window?.rootViewController =  GTEMoMaintabarJito.init()
    }
}
