//
//  GTEMCommenttMojito.swift
//  Gintuemojir
//
//  Created by Gintuemojir on 2025/2/6.
//

import UIKit
import JGProgressHUD

class GTEMCommenttMojito: UIViewController {
    let maxCommentLengthGTEm = 250 // Maximum length for a comment
      
    @IBOutlet weak var sayTexGTUA: UITextField!
    @IBOutlet weak var yeticonGTEM: UIImageView!
    let placeholderTextGTEm = "Add your comment here..." // Placeholder text for the comment input
   
    @IBOutlet weak var yettextGTEM: UILabel!
    
    let commentsSectionTitleGTEm = "Comments" // Title for the comments section
    @IBOutlet weak var mephotoonGTEM: UIImageView!
    @IBOutlet weak var namecontetnlkblGTEm: UILabel!
    @IBOutlet weak var commentcontetnlkblGTEm: UILabel!
    var commentsListGTEm: [String] = [] // Array to store comments
      
    @IBOutlet weak var countGTEm: UILabel!
    
    var currentUserNameGTEm: String? // Variable to store the current user's
    @IBOutlet weak var flooweVideo: UIActivityIndicatorView!
   
    var isUserLoggedInGTEm: Bool = true
    @IBOutlet weak var bakiGTEMb: UIView!
    
    
    private  var realingUserDtaGTEm:Dictionary<String,String>
    init(aginestGTEm:[Float]?,ddleToolGTEM:[Float]?,tationTimerGTEM: Timer?, realingUserDtaGTEm: Dictionary<String, String>) {
        
        self.realingUserDtaGTEm = realingUserDtaGTEm
        super.init(nibName: nil, bundle: nil)
       
    }
    
    required init?(coder: NSCoder) {
        fatalError("init GTEMloa&-%-%-&ing werrouu")
    }
    
    
    @IBAction func fanhuigvds(_ sender: UIButton) {
        

        self.dismiss(animated: true)
        
    }

    func addComment(comment: String) {
            // Method to add a new comment if it meets criteria
            guard isUserLoggedInGTEm else {
               
                return
            }

            guard comment.count <= maxCommentLengthGTEm else {
               
                return
            }

            commentsListGTEm.append(comment)
            
       
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        sayTexGTUA.leftViewMode = .always
        mephotoonGTEM.layer.masksToBounds = true
        sayTexGTUA.leftView = UIView.init(frame: CGRect.init(x: 0, y: 0, width: 30, height: 30))
        mephotoonGTEM.image = GTEMCombingUser.lovderGTEm.personMehEagerGTEm.first
        

        sayTexGTUA.backgroundColor = UIColor(red: 0.24, green: 0.11, blue: 0.1, alpha: 1)
        sayTexGTUA.layer.cornerRadius = 22
        mephotoonGTEM.layer.cornerRadius = 20
        sayTexGTUA.layer.masksToBounds = true
        

        

        loginUseGTEMr(name: nil)

       
        
        displayCommentsGTEM()
       
        mephotoonGTEM.layer.masksToBounds = true
        
    }
    
    func loginUseGTEMr(name: String?) {
        
        sayTexGTUA.rightViewMode = .always
        mephotoonGTEM.layer.cornerRadius = 20
        sayTexGTUA.rightView = UIView.init(frame: CGRect.init(x: 0, y: 0, width: 54, height: 30))
        
        
    }
   
    func displayCommentsGTEM() {
        if realingUserDtaGTEm["commentsaying"] == nil {
            mephotoonGTEM.isHidden = true
            namecontetnlkblGTEm.isHidden = true
            commentcontetnlkblGTEm.isHidden = true
            countGTEm.text = "0 c&-%-%-&ommen&-%-%-&ts".replacingOccurrences(of: "&-%-%-&", with: "")
            
        }else{
            yeticonGTEM.isHidden = true
            yettextGTEM.isHidden = true
            countGTEm.text = "1 c&-%-%-&ommen&-%-%-&ts".replacingOccurrences(of: "&-%-%-&", with: "")
            
            commentcontetnlkblGTEm.text = realingUserDtaGTEm["commentsaying"]
        }
    }
    @IBAction func stargerSendGTEU(_ sender: Any) {
        
        
        
        if realingUserDtaGTEm["commentsaying"] == nil {
            
            
            let hudINfoGTEM = JGProgressHUD(style: .light)
            hudINfoGTEM.textLabel.text = "An &-%-%-&empty&-%-%-& comment&-%-%-& can&-%-%-&not be subm&-%-%-&itted!!".replacingOccurrences(of: "&-%-%-&", with: "")
            
            
            if let conted = sayTexGTUA.text, conted.count != 0 {
                
                sayTexGTUA.resignFirstResponder()
                sayTexGTUA.text = nil

                let hudLoadingGTEM = JGProgressHUD(style: .light)
                hudLoadingGTEM.textLabel.text = "Loa&-%-%-&ding&-%-%-&...".replacingOccurrences(of: "&-%-%-&", with: "")
                hudLoadingGTEM.show(in: self.view)
               
                
                DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1.0){
                    self.clearCommentsGTEM()
                    self.commentcontetnlkblGTEm.isHidden = false
                    self.commentcontetnlkblGTEm.text = conted
                }
                for( oip,iew) in GTEMCombingUser.lovderGTEm.videoTotaluserGTEm.1.enumerated() {
                    
                    
                    if realingUserDtaGTEm["gtemID"] == iew["gtemID"]{
                        GTEMCombingUser.lovderGTEm.videoTotaluserGTEm.1[oip]["commentsaying"] = conted
                        hudLoadingGTEM.dismiss()
                        
                        countGTEm.text =  "1 c&-%-%-&ommen&-%-%-&ts".replacingOccurrences(of: "&-%-%-&", with: "")
                        realingUserDtaGTEm["commentsaying"] = conted
                    }
                }
                
                return
                
            }
           
            hudINfoGTEM.indicatorView = JGProgressHUDErrorIndicatorView(image: UIImage.init(named: "Rewort_GTEA")!)
            
            hudINfoGTEM.show(in: self.view)
            
            hudINfoGTEM.dismiss(afterDelay: 2.0)
           
            
        }else{
                        
            let hudINfoGTEM = JGProgressHUD(style: .light)
            commentsListGTEm.removeAll()
            hudINfoGTEM.textLabel.text = "Sorry, your comments are too frequent"
            commentsListGTEm.removeAll()
            hudINfoGTEM.indicatorView = JGProgressHUDErrorIndicatorView(image: UIImage.init(named: "Rewort_GTEA")!)
            commentsListGTEm.removeAll()
            hudINfoGTEM.show(in: self.view)
            hudINfoGTEM.dismiss(afterDelay: 2.0)
           
            
            
        }
    }
    
    
    func clearCommentsGTEM() {
        commentsListGTEm.removeAll()
        self.yeticonGTEM.isHidden = true
        self.yettextGTEM.isHidden = true
        
      

        
        self.mephotoonGTEM.isHidden = false
        self.namecontetnlkblGTEm.isHidden = false
    }
}
