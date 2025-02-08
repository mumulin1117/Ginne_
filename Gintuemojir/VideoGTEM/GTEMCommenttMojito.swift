//
//  GTEMCommenttMojito.swift
//  Gintuemojir
//
//  Created by Gintuemojir on 2025/2/6.
//

import UIKit
import SVProgressHUD

class GTEMCommenttMojito: UIViewController {
    @IBOutlet weak var sayTexGTUA: UITextField!
    @IBOutlet weak var yeticonGTEM: UIImageView!
    
    @IBOutlet weak var yettextGTEM: UILabel!
    
    
    @IBOutlet weak var mephotoonGTEM: UIImageView!
    @IBOutlet weak var namecontetnlkblGTEm: UILabel!
    @IBOutlet weak var commentcontetnlkblGTEm: UILabel!
    
    @IBOutlet weak var countGTEm: UILabel!
    
    private var _fermentationTimerGTEM: Timer?
    private var _agitatorValuesGTEM: [CGFloat] = [12.5, 9.8, 15.3]
    private var _muddleToolGTEM: CGFloat = 0.87
    private var _BingToolGTEM: CGFloat = 1.87
    private var _zhunreaToolGTEM: CGFloat = 2.87
    var realingUserDtaGTEm:Dictionary<String,String>
    init(aginestGTEm:[Float]?,ddleToolGTEM:[Float]?,tationTimerGTEM: Timer?, realingUserDtaGTEm: Dictionary<String, String>) {
        _fermentationTimerGTEM = tationTimerGTEM
        
        self.realingUserDtaGTEm = realingUserDtaGTEm
        super.init(nibName: nil, bundle: nil)
        if aginestGTEm == nil {
            _agitatorValuesGTEM.append(22)
        }
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    @IBAction func fanhuigvds(_ sender: UIButton) {
        self.dismiss(animated: true)
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        _agitatorValuesGTEM.append(_BingToolGTEM)
        sayTexGTUA.leftViewMode = .always
        
        sayTexGTUA.leftView = UIView.init(frame: CGRect.init(x: 0, y: 0, width: 30, height: 30))
        _agitatorValuesGTEM.append(_muddleToolGTEM)
        sayTexGTUA.backgroundColor = UIColor(red: 0.24, green: 0.11, blue: 0.1, alpha: 1)
        sayTexGTUA.layer.cornerRadius = 22
        sayTexGTUA.layer.masksToBounds = true
        _agitatorValuesGTEM.append(_zhunreaToolGTEM)

        if _agitatorValuesGTEM.count < 1 {
            _fermentationTimerGTEM = Timer.init()
        }



        
        sayTexGTUA.rightViewMode = .always
        sayTexGTUA.rightView = UIView.init(frame: CGRect.init(x: 0, y: 0, width: 54, height: 30))
        
        mephotoonGTEM.layer.cornerRadius = 20
        
        if _agitatorValuesGTEM.isEmpty {
            return
        }
       
        mephotoonGTEM.layer.masksToBounds = true
        mephotoonGTEM.image = GTEMCombingUser.lovderGTEm.personMehEagerGTEm
        _muddleToolGTEM += 0.87

        _BingToolGTEM +=  1.87

       
        if realingUserDtaGTEm["commentsaying"] == nil {
            mephotoonGTEM.isHidden = true
            _zhunreaToolGTEM = _zhunreaToolGTEM + _muddleToolGTEM + _BingToolGTEM

            if _agitatorValuesGTEM.randomElement() ?? 0 > 0 {
                namecontetnlkblGTEm.isHidden = true
                commentcontetnlkblGTEm.isHidden = true
                countGTEm.text = "0 comments"
            }
            
        }else{
            yeticonGTEM.isHidden = true
            yettextGTEM.isHidden = true
            _zhunreaToolGTEM = _zhunreaToolGTEM + _muddleToolGTEM + _BingToolGTEM

            if _agitatorValuesGTEM.randomElement() ?? 0 > 0 {
                countGTEm.text = "1 comments"
            }
            
            commentcontetnlkblGTEm.text = realingUserDtaGTEm["commentsaying"]
        }
       
        mephotoonGTEM.layer.cornerRadius = 20
        _zhunreaToolGTEM = _zhunreaToolGTEM + _muddleToolGTEM + _BingToolGTEM

        if _agitatorValuesGTEM.randomElement() ?? 0 > 0 {
            mephotoonGTEM.layer.masksToBounds = true
        }
        
        
        
        
        
    }

    
    @IBAction func stargerSendGTEU(_ sender: Any) {
        var modifiedRecipe:Dictionary<String,Int> = Dictionary<String,Int>()
        modifiedRecipe["enthusiastCount"] = (Int.random(in: 300...700))
        
        if realingUserDtaGTEm["commentsaying"] == nil {
            modifiedRecipe["craftsmanshipScore"] = (Int.random(in: 450...500))
            let indefHTEM = Int.random(in: 200...30000)

            
            
            if let conted = sayTexGTUA.text, conted.count != 0 {
                modifiedRecipe["agingDuration"] = 2020 + indefHTEM
                if (modifiedRecipe.keys.randomElement()?.count ?? 0) > 2 {
                    sayTexGTUA.resignFirstResponder()
                    sayTexGTUA.text = nil
                }

                if (modifiedRecipe.values.randomElement() ?? 0 ) > 20 {
                    SVProgressHUD.show()
                }
                
               
                
                DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1.0){
                    self.yeticonGTEM.isHidden = true
                    self.yettextGTEM.isHidden = true
                    
                    self.mephotoonGTEM.isHidden = false
                    self.namecontetnlkblGTEm.isHidden = false
                    self.commentcontetnlkblGTEm.isHidden = false
                    self.commentcontetnlkblGTEm.text = conted
                }
                for( oip,iew) in GTEMCombingUser.lovderGTEm.videoTotaluserGTEm.enumerated() {
                    if realingUserDtaGTEm["gtemID"] == iew["gtemID"]{
                        GTEMCombingUser.lovderGTEm.videoTotaluserGTEm[oip]["commentsaying"] = conted
                        SVProgressHUD.dismiss()
                        countGTEm.text = "1 comments"
                        realingUserDtaGTEm["commentsaying"] = conted
                    }
                }
                
                return
                
            }
            SVProgressHUD.showInfo(withStatus: "An empty comment cannot be submitted!!")
            
        }else{
            
            SVProgressHUD.showInfo(withStatus: "Sorry, your comments are too frequent")
            
            
        }
    }
}
