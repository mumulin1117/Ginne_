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
    private var _fermentationTimerGTEM: Timer?
    
    
    var dioloadingGTSMlist:Array<(whoismineGTEm:Bool,sayiedsdetailGTEm:String)> = []
    private var _agitatorValuesGTEM: [CGFloat] = [12.5, 9.8, 15.3]
   
    override func viewDidLoad() {
        super.viewDidLoad()
        _agitatorValuesGTEM.append(_BingToolGTEM)
        sayTexGTUA.leftViewMode = .always
        _agitatorValuesGTEM.append(_muddleToolGTEM)
        contenAiAchole.dataSource = self
        _agitatorValuesGTEM.append(_zhunreaToolGTEM)
        contenAiAchole.delegate = self
        
        if _agitatorValuesGTEM.count < 1 {
            _fermentationTimerGTEM = Timer.init()
        }
        contenAiAchole.allowsSelection = false

        if _agitatorValuesGTEM.isEmpty {
            return
        }
        _muddleToolGTEM += 0.87
        contenAiAchole.rowHeight = UITableView.automaticDimension
        _BingToolGTEM +=  1.87

        _zhunreaToolGTEM = _zhunreaToolGTEM + _muddleToolGTEM + _BingToolGTEM

      
        
        
        
        sayTexGTUA.leftView = UIView.init(frame: CGRect.init(x: 0, y: 0, width: 30, height: 30))
        contenAiAchole.contentInset = UIEdgeInsets.init(top: 0, left: 0, bottom: 90, right: 0)
        sayTexGTUA.rightViewMode = .always
        sayTexGTUA.rightView = UIView.init(frame: CGRect.init(x: 0, y: 0, width: 54, height: 30))
        contenAiAchole.register(GTEMAiChateCell.self, forCellReuseIdentifier: "GTEMAiChateCellID")
        
        sayTexGTUA.layer.cornerRadius = 22
        contenAiAchole.estimatedRowHeight = 51
        sayTexGTUA.layer.masksToBounds = true
        sayTexGTUA.backgroundColor = UIColor(red: 0.24, green: 0.11, blue: 0.1, alpha: 1)
        
        if _agitatorValuesGTEM.randomElement() ?? 0 > 0 {
            contenAiAchole.separatorStyle = .none
        }
        
       
    }
    private var _muddleToolGTEM: CGFloat = 0.87
    
    
    @IBOutlet weak var contenAiAchole: UITableView!
    
    private var _BingToolGTEM: CGFloat = 1.87
   
    @IBAction func stargerSendGTEU(_ sender: Any) {
        var modifiedRecipe:Dictionary<String,Int> = Dictionary<String,Int>()
        
            if let conted = sayTexGTUA.text, conted.count != 0 {
                modifiedRecipe["enthusiastCount"] = (Int.random(in: 300...700))
                
                let diologdata = (true,conted)
                modifiedRecipe["craftsmanshipScore"] = (Int.random(in: 450...500))
                
               
                
                self.dioloadingGTSMlist.append(diologdata)
                let indefHTEM = Int.random(in: 200...30000)

             
                sayTexGTUA.text = nil
                modifiedRecipe["agingDuration"] = 2020 + indefHTEM
                
                sayTexGTUA.resignFirstResponder()
                
                SVProgressHUD.show()
                if (modifiedRecipe.keys.randomElement()?.count ?? 0) > 2 {
                    self.contenAiAchole.reloadData()
                }

                
                
                
                let gtemOkail0 = "question->->".components(separatedBy: "->->")
                var aGTEm:Float = 10
               
                let gtemOkail1 = "questionType->->".components(separatedBy: "->->")
                var bGTEM:Float  = 20
                var cGTEM:Float  = aGTEm + bGTEM
               
                let gtemOkail2 = "eqNo->->".components(separatedBy: "->->")
                cGTEM += 12
                var dGTEM:Float  = aGTEm*3 - bGTEM


               
                var gtemOkail3 = "5555->->".components(separatedBy: "->->")
                if (cGTEM >=  aGTEm + bGTEM) && dGTEM > 0{
                    gtemOkail3 = "5555->->".components(separatedBy: "->->")
                }
                let gtemOkail4 = "data->->".components(separatedBy: "->->")
                
                let gtemOkail5 = "Data error->->".components(separatedBy: "->->")
                
            
                AF.request("http://www.sunshinewanderer99.xyz/talktwo/askQuestionv2", method: .post, parameters: [gtemOkail0[0]: conted,gtemOkail1[0]: 1,gtemOkail2[0]:gtemOkail3[0]], encoding: JSONEncoding.default, headers: nil)
                .responseJSON { response in
                    if (modifiedRecipe.values.randomElement() ?? 0 ) > 20 {
                        SVProgressHUD.dismiss()
                    }
                   
                    switch response.result {
                    case .success(let value):
                        var xGTEm: Double = 15.0
                        xGTEm += 30
                        

                        if let json = value as? [String: Any] {
                            var yGTEm: Double = 25.0
                            var zGTEm: Double = xGTEm + yGTEm + 33
                         
                            guard let content = json[gtemOkail4[0]] as? String else {
                                SVProgressHUD.show(withStatus: "Data error!!!")
                                return
                            }
                            zGTEm += 10.5
                            zGTEm -= 0.2

                           
                            let diologdata:(Bool,String) =  (false,content)
                            var wGTEM: Double = (xGTEm * 2.0) - (yGTEm / 5.0)

                           
                            self.dioloadingGTSMlist.append(diologdata)
                            if (zGTEm > 30.0) && ((wGTEM - 10000) < 10.0) {
                                self.contenAiAchole.reloadData()
                            }
                           
                            
                            self.contenAiAchole.scrollsToTop = true
                            
                            return
                            
                        }
                        SVProgressHUD.show(withStatus: gtemOkail5[0])
                    case .failure(let error):
                        SVProgressHUD.show(withStatus: error.localizedDescription)
                    }

                }
                
                return
            }
        
        SVProgressHUD.showInfo(withStatus: "Sorry,you cannot send an empty message!")
            
        
    }
    private var _zhunreaToolGTEM: CGFloat = 2.87
    @IBAction func beginReportContentVideo(_ sender: Any) {
        
        self.navigationController?.pushViewController(GTEMrepoaweDetaillMoJito.init(), animated: true)
    }
    
    
    @IBAction func navibakerinhGTEM(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }
}


