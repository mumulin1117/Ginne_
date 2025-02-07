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
    
    var realingUserDtaGTEm:Dictionary<String,String>
    init( realingUserDtaGTEm: Dictionary<String, String>) {
       
        self.realingUserDtaGTEm = realingUserDtaGTEm
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    @IBAction func fanhuigvds(_ sender: UIButton) {
        self.dismiss(animated: true)
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        sayTexGTUA.leftViewMode = .always
        sayTexGTUA.leftView = UIView.init(frame: CGRect.init(x: 0, y: 0, width: 30, height: 30))
        sayTexGTUA.rightViewMode = .always
        sayTexGTUA.rightView = UIView.init(frame: CGRect.init(x: 0, y: 0, width: 54, height: 30))
        sayTexGTUA.backgroundColor = UIColor(red: 0.24, green: 0.11, blue: 0.1, alpha: 1)
        sayTexGTUA.layer.cornerRadius = 22
        sayTexGTUA.layer.masksToBounds = true
        mephotoonGTEM.layer.cornerRadius = 20
        mephotoonGTEM.layer.masksToBounds = true
        mephotoonGTEM.image = GTEMCombingUser.lovderGTEm.personMehEagerGTEm
        if realingUserDtaGTEm["commentsaying"] == nil {
            mephotoonGTEM.isHidden = true
            namecontetnlkblGTEm.isHidden = true
            commentcontetnlkblGTEm.isHidden = true
            countGTEm.text = "0 comments"
        }else{
            yeticonGTEM.isHidden = true
            yettextGTEM.isHidden = true
            countGTEm.text = "1 comments"
            commentcontetnlkblGTEm.text = realingUserDtaGTEm["commentsaying"]
        }
       
        mephotoonGTEM.layer.cornerRadius = 20
        mephotoonGTEM.layer.masksToBounds = true
        
        
        
        
    }

    
    @IBAction func stargerSendGTEU(_ sender: Any) {
        if realingUserDtaGTEm["commentsaying"] == nil {
            
            
            if let conted = sayTexGTUA.text, conted.count != 0 {
                
                sayTexGTUA.resignFirstResponder()
                sayTexGTUA.text = nil
                SVProgressHUD.show()
                
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
                
                
                
            }else{
                SVProgressHUD.showInfo(withStatus: "A empty comment cannot be send!!!")
                
            }
            
        }else{
            
            SVProgressHUD.showInfo(withStatus: "Sorry, your comments are too frequent")
            
            
        }
    }
}
