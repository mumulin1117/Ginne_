//
//  GTEMusernmeaasfe\Mojito.swift
//  Gintuemojir
//
//  Created by Gintuemojir on 2025/2/6.
//

import UIKit
import SVProgressHUD
class QXZTUserDataCore: GTEMUserAboutAchole {
    @IBOutlet weak var beginReportGTEm: UIButton!
    
    @IBOutlet weak var dataEntryGTUA: UITextField!
    
    @IBOutlet weak var usernaingmnickGTEm: UILabel!
    var dioloadingGTSMlist:Array<(whoismineGTEm:Bool,sayiedsdetailGTEm:String)> = []

    override func viewDidLoad() {
        super.viewDidLoad()
        beginReportGTEm.addTarget(self, action: #selector(startReportAndBlaCkUserGTEm), for: .touchUpInside)
        usernaingmnickGTEm.text = realingUserDtaGTEm["teachername"]
        
        dataEntryGTUA.leftViewMode = .always
        dataEntryGTUA.leftView = UIView.init(frame: CGRect.init(x: 0, y: 0, width: 30, height: 30))
        dataEntryGTUA.rightViewMode = .always
        dataEntryGTUA.rightView = UIView.init(frame: CGRect.init(x: 0, y: 0, width: 54, height: 30))
        dataEntryGTUA.layer.cornerRadius = 22
        dataEntryGTUA.layer.masksToBounds = true
        dataEntryGTUA.backgroundColor = UIColor(red: 0.24, green: 0.11, blue: 0.1, alpha: 1)
        
        contenAiAchole.dataSource = self
        contenAiAchole.delegate = self
        contenAiAchole.allowsSelection = false
        contenAiAchole.rowHeight = UITableView.automaticDimension
        contenAiAchole.contentInset = UIEdgeInsets.init(top: 0, left: 0, bottom: 90, right: 0)
        contenAiAchole.register(Y3Z9AetherChatNode.self, forCellReuseIdentifier: "Y3Z9AetherChatNodeID")
       
        contenAiAchole.estimatedRowHeight = 50
        contenAiAchole.separatorStyle = .none
        
        NotificationCenter.default.addObserver(self, selector: #selector(navibakerinhGTEM), name: NSNotification.Name("removeunlikeuserGTEm"), object: nil)
        
    }

    @IBOutlet weak var contenAiAchole: UITableView!
    
    
    @IBAction func stargerSendGTEU(_ sender: Any) {
        
        if let conted = dataEntryGTUA.text, conted.count != 0 {
            let diologdata = (true,conted)
            
           
            
            self.dioloadingGTSMlist.append(diologdata)
            dataEntryGTUA.text = nil
            dataEntryGTUA.resignFirstResponder()
            
           
            self.contenAiAchole.reloadData()
            
          
            
        }else{
            SVProgressHUD.showInfo(withStatus: "A empty message cannot be send!!!")
           
        }
        
    
}
        
    @IBAction func navibakerinhGTEM(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }
}


extension QXZTUserDataCore:UITableViewDelegate,UITableViewDataSource,UITextFieldDelegate{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       
        return dioloadingGTSMlist.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        
       let diologData = dioloadingGTSMlist[indexPath.row]
        let gtemCEll = tableView.dequeueReusableCell(withIdentifier: "Y3Z9AetherChatNodeID", for: indexPath) as! Y3Z9AetherChatNode
        gtemCEll.gteadagaVuew.text = diologData.sayiedsdetailGTEm
        if diologData.whoismineGTEm {
            gtemCEll.iconDisplayHeader.image = XQZPDataNode.W7N4FavorData.W9Z7UserIntentData
        }else{
            gtemCEll.iconDisplayHeader.image = UIImage(named: realingUserDtaGTEm["teacherphoto"] ?? "" )
        }
        gtemCEll.getrmWhoismine = diologData.whoismineGTEm
       
        return gtemCEll
    }
    
}