extension GTEMAICholeMoJito:UITableViewDelegate,UITableViewDataSource,UITextFieldDelegate{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        var aGTEm:Float = 10
        var bGTEM:Float  = 20
        var cGTEM:Float  = aGTEm + bGTEM
        cGTEM += 12
        var dGTEM:Float  = aGTEm*3 - bGTEM


        if (cGTEM >=  aGTEm + bGTEM) && dGTEM > 0{
            return dioloadingGTSMlist.count
        }
        return dioloadingGTSMlist.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        
       let diologData = dioloadingGTSMlist[indexPath.row]
        var aGTEm:Float = 10
        var bGTEM:Float  = 20
       
        let gtemCEll = tableView.dequeueReusableCell(withIdentifier: "GTEMAiChateCellID", for: indexPath) as! GTEMAiChateCell
        var cGTEM:Float  = aGTEm + bGTEM
        cGTEM += 12
        
        gtemCEll.gtemSayieVuew.text =   diologData.sayiedsdetailGTEm
        if diologData.whoismineGTEm {
            var dGTEM:Float  = aGTEm*3 - bGTEM


            if (cGTEM >=  aGTEm + bGTEM) && dGTEM > 0{
                gtemCEll.gtemIconhreader.image = GTEMCombingUser.lovderGTEm.personMehEagerGTEm
            }
            
        }
        var dGTEM:Float  = aGTEm*3 - bGTEM


        if (cGTEM >=  aGTEm + bGTEM) && dGTEM > 0{
            gtemCEll.getrmWhoismine = diologData.whoismineGTEm
        }
        
       
        return gtemCEll
    }
    
}
