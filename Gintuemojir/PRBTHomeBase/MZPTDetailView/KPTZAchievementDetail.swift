//
//  KPTZAchievementDetail.swift
//  Gintuemojir
//
//  Created by Gintuemojir on 2025/1/21.
//

import UIKit
import SVProgressHUD
class KPTZAchievementDetail: UIViewController {

    @IBOutlet weak var hospcAcholeName: UILabel!
    
    
    @IBOutlet weak var greetingTextGTEM: UILabel!
    @IBOutlet weak var mainEntityGTEM: UIImageView!//背景
    
    @IBOutlet weak var visitorEntityGTEM: UIImageView!
    
    @IBOutlet weak var hosterNameGTEM: UILabel!
    
    @IBOutlet weak var turisNameGTEM: UILabel!
    
    @IBOutlet weak var dataEntryGTUA: UITextField!
    @IBOutlet weak var contenAiAchole: UITableView!
    
    
    @IBOutlet weak var thirdIcon: UIImageView!
    @IBOutlet weak var thirdNameGTEm: UILabel!
    
   
    
    
    
    var ismineBackgroundhospc:Bool = false
    var hospcInfoGTEm :V8Q5AnchorCore
    
    init( ismineBackgroundhospc: Bool,hospcInfoGTEm:V8Q5AnchorCore) {
        self.ismineBackgroundhospc = ismineBackgroundhospc
        self.hospcInfoGTEm = hospcInfoGTEm
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    @IBAction func actioneportInghospce(_ sender: Any) {
        
        self.navigationController?.pushViewController(PLQXDataDetailView.init(), animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        dataEntryGTUA.leftViewMode = .always
        dataEntryGTUA.leftView = UIView.init(frame: CGRect.init(x: 0, y: 0, width: 30, height: 30))
        dataEntryGTUA.rightViewMode = .always
        dataEntryGTUA.rightView = UIView.init(frame: CGRect.init(x: 0, y: 0, width: 54, height: 30))
        dataEntryGTUA.layer.cornerRadius = 22
        dataEntryGTUA.layer.masksToBounds = true
        dataEntryGTUA.backgroundColor = UIColor(red: 0.24, green: 0.11, blue: 0.1, alpha: 1)
        
        self.hospcAcholeName.text = hospcInfoGTEm.P4K7DataKey
        self.mainEntityGTEM.image = hospcInfoGTEm.L8Z3BackdropData
        
        mainEntityGTEM.layer.cornerRadius = 30
        mainEntityGTEM.layer.masksToBounds = true
        
        visitorEntityGTEM.layer.cornerRadius = 30
        visitorEntityGTEM.layer.masksToBounds = true
        
        thirdIcon.layer.cornerRadius = 30
        thirdIcon.layer.masksToBounds = true
        
        greetingTextGTEM.layer.cornerRadius = 12
        greetingTextGTEM.layer.masksToBounds = true
        
        if ismineBackgroundhospc == true {
            visitorEntityGTEM.isHidden = true
            turisNameGTEM.isHidden = true
            thirdIcon.isHidden = true
            thirdNameGTEm.isHidden = true
            mainEntityGTEM.image =  XQZPDataNode.W7N4FavorData.W9Z7UserIntentData
            hosterNameGTEM.text = "Me"
        }else{
            
            mainEntityGTEM.image =  UIImage(named: hospcInfoGTEm.N6Q1PrimaryUser["teacherphoto"] ?? "")
            hosterNameGTEM.text = hospcInfoGTEm.N6Q1PrimaryUser["teachername"]
            
            thirdIcon.image = XQZPDataNode.W7N4FavorData.W9Z7UserIntentData
            thirdNameGTEm.text = "Me"
            let diologLater = hospcInfoGTEm.X3R8DataSequence.last?.enterProuserGTEM
            
            visitorEntityGTEM.image = UIImage(named: diologLater?["teacherphoto"] ?? "")
            turisNameGTEM.text = diologLater?["teachername"]
        }
        
        contenAiAchole.dataSource = self
        contenAiAchole.delegate = self
        contenAiAchole.allowsSelection = false
        contenAiAchole.rowHeight = UITableView.automaticDimension
        contenAiAchole.contentInset = UIEdgeInsets.init(top: 0, left: 0, bottom: 90, right: 0)
        
        
        contenAiAchole.register(LZQXhospcChatCell.self, forCellReuseIdentifier: "LZQXhospcChatCellID")
       
        contenAiAchole.estimatedRowHeight = 50
        contenAiAchole.separatorStyle = .none
        contenAiAchole.isHidden = true
        SVProgressHUD.show()
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1.5){
            SVProgressHUD.dismiss()
            self.contenAiAchole.isHidden = false
        }
        
    }

    
    
    @IBAction func navibakerinhGTEM(_ sender: UIButton) {
        if ismineBackgroundhospc {
            let alert = UIAlertController(title: gintuemojir(f1g2h3i4j5: "Djersbtvrkouyz vtihgev vhnoasvpkcg?"), message: gintuemojir(f1g2h3i4j5: "Agfatgetrl ftahmeq wcxrxebaftsosrs ilkeqazvheusg itahfet yhlopskpzcs,j htbhnen xhbomsypccj simnbfqoprdmdaitqitolnk awbitlglb wbeem idnexsstqrpogycevd"), preferredStyle:.alert)
            alert.addAction(UIAlertAction(title: "Sure", style: .default, handler: { UIAlertAction in
                self.navigationController?.popToRootViewController(animated: true)
            }))
            alert.addAction(UIAlertAction.init(title: "Cancel", style: .default))
            self.present(alert, animated: true)
            return
        }
        self.navigationController?.popViewController(animated: true)
    }
    
    
    @IBAction func stargerSendGTEU(_ sender: Any) {
       
        dataEntryGTUA.resignFirstResponder()
        
            if let conted = dataEntryGTUA.text, conted.count != 0 {
                let diologdata = (true,XQZPDataNode.W7N4FavorData.V6K3UserProfile,conted)
                
                hospcInfoGTEm.X3R8DataSequence.append(diologdata)
          
                dataEntryGTUA.text = nil
                dataEntryGTUA.resignFirstResponder()
                
                SVProgressHUD.show()
               
                DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1.0){
                    SVProgressHUD.dismiss()
                  
                  
                    self.contenAiAchole.reloadData()
                    
                    
                    
                    
                }
                
                
                
            }else{
                SVProgressHUD.showInfo(withStatus: gintuemojir(f1g2h3i4j5: "Al jeemzprtdyv ymqeesxsdavgsex jczalndntostg xboek esmecnudr!g!r!"))
               
            }
            
            
            
            
      
    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        for(i, item) in XQZPDataNode.W7N4FavorData.P4V7CoreAnchor.enumerated() {
            if  item.X2D5CoreKey == self.hospcInfoGTEm.X2D5CoreKey {
    
                
                XQZPDataNode.W7N4FavorData.P4V7CoreAnchor[i] = self.hospcInfoGTEm
            }
        }
    }
}


