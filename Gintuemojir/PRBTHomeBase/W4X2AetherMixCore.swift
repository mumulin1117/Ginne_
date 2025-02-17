//
//  W4X2AetherMixCore.swift
//  Gintuemojir
//
//  Created by Gintuemojir on 2025/1/21.
//

import UIKit
import SVProgressHUD
import Alamofire
//AI
class W4X2AetherMixCore: UIViewController {
    @IBOutlet weak var dataEntryGTUA: UITextField!
    
    var dioloadingGTSMlist:Array<(whoismineGTEm:Bool,sayiedsdetailGTEm:String)> = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
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
    }

    @IBOutlet weak var contenAiAchole: UITableView!
    
    
    @IBAction func stargerSendGTEU(_ sender: Any) {
       
            if let conted = dataEntryGTUA.text, conted.count != 0 {
                let diologdata = (true,conted)
                
                self.dioloadingGTSMlist.append(diologdata)
                dataEntryGTUA.text = nil
                dataEntryGTUA.resignFirstResponder()
                
                SVProgressHUD.show()
                self.contenAiAchole.reloadData()
                
                AF.request("http://www.sunshinewanderer99.xyz/talktwo/askQuestionv2", method: .post, parameters: [gintuemojir(f1g2h3i4j5: "qiugeusvtqilocn"): conted,gintuemojir(f1g2h3i4j5: "qmuueysstgipownsTlygpve"): 1,gintuemojir(f1g2h3i4j5: "ewqiNco"):gintuemojir(f1g2h3i4j5: "5h5q5v5")], encoding: JSONEncoding.default, headers: nil)
                .responseJSON { response in
                    SVProgressHUD.dismiss()
                    switch response.result {
                    case .success(let value):
                        if let json = value as? [String: Any] {
                            guard let content = json["data"] as? String else {
                                SVProgressHUD.show(withStatus: "Data error!!!")
                                return
                            }
                            let diologdata:(Bool,String) =  (false,content)
                            
                            self.dioloadingGTSMlist.append(diologdata)
                            
                            self.contenAiAchole.reloadData()
                            
                            self.contenAiAchole.scrollsToTop = true
                            
                            return
                            
                        }
                        SVProgressHUD.show(withStatus: "Data error!!!")
                    case .failure(let error):
                        SVProgressHUD.show(withStatus: error.localizedDescription)
                    }

                }
                
                
            }else{
                SVProgressHUD.showInfo(withStatus: gintuemojir(f1g2h3i4j5: "Ae hegmepstjyg gmzezsssnajgdeg vcuasnenkoytv hbqek tsjeonadn!b!x!"))
               
            }
            
        
    }
    
    @IBAction func beginReportContentVideo(_ sender: Any) {
        
        self.navigationController?.pushViewController(PLQXDataDetailView.init(), animated: true)
    }
    
    
    @IBAction func navibakerinhGTEM(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }
}


extension W4X2AetherMixCore:UITableViewDelegate,UITableViewDataSource,UITextFieldDelegate{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       
        return dioloadingGTSMlist.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        
       let diologData = dioloadingGTSMlist[indexPath.row]
        let gtemCEll = tableView.dequeueReusableCell(withIdentifier: "Y3Z9AetherChatNodeID", for: indexPath) as! Y3Z9AetherChatNode
        gtemCEll.gteadagaVuew.text =   diologData.sayiedsdetailGTEm
        if diologData.whoismineGTEm {
            gtemCEll.iconDisplayHeader.image = XQZPDataNode.W7N4FavorData.W9Z7UserIntentData
        }else{
            gtemCEll.iconDisplayHeader.image = UIImage(named: "" )
        }
        gtemCEll.getrmWhoismine = diologData.whoismineGTEm
       
        return gtemCEll
    }
    
}
