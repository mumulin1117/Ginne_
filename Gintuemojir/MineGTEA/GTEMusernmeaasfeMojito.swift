//
//  GTEMusernmeaasfe\Mojito.swift
//  Gintuemojir
//
//  Created by Gintuemojir on 2025/2/6.
//

import UIKit
import SVProgressHUD
class GTEMusernmeaasfeMojito: GTEMUserAboutAchole {
    @IBOutlet weak var beginReportGTEm: UIButton!
    
    @IBOutlet weak var sayTexGTUA: UITextField!
    
    @IBOutlet weak var usernaingmnickGTEm: UILabel!
    var dioloadingGTSMlist:Array<(whoismineGTEm:Bool,sayiedsdetailGTEm:String)> = []

    override func viewDidLoad() {
        super.viewDidLoad()
        beginReportGTEm.addTarget(self, action: #selector(startReportAndBlaCkUserGTEm), for: .touchUpInside)
        usernaingmnickGTEm.text = realingUserDtaGTEm["teachername"]
        
        sayTexGTUA.leftViewMode = .always
        sayTexGTUA.leftView = UIView.init(frame: CGRect.init(x: 0, y: 0, width: 30, height: 30))
        sayTexGTUA.rightViewMode = .always
        sayTexGTUA.rightView = UIView.init(frame: CGRect.init(x: 0, y: 0, width: 54, height: 30))
        sayTexGTUA.layer.cornerRadius = 22
        sayTexGTUA.layer.masksToBounds = true
        sayTexGTUA.backgroundColor = UIColor(red: 0.24, green: 0.11, blue: 0.1, alpha: 1)
        
        contenAiAchole.dataSource = self
        contenAiAchole.delegate = self
        contenAiAchole.allowsSelection = false
        contenAiAchole.rowHeight = UITableView.automaticDimension
        contenAiAchole.contentInset = UIEdgeInsets.init(top: 0, left: 0, bottom: 90, right: 0)
        contenAiAchole.register(GTEMAiChateCell.self, forCellReuseIdentifier: "GTEMAiChateCellID")
       
        contenAiAchole.estimatedRowHeight = 50
        contenAiAchole.separatorStyle = .none
        
        NotificationCenter.default.addObserver(self, selector: #selector(navibakerinhGTEM), name: NSNotification.Name("htldeleteuser"), object: nil)
        
    }

    @IBOutlet weak var contenAiAchole: UITableView!
    
    
    @IBAction func stargerSendGTEU(_ sender: Any) {
        
        if let conted = sayTexGTUA.text, conted.count != 0 {
            let diologdata = (true,conted)
            
           
            
            self.dioloadingGTSMlist.append(diologdata)
            sayTexGTUA.text = nil
            sayTexGTUA.resignFirstResponder()
            
           
            self.contenAiAchole.reloadData()
            
          
            
        }else{
            SVProgressHUD.showInfo(withStatus: "A empty message cannot be send!!!")
           
        }
        
    
}
    
  
    
    
    @IBAction func navibakerinhGTEM(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }
}


extension GTEMusernmeaasfeMojito:UITableViewDelegate,UITableViewDataSource,UITextFieldDelegate{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       
        return dioloadingGTSMlist.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        
       let diologData = dioloadingGTSMlist[indexPath.row]
        let gtemCEll = tableView.dequeueReusableCell(withIdentifier: "GTEMAiChateCellID", for: indexPath) as! GTEMAiChateCell
        gtemCEll.gtemSayieVuew.text = diologData.sayiedsdetailGTEm
        if diologData.whoismineGTEm {
            gtemCEll.gtemIconhreader.image = GTEMCombingUser.lovderGTEm.personMehEagerGTEm
        }else{
            gtemCEll.gtemIconhreader.image = UIImage(named: realingUserDtaGTEm["teacherphoto"] ?? "" )
        }
        gtemCEll.getrmWhoismine = diologData.whoismineGTEm
       
        return gtemCEll
    }
    
}
