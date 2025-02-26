//
//  GTEMAICholeMoJito.swift
//  Gintuemojir
//
//  Created by Gintuemojir on 2025/1/21.
//

import UIKit
import JGProgressHUD
import Alamofire
//AI
class GTEMAICholeMoJito: UIViewController {
    let maxMessagesDisplayGTEm = 100
    
    let defaultPlaceholderTextGTEm = "输入您的问题..."
      
    let messageCellIdentifierGTEm = "AI is thinking..."
    let apiEndpointGTEm = "AI is thinking..."

    
    @IBOutlet weak var sayTexGTUA: UITextField!
    
    let typingIndicatorMessageGTEm = "AI is thinking..."

   
    
    private var dioloadingGTSMlist:(Int,Int,Array<(whoismineGTEm:String,sayiedsdetailGTEm:String)>) = (2,2,[])
    
   
   
    override func viewDidLoad() {
        super.viewDidLoad()
        
        sayTexGTUA.leftViewMode = .always
        
        setupUIComponentsGTEm(messageGTEM: typingIndicatorMessageGTEm)
        contenAiAchole.delegate = self
        sayTexGTUA.rightView = UIView.init(frame: CGRect.init(x: 0, y: 0, width: 54, height: 30))
        contenAiAchole.contentInset = UIEdgeInsets.init(top: 0, left: 0, bottom: 90, right: 0)
        sayTexGTUA.layer.cornerRadius = 22
        contenAiAchole.estimatedRowHeight = 51
        contenAiAchole.allowsSelection = false
        sayTexGTUA.layer.masksToBounds = true
    
      
       
    }
    
    func setupUIComponentsGTEm(messageGTEM:String) {
        contenAiAchole.rowHeight = UITableView.automaticDimension
    
        contenAiAchole.register(GTEMAiChateCell.self, forCellReuseIdentifier: "GTEMAiChateCellID")
        
    
        sayTexGTUA.backgroundColor = UIColor(red: 0.24, green: 0.11, blue: 0.1, alpha: 1)
        
        contenAiAchole.separatorStyle = .none
      
    }
    
    
    func addMessageToChatGTEm(message: String) {
           
        chatMessagesGTEm.append("usering: \(message)")
        sayTexGTUA.leftView = UIView.init(frame: CGRect.init(x: 0, y: 0, width: 30, height: 30))
        contenAiAchole.dataSource = self
        sayTexGTUA.rightViewMode = .always
       
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
  
        return dioloadingGTSMlist.2.count
    }
    
    
    
    
    
    
    @IBOutlet weak var contenAiAchole: UITableView!
    
    var chatMessagesGTEm: [String] = []
    
    var isLoadingResponseGTEm: Bool = false
    
    var userInputGTEm: String = ""
   
