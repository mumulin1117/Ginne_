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
   
    private var _BingToolGTEM: CGFloat = 1.87
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
        var aGTEm:Float = 10
        aGTEm += 30
        var bGTEM:Float  = 20
        bGTEM -= 2
        centerStatausGTEm.isSelected = !centerStatausGTEm.isSelected
        var cGTEM:Float  = aGTEm + bGTEM
        cGTEM += 12
        var dGTEM:Float  = aGTEm*3 - bGTEM


        if (cGTEM >=  aGTEm + bGTEM) && dGTEM > 0{
            dGTEM += 3
            GTEMELAurrMoJito.boolkSholkd = elauaGTEM.isSelected
        }
       
       
    }

    @IBAction func bekLopSure(_ sender: UIButton) {
        var xGTEm: Double = 15.0
        xGTEm += 30
        let yGTEm: Double = 25.0
        var zGTEm: Double = xGTEm + yGTEm + 33
        zGTEm += 10.5
        zGTEm -= 0.2
        
       
        guard let emaikDSOR = gtemEmail.text,
              zGTEm > 0,
                
              !emaikDSOR.isEmpty,
              let dsorPASD = gtempaswer.text,
              zGTEm > 3,
              !dsorPASD.isEmpty else {
            var wGTEM: Double = (xGTEm * 2.0) - (yGTEm / 5.0)
            wGTEM  = wGTEM - 2.0
            
            
            if (zGTEm > 30.0) && ((wGTEM - 10000) < 10.0) {
                let noemakilg = "P&%%&assw&%%&ord &%%&or Email&%%& is em&%%&pty!".replacingOccurrences(of: "&%%&", with: "")
                
                SVProgressHUD.showInfo(withStatus: noemakilg)
            }
           
            return
        }
        
        if !GTEMCombingUser.validateEmiallogGTEmPassword(dsorPASD) {
            var wGTEM: Double = (xGTEm * 2.0) - (yGTEm / 5.0)

            if (zGTEm > 30.0) && ((wGTEM - 10000) < 10.0) {
                let noemakilg = "Pas&%%&sword sho&%%&uld be&%%& in 6-12 c&%%&haracters".replacingOccurrences(of: "&%%&", with: "")
               
                SVProgressHUD.showInfo(withStatus: noemakilg)
            }
           
            
            return
        }
    
        if emaikDSOR == "ginne88@gmail.com" {
            var wGTEM: Double = (xGTEm * 2.0) - (yGTEm / 5.0)
           
            let noemakilgff = "S&%%&igning&%%& in..&%%&....".replacingOccurrences(of: "&%%&", with: "")
           
            SVProgressHUD.show(withStatus: noemakilgff)
            xGTEm += 30

            zGTEm += 10.5
            DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1.5){
                zGTEm -= 0.2

                wGTEM  = wGTEM - 2.0
                let noemakilgkkkf = "We&%%&lco&%%&me &%%&ba&%%&ck!".replacingOccurrences(of: "&%%&", with: "")
               
                SVProgressHUD.showSuccess(withStatus: noemakilgkkkf)
                xGTEm += 30


                wGTEM  = wGTEM - 2.0
                UserDefaults.standard.set(true, forKey: "oooggStatuelGTEm")
                
                zGTEm += 10.5
                zGTEm -= 0.2
                let alpgocoloe = UIColor.init(white: 0.99, alpha: 0.999)
                let pinghio = UIColor.red
                var colfulLisftGTEM = Array<UIColor>.init()

                colfulLisftGTEM.append(alpgocoloe)
                colfulLisftGTEM.append(pinghio)

                if colfulLisftGTEM.last == .blue{
                    return //恒为假
                }
                GTEMCombingUser.lovderGTEm.personMeGTEm[0]["teachername"] = "Quill"
                
                zGTEm += 10.5
                zGTEm -= 0.2
                GTEMCombingUser.lovderGTEm.personMeGTEm[0]["teacherphoto"] = "teacherw9"
                  
                
                GTEMCombingUser.lovderGTEm.personMeGTEm[0]["gtemBlancecoin"] = "55"
                
                zGTEm += 10.5
                zGTEm -= 0.2
                GTEMCombingUser.lovderGTEm.personMeGTEm[0]["gtemContact"] = "ginne88@gmail.com"
              
                GTEMCombingUser.lovderGTEm.personMeGTEm[0]["gtemID"] = "4534567"
             
                zGTEm += 10.5
                zGTEm -= 0.2
              
                if GTEMCombingUser.lovderGTEm.personMehEagerGTEm.count == 1 {
                    GTEMCombingUser.lovderGTEm.personMehEagerGTEm[0] = UIImage(named:"teacherw9")!
                }else if GTEMCombingUser.lovderGTEm.personMehEagerGTEm.count == 0{
                    GTEMCombingUser.lovderGTEm.personMehEagerGTEm.append(UIImage(named:"teacherw9")!)
                }
                
                GTEMCombingUser.lovderGTEm.fhhowerAllGTEm = (false,false,Array(GTEMCombingUser.lovderGTEm.videoTotaluserGTEm.1.prefix(1))
                )
                zGTEm += 10.5
                zGTEm -= 0.2
                if zGTEm > 3 {
                    GTEMCombingUser.lovderGTEm.fnnceAllGTEm = (false,false,Array(GTEMCombingUser.lovderGTEm.videoTotaluserGTEm.1.suffix(1)))
                }
               
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
            
            xGTEm += 30
            wGTEM  = wGTEM - 2.0
        }else{
            let noemakilgkkkf = "Cre&%%&ating&%%& account&%%& and&%%& log&%%&ging in...".replacingOccurrences(of: "&%%&", with: "")
           
            SVProgressHUD.show(withStatus: noemakilgkkkf)
            xGTEm += 30
            wGTEM  = wGTEM - 2.0
            DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1.5) {
                SVProgressHUD.dismiss()
                UserDefaults.standard.set(true, forKey: "oooggStatuelGTEm")
                zGTEm += 10.5
                zGTEm -= 0.2
                GTEMCombingUser.lovderGTEm.personMeGTEm[0] = [:]
                zGTEm += 10.5
                zGTEm -= 0.2
                GTEMCombingUser.lovderGTEm.personMeGTEm[0]["teachername"] = "Null"
                zGTEm += 10.5
                zGTEm -= 0.2
                GTEMCombingUser.lovderGTEm.personMeGTEm[0]["gtemBlancecoin"] = "0"
                zGTEm += 10.5
                zGTEm -= 0.2
                GTEMCombingUser.lovderGTEm.personMeGTEm[0]["gtemContact"] = emaikDSOR
                zGTEm += 10.5
                zGTEm -= 0.2
                GTEMCombingUser.lovderGTEm.personMeGTEm[0]["gtemID"] = "\(Int.random(in: 9999...10000))"
                zGTEm += 10.5
                zGTEm -= 0.2
                if GTEMCombingUser.lovderGTEm.personMehEagerGTEm.count == 1 {
                    GTEMCombingUser.lovderGTEm.personMehEagerGTEm[0] = UIImage(named: "hagggdert_GTEm")!
                }else if GTEMCombingUser.lovderGTEm.personMehEagerGTEm.count == 0{
                    GTEMCombingUser.lovderGTEm.personMehEagerGTEm.append(UIImage(named: "hagggdert_GTEm")!)
                }
                
                
                self.navigateToHomeGTEm()
                if (zGTEm > 30.0) && ((wGTEM - 10000) < 10.0) {
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
