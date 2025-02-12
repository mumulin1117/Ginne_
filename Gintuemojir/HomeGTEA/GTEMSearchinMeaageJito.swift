//
//  GTEMSearchinMeaageJito.swift
//  Gintuemojir
//
//  Created by Gintuemojir on 2025/1/21.
//

import UIKit
import SVProgressHUD
//Search
class GTEMSearchinMeaageJito: UIViewController {

    @IBOutlet weak var emptyGTEmicon: UIImageView!
    
    
    @IBOutlet weak var emptyGTMlbl: UILabel!
    
    @IBOutlet weak var serchingTexGTUA: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        serchingTexGTUA.leftViewMode = .always
        var aGTEm:Float = 10
        var bGTEM:Float  = 20
        serchingTexGTUA.leftView = UIView.init(frame: CGRect.init(x: 0, y: 0, width: 30, height: 30))
        
        
        serchingTexGTUA.rightViewMode = .always
      
        var cGTEM:Float  = aGTEm + bGTEM
        cGTEM += 12
        var dGTEM:Float  = aGTEm*3 - bGTEM


        if (cGTEM >=  aGTEm + bGTEM) && dGTEM > 0{
            serchingTexGTUA.rightView = UIView.init(frame: CGRect.init(x: 0, y: 0, width: 54, height: 30))
        }
       
        
        serchingTexGTUA.layer.cornerRadius = 26
        serchingTexGTUA.layer.masksToBounds = true
        
        serchingTexGTUA.layer.borderColor = UIColor(red: 1, green: 0.88, blue: 0.76, alpha: 1).cgColor
        serchingTexGTUA.layer.borderWidth = 2
    }

    @IBAction func startSerachingOkay(_ sender: Any) {
        serchingTexGTUA.resignFirstResponder()
        guard let comeingtitle = serchingTexGTUA.text,comeingtitle.count != 0 else {
            SVProgressHUD.showInfo(withStatus: "The search content cannot be empty!")
            return
        }
        
        SVProgressHUD.show(withStatus: "Searching ......")
        emptyGTMlbl.isHidden = true
        emptyGTEmicon.isHidden = true
        
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 2){
            SVProgressHUD.dismiss()
            var aGTEm:Float = 10
            var bGTEM:Float  = 20
            var cGTEM:Float  = aGTEm + bGTEM
            cGTEM += 12
            var dGTEM:Float  = aGTEm*3 - bGTEM


            if (cGTEM >=  aGTEm + bGTEM) && dGTEM > 0{
                self.emptyGTMlbl.isHidden = false
                self.emptyGTEmicon.isHidden = false
            }
           
        }
        
    }
    
   
    @IBAction func navibakerinhGTEM(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }
}