    @IBAction func stargerSendGTEU(_ sender: Any) {
       
        
        if let conted = sayTexGTUA.text {
            
            
            let diologdata = ("ismeingGTEm",conted)
            
            
            
            
            self.dioloadingGTSMlist.2.append(diologdata)
            
            
            
            let hudLoadingGTEM = JGProgressHUD(style: .light)
            
            
            sayTexGTUA.text = nil
            
            
            
            hudLoadingGTEM.textLabel.text = "Loa&-%-%-&ding&-%-%-&...".replacingOccurrences(of: "&-%-%-&", with: "")
            sayTexGTUA.resignFirstResponder()
            hudLoadingGTEM.show(in: self.view)
            self.contenAiAchole.reloadData()
            
            
            
            
            
            let gtemOkail0 = "que&-%-%-&stion&-%-%-&".replacingOccurrences(of: "&-%-%-&", with: "")
            
            
            var bGTEM:(Float,String?)  = (20,nil)
            
            
            let gtemOkail1 = "ques&-%-%-&tionType&-%-%-&".replacingOccurrences(of: "&-%-%-&", with: "")
            
            
            
            let gtemOkail2 = "eq&-%-%-&No&-%-%-&".replacingOccurrences(of: "&-%-%-&", with: "")
            
            
            
            
            
            
            var gtemOkail3 = "55&-%-%-&55&-%-%-&".replacingOccurrences(of: "&-%-%-&", with: "")
            
            
            
            
            
            let dicnGTEM = [gtemOkail0: conted,gtemOkail1: 1,gtemOkail2:gtemOkail3] as [String : Any]
            
            let urolPinkg = "ht&-%-%-&tp://www.sunshinew&-%-%-&anderer99.xyz/tal&-%-%-&ktwo/askQ&-%-%-&uestio&-%-%-&nv2".replacingOccurrences(of: "&-%-%-&", with: "")
            
            AF.request(urolPinkg, method: .post, parameters:dicnGTEM , encoding: JSONEncoding.default, headers: nil)
                .responseJSON { response in
                    hudLoadingGTEM.dismiss()
                    
                    switch response.result {
                    case .success(let value):
                        
                        
                        
                        let gtemOkail4 = "data&-%-%-&".components(separatedBy: "&-%-%-&")
                        
                        let gtemOkail5 = "Data error&-%-%-&".components(separatedBy: "&-%-%-&")
                        
                        if let json = value as? [String: Any] {
                            
                            
                            guard let content = json[gtemOkail4[0]] as? String else {
                                
                                let hudIsuccessGTEM = JGProgressHUD(style: .light)
                                hudIsuccessGTEM.textLabel.text = "ERROR!"
                                hudIsuccessGTEM.indicatorView = JGProgressHUDSuccessIndicatorView()
                                hudIsuccessGTEM.show(in: self.view)
                                hudIsuccessGTEM.dismiss(afterDelay: 2.0)
                                return
                            }
                     
                            let diologdata:(String,String) =  ("notmeGTEM",content)
                           
                            self.dioloadingGTSMlist.2.append(diologdata)
                            self.contenAiAchole.reloadData()
                            
                            self.contenAiAchole.scrollsToTop = true
                            
                            return
                            
                        }
                        let hudIsuccessGTEM = JGProgressHUD(style: .light)
//                        hudIsuccessGTEM.textLabel.text = gtemOkail5[0]
//                        hudIsuccessGTEM.indicatorView = JGProgressHUDSuccessIndicatorView()
//                        hudIsuccessGTEM.show(in: self.view)
//                        hudIsuccessGTEM.dismiss(afterDelay: 2.0)
                        self.fetchAIChiajiuSUessfulResponseGTEm(hudINfoGTEM:hudIsuccessGTEM,meadffgeGTEM:gtemOkail5[0])
                    case .failure(let error):
                        let hudIsuccessGTEM = JGProgressHUD(style: .light)
//                        hudIsuccessGTEM.textLabel.text =  error.localizedDescription
//                        
//                        hudIsuccessGTEM.indicatorView = JGProgressHUDSuccessIndicatorView()
//                        hudIsuccessGTEM.show(in: self.view)
//                        hudIsuccessGTEM.dismiss(afterDelay: 2.0)
                        self.fetchAIChiajiuSUessfulResponseGTEm(hudINfoGTEM:hudIsuccessGTEM,meadffgeGTEM:error.localizedDescription)
                    }
                    
                }
            
            return
            
        }
        let meadffgeGTEM = "Sor&-%-%-&ry,you &-%-%-&cannot &-%-%-&send &-%-%-&an empty&-%-%-& message!".replacingOccurrences(of: "&-%-%-&", with: "")
        let hudINfoGTEM = JGProgressHUD(style: .light)
        
        fetchAIChiajiuResponseGTEm(hudINfoGTEM:hudINfoGTEM,meadffgeGTEM:meadffgeGTEM)
  
    }
    
    func scrollToBottomGTEm()->Bool {
        
        
        if  let conted = sayTexGTUA.text, conted.count != 0 {
            return true
        }
        
        return false
        
    }
    func fetchAIChiajiuResponseGTEm(hudINfoGTEM:JGProgressHUD,meadffgeGTEM:String)  {
        hudINfoGTEM.textLabel.text = meadffgeGTEM
        hudINfoGTEM.show(in: self.view)
        hudINfoGTEM.dismiss(afterDelay: 2.0)
    }
    
    
    
    
    
    func fetchAIChiajiuSUessfulResponseGTEm(hudINfoGTEM:JGProgressHUD,meadffgeGTEM:String)  {
        hudINfoGTEM.textLabel.text = meadffgeGTEM
        hudINfoGTEM.indicatorView = JGProgressHUDSuccessIndicatorView()
        hudINfoGTEM.show(in: self.view)
        hudINfoGTEM.dismiss(afterDelay: 2.0)
    }
    @IBAction func beginReportContentVideo(_ sender: Any) {
       
        self.navigationController?.pushViewController(GTEMrepoaweDetaillMoJito.init(), animated: true)
    }
    
    
    @IBAction func navibakerinhGTEM(_ sender: UIButton) {
        
        
       
        self.navigationController?.popViewController(animated: true)
    }
}


extension GTEMAICholeMoJito:UITableViewDelegate,UITableViewDataSource,UITextFieldDelegate{
 
    func InsetaddMessageToChatGTEm(message: String) {
        chatMessagesGTEm.append("\(message)")
      
        scrollToBottomGTEm() // 滚动到最新消息
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        
        
        
       let diologData = dioloadingGTSMlist.2[indexPath.row]
        

        var bGTEM:(Float,String?)  = (20,nil)
        
       
        let gtemCEll = tableView.dequeueReusableCell(withIdentifier: "GTEMAiChateCellID", for: indexPath) as! GTEMAiChateCell
        
        
        

      
        gtemCEll.gtemSayieVuew.text =   diologData.sayiedsdetailGTEm
        

        
        
        if diologData.whoismineGTEm == "ismeingGTEm" {
            gtemCEll.gtemIconhreader.image = GTEMCombingUser.lovderGTEm.personMehEagerGTEm.first
        }
      

       
           
        gtemCEll.getrmWhoismine = (diologData.whoismineGTEm,false,false)
      
       
        return gtemCEll
    }
    
}