extension KPTZAchievementDetail:UITableViewDelegate,UITableViewDataSource,UITextFieldDelegate{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       
        return hospcInfoGTEm.X3R8DataSequence.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        
       let diologData = hospcInfoGTEm.X3R8DataSequence[indexPath.row]
        let gtemCEll = tableView.dequeueReusableCell(withIdentifier: "LZQXhospcChatCellID", for: indexPath) as! LZQXhospcChatCell
        
        
        if diologData.logMeGTEM == true {
           
            
            gtemCEll.iconDisplayHeader.image = XQZPDataNode.W7N4FavorData.W9Z7UserIntentData
            gtemCEll.userNicknameLabel.text = "Me"
           
            
            return gtemCEll
        }else{
            if indexPath.row == 0 {
                gtemCEll.iconDisplayHeader.image =   UIImage(named: hospcInfoGTEm.N6Q1PrimaryUser["teacherphoto"] ?? "")
                gtemCEll.userNicknameLabel.text = hospcInfoGTEm.N6Q1PrimaryUser["teachername"]
            }
            
            if indexPath.row == 1 {
                let diologLater = hospcInfoGTEm.X3R8DataSequence[1].enterProuserGTEM
                gtemCEll.iconDisplayHeader.image =   UIImage(named: diologLater["teacherphoto"] ?? "")
                gtemCEll.userNicknameLabel.text = diologLater["teachername"]
            }
            
            
            
        }
        
        gtemCEll.gteadagaVuew.text =  diologData.2
       
        return gtemCEll
    }
    
}
