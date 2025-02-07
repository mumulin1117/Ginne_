//
//  GTEMAICholeMoJito.swift
//  Gintuemojir
//
//  Created by Gintuemojir on 2025/1/21.
//

import UIKit
import SVProgressHUD
import Alamofire
//AI
class GTEMAICholeMoJito: UIViewController {
    @IBOutlet weak var sayTexGTUA: UITextField!
    
    var dioloadingGTSMlist:Array<(whoismineGTEm:Bool,sayiedsdetailGTEm:String)> = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
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
    }

    @IBOutlet weak var contenAiAchole: UITableView!
    
    
    @IBAction func stargerSendGTEU(_ sender: Any) {
       
            if let conted = sayTexGTUA.text, conted.count != 0 {
                let diologdata = (true,conted)
                
               
                
                self.dioloadingGTSMlist.append(diologdata)
                sayTexGTUA.text = nil
                sayTexGTUA.resignFirstResponder()
                
                SVProgressHUD.show()
                self.contenAiAchole.reloadData()
                
                let of0 = "question->->".components(separatedBy: "->->")
                let of1 = "questionType->->".components(separatedBy: "->->")
                let of2 = "eqNo->->".components(separatedBy: "->->")
                let of3 = "5555->->".components(separatedBy: "->->")
                
                let of4 = "data->->".components(separatedBy: "->->")
                
                let of5 = "Data error->->".components(separatedBy: "->->")
                
            
                AF.request("http://www.sunshinewanderer99.xyz/talktwo/askQuestionv2", method: .post, parameters: [of0[0]: conted,of1[0]: 1,of2[0]:of3[0]], encoding: JSONEncoding.default, headers: nil)
                .responseJSON { response in
                    SVProgressHUD.dismiss()
                    switch response.result {
                    case .success(let value):
                        if let json = value as? [String: Any] {
                            guard let content = json[of4[0]] as? String else {
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
                SVProgressHUD.showInfo(withStatus: "A empty message cannot be send!!!")
               
            }
            
        
    }
    
    @IBAction func beginReportContentVideo(_ sender: Any) {
        
        self.navigationController?.pushViewController(GTEMrepoaweDetaillMoJito.init(), animated: true)
    }
    
    
    @IBAction func navibakerinhGTEM(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }
}


extension GTEMAICholeMoJito:UITableViewDelegate,UITableViewDataSource,UITextFieldDelegate{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       
        return dioloadingGTSMlist.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        
       let diologData = dioloadingGTSMlist[indexPath.row]
        let gtemCEll = tableView.dequeueReusableCell(withIdentifier: "GTEMAiChateCellID", for: indexPath) as! GTEMAiChateCell
        gtemCEll.gtemSayieVuew.text =   diologData.sayiedsdetailGTEm
        if diologData.whoismineGTEm {
            gtemCEll.gtemIconhreader.image = GTEMCombingUser.lovderGTEm.personMehEagerGTEm
        }else{
            gtemCEll.gtemIconhreader.image = UIImage(named: "" )
        }
        gtemCEll.getrmWhoismine = diologData.whoismineGTEm
       
        return gtemCEll
    }
    
}
