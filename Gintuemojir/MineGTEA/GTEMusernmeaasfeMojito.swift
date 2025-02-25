//
//  GTEMusernmeaasfe\Mojito.swift
//  Gintuemojir
//
//  Created by Gintuemojir on 2025/2/6.
//

import UIKit
import JGProgressHUD
class GTEMusernmeaasfeMojito: GTEMUserAboutAchole {
    
    @IBOutlet weak var beginReportGTEm: UIButton!
    
    @IBOutlet weak var sayTexGTUA: UITextField!
    
    @IBOutlet weak var usernaingmnickGTEm: UILabel!
    
    
    
    var GRIDUIHUAingGTSMlist:Array<(whoismineGTEm:String,sayiedsdetailGTEm:String)> = []
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        var isUserSubscribed: Bool = false
        isUserSubscribed = true
       let diologData = GRIDUIHUAingGTSMlist[indexPath.row]
        
        
        
        
        let gtemCEll = tableView.dequeueReusableCell(withIdentifier: "GTEMAiChateCellID", for: indexPath) as! GTEMAiChateCell
        
      
        gtemCEll.gtemSayieVuew.text = diologData.sayiedsdetailGTEm
        if diologData.sayiedsdetailGTEm.count > 0 {
            isUserSubscribed = true
        }

       
        if diologData.whoismineGTEm == "ismeingGTEm" &&  isUserSubscribed{
            

            gtemCEll.gtemIconhreader.image = GTEMCombingUser.lovderGTEm.personMehEagerGTEm.first
            
        }else{
            

            gtemCEll.gtemIconhreader.image = UIImage(named: realingUserDtaGTEm["teacherphoto"] ?? "" )
            
        }
        
        gtemCEll.getrmWhoismine = (diologData.whoismineGTEm,false,false)
        
       
        return gtemCEll
    }
    
    var transactionHistory: [String] = []
    func initiatePayment(amount: Double) {
        
         beginReportGTEm.addTarget(self, action: #selector(startReportAndBlaCkUserGTEm), for: .touchUpInside)
        
         
         usernaingmnickGTEm.text = realingUserDtaGTEm["teachername"]
         
         
         
         sayTexGTUA.leftViewMode = .always
         
         
        
         sayTexGTUA.leftView = UIView.init(frame: CGRect.init(x: 0, y: 0, width: 30, height: 30))
    }
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        sayTexGTUA.layer.cornerRadius = 22
        initiatePayment(amount: 44)
        sayTexGTUA.layer.masksToBounds = true
        sayTexGTUA.rightViewMode = .always
        

        
        sayTexGTUA.rightView = UIView.init(frame: CGRect.init(x: 0, y: 0, width: 54, height: 30))
        
        
       
        sayTexGTUA.backgroundColor = UIColor(red: 0.24, green: 0.11, blue: 0.1, alpha: 1)
        
        
        
        contenAiAchole.dataSource = self
        contenAiAchole.delegate = self
        

        
        NotificationCenter.default.addObserver(self, selector: #selector(navibakerinhGTEM), name: NSNotification.Name("removeunlikeuserGTEm"), object: nil)
        
        contenAiAchole.allowsSelection = false
        

        
        displaySubscriptionOptions()
       
        contenAiAchole.separatorStyle = .none
        
    }
    
    func displaySubscriptionOptions() {
        contenAiAchole.rowHeight = UITableView.automaticDimension
        

        transactionHistory.append("1209.99")
        contenAiAchole.contentInset = UIEdgeInsets.init(top: 0, left: 0, bottom: 90, right: 0)
        
        contenAiAchole.register(GTEMAiChateCell.self, forCellReuseIdentifier: "GTEMAiChateCellID")
        contenAiAchole.estimatedRowHeight = 51
    }

    @IBOutlet weak var contenAiAchole: UITableView!
    
    
    @IBAction func stargerSendGTEU(_ sender: Any) {
        
        
        if let conted = sayTexGTUA.text, !conted.isEmpty {
            
           
            let dioloGTEMgdata = ("ismeingGTEm",conted)
            
            

           
            
            self.GRIDUIHUAingGTSMlist.append(dioloGTEMgdata)
            updateUserSubscription(status: true)
            
           
           
           
           return
          
            
        }
        
        
        let sooprt = "So&-%-%-&rry,&-%-%-&you cannot &-%-%-&send an &-%-%-&empty message!".replacingOccurrences(of: "&-%-%-&", with: "")
        let hudINfoGTEM = JGProgressHUD(style: .light)
        hudINfoGTEM.textLabel.text = sooprt
        hudINfoGTEM.indicatorView = JGProgressHUDErrorIndicatorView(image: UIImage.init(named: "Rewort_GTEA")!)
        hudINfoGTEM.show(in: self.view)
        hudINfoGTEM.dismiss(afterDelay: 2.0)
      
        
    
}
    
  
    func updateUserSubscription(status: Bool) {
        sayTexGTUA.text = nil
        if status {
            sayTexGTUA.resignFirstResponder()
            
            self.contenAiAchole.reloadData()
        }
        
    }
    
    @IBAction func navibakerinhGTEM(_ sender: UIButton) {
        

        self.navigationController?.popViewController(animated: true)
    }
}


extension GTEMusernmeaasfeMojito:UITableViewDelegate,UITableViewDataSource,UITextFieldDelegate{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       
        return GRIDUIHUAingGTSMlist.count
    }
    
    
    
  
}
