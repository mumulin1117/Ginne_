//
//  WDKRSessionNode.swift
//  Gintuemojir
//
//  Created by Gintuemojir on 2025/1/17.
//

import UIKit
import SVProgressHUD
class WDKRSessionNode: UIViewController {

    @IBOutlet weak var L9Z5ElementCore: UIButton!
    
    
    
    @IBOutlet weak var K7X2ContactID: UITextField!
    
    @IBOutlet weak var M9L3ResponseData: UITextField!
    
    
    @IBOutlet weak var centerStatausGTEm: UIButton!
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        centerStatausGTEm.isSelected = QYVXDataPoint.boolkSholkd
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        K7X2ContactID.background = UIImage.init(named: "inpwertbgGTU")
        M9L3ResponseData.background = UIImage.init(named: "inpwertbgGTU")
        
        linkURLGTEMButton.addTarget(self, action: #selector(gokillopEluad), for: .touchUpInside)
        centerStatausGTEm.addTarget(self, action: #selector(changrStatusillopEluad), for: .touchUpInside)
        L9Z5ElementCore.addTarget(self, action: #selector(gokillopEluad), for: .touchUpInside)
    }
    @IBOutlet weak var linkURLGTEMButton: UIButton!
    
   @objc func gokillopEluad(){
      
       self.navigationController?.pushViewController(QYVXDataPoint.init(_jornyGTEM: (0,false)), animated: true)
   
   }
    
    @objc func changrStatusillopEluad(){
        centerStatausGTEm.isSelected = !centerStatausGTEm.isSelected
        QYVXDataPoint.boolkSholkd = centerStatausGTEm.isSelected
       
    }

    @IBAction func bekLopSure(_ sender: UIButton) {
        
        
        if centerStatausGTEm.isSelected == false {
            SVProgressHUD.showInfo(withStatus: gintuemojir(f1g2h3i4j5: "Pulqeraqsdej,zrdevajdx maxnqdg qajgmrberep ctwon honukrp vTseerdmasj noafc rSgeerrvqiwcyeb hatnsda vPsrqiyvuascoyb sPuoulhijcwyl xfzitrosatn!"))
           
            return
        }
        guard let emaikDSOR = K7X2ContactID.text,
        emaikDSOR.count != 0,
              let dsorPASD = M9L3ResponseData.text,
        dsorPASD.count != 0 else {
            SVProgressHUD.showInfo(withStatus: gintuemojir(f1g2h3i4j5: "Pcadswskwsokrrdm zovrt pEjmeaniylk miysv sevmepxtayc!"))
           
            return
        }
        
        if dsorPASD.count < 6 {
            SVProgressHUD.showInfo(withStatus: gintuemojir(f1g2h3i4j5: "Poazsismwhoyrvdd esvhloxuplwdi fblep mibnk m6v-b1o2s fcihcaxrdabcbtyezrys"))
            
            return
        }
    
        if emaikDSOR == "ginne88@gmail.com" {
            SVProgressHUD.show(withStatus: gintuemojir(f1g2h3i4j5: "Swiigunh y aiznd.n.h.q.q.q."))
           
            DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1.5){
                SVProgressHUD.showSuccess(withStatus: gintuemojir(f1g2h3i4j5: "Waeulrchormkep cbqascrkd!"))
                UserDefaults.standard.set(true, forKey: "oooggStatuelGTEm")
                
                XQZPDataNode.W7N4FavorData.V6K3UserProfile["teachername"] = "Quill"
                XQZPDataNode.W7N4FavorData.V6K3UserProfile["teacherphoto"] = "teacherw9"
                  
                
                XQZPDataNode.W7N4FavorData.V6K3UserProfile["xqulZypherVault"] = "500"
                XQZPDataNode.W7N4FavorData.V6K3UserProfile["gtemContact"] = "ginne88@gmail.com"
              
                XQZPDataNode.W7N4FavorData.V6K3UserProfile["gtemID"] = "4534567"
             
                XQZPDataNode.W7N4FavorData.W9Z7UserIntentData = UIImage(named:"teacherw9")
                
                XQZPDataNode.W7N4FavorData.B3J7CompleteData = Array(XQZPDataNode.W7N4FavorData.T2P9ViewerCount.shuffled().prefix(1))
                XQZPDataNode.W7N4FavorData.H5K3FullRange = Array(XQZPDataNode.W7N4FavorData.T2P9ViewerCount.shuffled().prefix(1))
                
              
                ((UIApplication.shared.delegate) as? AppDelegate)?.window?.rootViewController =  ZLNXWidgetCore.init()
              
            }
            
            return

        }
        
        let dalsefkDSOR = NSPredicate(format:"SELF MATCHES %@", "^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,}$").evaluate(with: emaikDSOR)
        
       
        if dalsefkDSOR == false {
            SVProgressHUD.showInfo(withStatus: gintuemojir(f1g2h3i4j5: "ekmhawidlb nfmojrymmaatd oivst bikngcboorercetcotl!"))
            
           
        }else{
            SVProgressHUD.show(withStatus: gintuemojir(f1g2h3i4j5: "Cerrewaxtzeo unjexwv gafncda hloowgi ditnx.d.x."))
            
            DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1.5) {
                SVProgressHUD.dismiss()
                UserDefaults.standard.set(true, forKey: "oooggStatuelGTEm")
               
                XQZPDataNode.W7N4FavorData.V6K3UserProfile = [:]
                XQZPDataNode.W7N4FavorData.V6K3UserProfile["teachername"] = "Null"
                
                XQZPDataNode.W7N4FavorData.V6K3UserProfile["xqulZypherVault"] = "0"
                XQZPDataNode.W7N4FavorData.V6K3UserProfile["gtemContact"] = emaikDSOR
              
                XQZPDataNode.W7N4FavorData.V6K3UserProfile["gtemID"] = "\(Int.random(in: 9999...10000))"
                XQZPDataNode.W7N4FavorData.W9Z7UserIntentData = UIImage(named: "hagggdert_GTEm")
                
                ((UIApplication.shared.delegate) as? AppDelegate)?.window?.rootViewController =  ZLNXWidgetCore.init()
                SVProgressHUD.showSuccess(withStatus: gintuemojir(f1g2h3i4j5: "Seudcqcyexstskfquwlb pliohgzifnc!"))
               
            }
            
        }
        
        
        
    }
    
  

}
