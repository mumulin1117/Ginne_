//
//  GTEMCommenttMojito.swift
//  Gintuemojir
//
//  Created by Gintuemojir on 2025/2/6.
//

import UIKit
import JGProgressHUD

class GTEMCommenttMojito: UIViewController {
    @IBOutlet weak var sayTexGTUA: UITextField!
    @IBOutlet weak var yeticonGTEM: UIImageView!
    
    @IBOutlet weak var yettextGTEM: UILabel!
    
    
    @IBOutlet weak var mephotoonGTEM: UIImageView!
    @IBOutlet weak var namecontetnlkblGTEm: UILabel!
    @IBOutlet weak var commentcontetnlkblGTEm: UILabel!
    
    @IBOutlet weak var countGTEm: UILabel!
    
    
    
    
    
    
    private  var realingUserDtaGTEm:Dictionary<String,String>
    init(aginestGTEm:[Float]?,ddleToolGTEM:[Float]?,tationTimerGTEM: Timer?, realingUserDtaGTEm: Dictionary<String, String>) {
        
        

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
        
        sayTexGTUA.backgroundColor = UIColor(red: 0.24, green: 0.11, blue: 0.1, alpha: 1)
        sayTexGTUA.layer.cornerRadius = 22
        sayTexGTUA.layer.masksToBounds = true
        

        



        
        sayTexGTUA.rightViewMode = .always
        sayTexGTUA.rightView = UIView.init(frame: CGRect.init(x: 0, y: 0, width: 54, height: 30))
        
        mephotoonGTEM.layer.cornerRadius = 20
        
        
       
        mephotoonGTEM.layer.masksToBounds = true
        
        mephotoonGTEM.image = GTEMCombingUser.lovderGTEm.personMehEagerGTEm.first
        

        

       
        if realingUserDtaGTEm["commentsaying"] == nil {
            mephotoonGTEM.isHidden = true
            namecontetnlkblGTEm.isHidden = true
            commentcontetnlkblGTEm.isHidden = true
            countGTEm.text = "0 c&%%&ommen&%%&ts".replacingOccurrences(of: "&%%&", with: "")
            
        }else{
            yeticonGTEM.isHidden = true
            yettextGTEM.isHidden = true
            countGTEm.text = "1 c&%%&ommen&%%&ts".replacingOccurrences(of: "&%%&", with: "")
            
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

                let hudLoadingGTEM = JGProgressHUD(style: .light)
                hudLoadingGTEM.textLabel.text = "Loa->->ding->->...".replacingOccurrences(of: "->->", with: "")
                hudLoadingGTEM.show(in: self.view)
               
                
                DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1.0){
                    self.yeticonGTEM.isHidden = true
                    self.yettextGTEM.isHidden = true
                    
                  

                    
                    self.mephotoonGTEM.isHidden = false
                    self.namecontetnlkblGTEm.isHidden = false
                    self.commentcontetnlkblGTEm.isHidden = false
                    self.commentcontetnlkblGTEm.text = conted
                }
                for( oip,iew) in GTEMCombingUser.lovderGTEm.videoTotaluserGTEm.1.enumerated() {
                    
                    
                    
                    

                    

                    if realingUserDtaGTEm["gtemID"] == iew["gtemID"]{
                        GTEMCombingUser.lovderGTEm.videoTotaluserGTEm.1[oip]["commentsaying"] = conted
                        hudLoadingGTEM.dismiss()
                        
                        countGTEm.text =  "1 c&%%&ommen&%%&ts".replacingOccurrences(of: "&%%&", with: "")
                        realingUserDtaGTEm["commentsaying"] = conted
                    }
                }
                
                return
                
            }
            let hudINfoGTEM = JGProgressHUD(style: .light)
            hudINfoGTEM.textLabel.text = "An &%%&empty&%%& comment&%%& can&%%&not be subm&%%&itted!!".replacingOccurrences(of: "&%%&", with: "")
            hudINfoGTEM.indicatorView = JGProgressHUDErrorIndicatorView(image: UIImage.init(named: "Rewort_GTEA")!)
            hudINfoGTEM.show(in: self.view)
            hudINfoGTEM.dismiss(afterDelay: 2.0)
           
            
        }else{
                        let hudINfoGTEM = JGProgressHUD(style: .light)
            hudINfoGTEM.textLabel.text = "Sorry, your comments are too frequent"
            hudINfoGTEM.indicatorView = JGProgressHUDErrorIndicatorView(image: UIImage.init(named: "Rewort_GTEA")!)
            hudINfoGTEM.show(in: self.view)
            hudINfoGTEM.dismiss(afterDelay: 2.0)
           
            
            
        }
    }
}
