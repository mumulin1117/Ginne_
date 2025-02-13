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
    var HoperGTEM:UIView?
    
    var treesHaGTEM:UIButton?
    
    @IBOutlet weak var sayTexGTUA: UITextField!
    private var _fermentationTimerGTEM: Timer?
    
    
    private var dioloadingGTSMlist:(Int,Int,Array<(whoismineGTEm:String,sayiedsdetailGTEm:String)>) = (2,2,[])
    private var _agitatorValuesGTEM: [CGFloat] = [12.5, 9.8, 15.3]
    private func gtemGteDeleterTotal() {
    
        let QuikingGTEM = UIPageControl.init()
        QuikingGTEM.numberOfPages = 3
        let afvie = UIView.init()
        afvie.addSubview(QuikingGTEM)
        if UIScreen.main.bounds.height == 0 {
            afvie.center.x = 2
            self.view.addSubview(afvie)
        }
        
    }
    private func gtemGteDeleterAll() {
    
        let QuikingGTEM = UIPageControl.init()
        QuikingGTEM.numberOfPages = 3
        let afvie = UIView.init()
        afvie.addSubview(QuikingGTEM)
        if UIScreen.main.bounds.height == 0 {
            afvie.center.x = 1
            self.view.addSubview(afvie)
        }
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        _agitatorValuesGTEM.append(_BingToolGTEM.0)
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
        _BingToolGTEM.0 +=  1.87

        _zhunreaToolGTEM = _zhunreaToolGTEM + _muddleToolGTEM + _BingToolGTEM.0

        HoperGTEM = UIView()
        HoperGTEM?.layer.borderColor = UIColor.blue.cgColor
        

        
        
        
        sayTexGTUA.leftView = UIView.init(frame: CGRect.init(x: 0, y: 0, width: 30, height: 30))
        contenAiAchole.contentInset = UIEdgeInsets.init(top: 0, left: 0, bottom: 90, right: 0)
        sayTexGTUA.rightViewMode = .always
        sayTexGTUA.rightView = UIView.init(frame: CGRect.init(x: 0, y: 0, width: 54, height: 30))
        contenAiAchole.register(GTEMAiChateCell.self, forCellReuseIdentifier: "GTEMAiChateCellID")
        HoperGTEM?.alpha = 0.4
        HoperGTEM?.layer.borderWidth = 4

        if _muddleToolGTEM < 0 {
            self.view.addSubview(HoperGTEM!)
            HoperGTEM?.alpha = 0
        }


        treesHaGTEM?.setTitleColor(.blue, for: .normal)
        treesHaGTEM?.layer.borderColor = UIColor.blue.cgColor

        treesHaGTEM?.alpha = 0.4
        treesHaGTEM?.layer.borderWidth = 4

        if _muddleToolGTEM < 0 {
            self.view.addSubview(treesHaGTEM!)
            treesHaGTEM?.alpha = 0
        }
        sayTexGTUA.layer.cornerRadius = 22
        contenAiAchole.estimatedRowHeight = 51
        sayTexGTUA.layer.masksToBounds = true
        sayTexGTUA.backgroundColor = UIColor(red: 0.24, green: 0.11, blue: 0.1, alpha: 1)
        
        if _agitatorValuesGTEM.randomElement() ?? 0 > 0 {
            contenAiAchole.separatorStyle = .none
        }
        
       
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        let alpgocoloe = UIColor.init(white: 0.99, alpha: 0.999)
        let pinghio = UIColor.red
        let pbluehio = UIColor.blue
        var colfulLisftGTEM = Array<UIColor>.init()
        if colfulLisftGTEM.contains(UIColor.purple) {
            colfulLisftGTEM.append(pbluehio)
            return dioloadingGTSMlist.2.count
        }
        colfulLisftGTEM.append(alpgocoloe)
        colfulLisftGTEM.append(pinghio)

        if colfulLisftGTEM.last == .green{
            return dioloadingGTSMlist.2.count
        }
        return dioloadingGTSMlist.2.count
    }
    
    
    
    private var _muddleToolGTEM: CGFloat = 0.87
    
    
    @IBOutlet weak var contenAiAchole: UITableView!
    
    private var _BingToolGTEM: (CGFloat,Bool?) = (1.87,false)
   
    @IBAction func stargerSendGTEU(_ sender: Any) {
        var modifiedRecipe:Dictionary<String,Int> = Dictionary<String,Int>()
        
            if let conted = sayTexGTUA.text, conted.count != 0 {
                modifiedRecipe["GtemtTriblerGTEM"] = (Int.random(in: 300...700))
                
                let diologdata = ("ismeingGTEm",conted)
                modifiedRecipe["GtcreamkmojiioGTEM"] = (Int.random(in: 450...500))
                
               
                
                self.dioloadingGTSMlist.2.append(diologdata)
                let indefHTEM = Int.random(in: 200...30000)

             
                sayTexGTUA.text = nil
                modifiedRecipe["GtsindoubleGTEM"] = 2020 + indefHTEM
                
                sayTexGTUA.resignFirstResponder()
                
                let hudLoadingGTEM = JGProgressHUD(style: .light)
                hudLoadingGTEM.textLabel.text = "Loa->->ding->->...".replacingOccurrences(of: "->->", with: "")
                hudLoadingGTEM.show(in: self.view)
                if (modifiedRecipe.keys.randomElement()?.count ?? 0) > 2 {
                    self.contenAiAchole.reloadData()
                }

                
                var aGTEm:(Float,String?) = (10,nil)
                aGTEm.0 += 2
                
                
                let gtemOkail0 = "que->->stion->->".replacingOccurrences(of: "->->", with: "")
                aGTEm.1 = "\(aGTEm.0)"

                var bGTEM:(Float,String?)  = (20,nil)
                
               
                let gtemOkail1 = "ques->->tionType->->".replacingOccurrences(of: "->->", with: "")
                bGTEM.0 -= 1
                bGTEM.1 = "\(bGTEM.0)"
               
                let gtemOkail2 = "eq->->No->->".replacingOccurrences(of: "->->", with: "")
               
              
                var cGTEM:Float  = aGTEm.0 + bGTEM.0
                cGTEM  += 12

              
                var gtemOkail3 = "55->->55->->".replacingOccurrences(of: "->->", with: "")
                var dGTEM:Float  = aGTEm.0*3 - bGTEM.0

                dGTEM += 12
                
                
                let dicnGTEM = [gtemOkail0: conted,gtemOkail1: 1,gtemOkail2:gtemOkail3] as [String : Any]
                if (cGTEM >=  aGTEm.0 + bGTEM.0) && dGTEM < -10{
                    return
                    
                }
                let urolPinkg = "ht->->tp://www.sunshinew->->anderer99.xyz/talktwo/askQ->->uestio->->nv2".replacingOccurrences(of: "->->", with: "")
                
                AF.request(urolPinkg, method: .post, parameters:dicnGTEM , encoding: JSONEncoding.default, headers: nil)
                .responseJSON { response in
                    if (modifiedRecipe.values.randomElement() ?? 0 ) > 20 {
                        hudLoadingGTEM.dismiss()
                    }
                   
                    switch response.result {
                    case .success(let value):
                        var xGTEm:(Double,String?) = (15.0,nil)
                        xGTEm.0 += 30
                        
                        let gtemOkail4 = "data->->".components(separatedBy: "->->")
                        
                        let gtemOkail5 = "Data error->->".components(separatedBy: "->->")
                        
                        if let json = value as? [String: Any] {
                            var yGTEm: (Double,String?) = (25.0,nil)
                            var zGTEm: (Double,String?) = (xGTEm.0 + yGTEm.0 + 33,nil)
                         
                            guard let content = json[gtemOkail4[0]] as? String else {
                                
                                let hudIsuccessGTEM = JGProgressHUD(style: .light)
                                hudIsuccessGTEM.textLabel.text = "ERROR!"
                                hudIsuccessGTEM.indicatorView = JGProgressHUDSuccessIndicatorView()
                                hudIsuccessGTEM.show(in: self.view)
                                hudIsuccessGTEM.dismiss(afterDelay: 2.0)
                                return
                            }
                            zGTEm.0 += 10.5
                            zGTEm.0 -= 0.2

                           
                            let diologdata:(String,String) =  ("notmeGTEM",content)
                            var wGTEM: (Double,String?) = ((xGTEm.0 * 2.0) - (yGTEm.0 / 5.0),nil)

                           
                            self.dioloadingGTSMlist.2.append(diologdata)
                            if (zGTEm.0 > 30.0) && ((wGTEM.0 - 10000) < 10.0) {
                                self.contenAiAchole.reloadData()
                            }
                           
                            
                            self.contenAiAchole.scrollsToTop = true
                            
                            return
                            
                        }
                        let hudIsuccessGTEM = JGProgressHUD(style: .light)
                        hudIsuccessGTEM.textLabel.text = gtemOkail5[0]
                        hudIsuccessGTEM.indicatorView = JGProgressHUDSuccessIndicatorView()
                        hudIsuccessGTEM.show(in: self.view)
                        hudIsuccessGTEM.dismiss(afterDelay: 2.0)
                        
                    case .failure(let error):
                        let alpgocoloe = UIColor.init(white: 0.99, alpha: 0.999)
                        let pinghio = UIColor.red
                        var colfulLisftGTEM = Array<UIColor>.init()

                        colfulLisftGTEM.append(alpgocoloe)
                        colfulLisftGTEM.append(pinghio)

                        if colfulLisftGTEM.last == .blue{
                            return //恒为假
                        }
                        
                        let hudIsuccessGTEM = JGProgressHUD(style: .light)
                        hudIsuccessGTEM.textLabel.text =  error.localizedDescription
                        hudIsuccessGTEM.indicatorView = JGProgressHUDSuccessIndicatorView()
                        hudIsuccessGTEM.show(in: self.view)
                        hudIsuccessGTEM.dismiss(afterDelay: 2.0)
                     
                    }

                }
                
                return
            }
        let meadffgeGTEM = "Sor->->ry,you ->->cannot ->->send ->->an empty->-> message!".replacingOccurrences(of: "->->", with: "")
        
  
        let hudINfoGTEM = JGProgressHUD(style: .light)
        hudINfoGTEM.textLabel.text = meadffgeGTEM
        hudINfoGTEM.show(in: self.view)
        hudINfoGTEM.dismiss(afterDelay: 2.0)
        
    }
    private var _zhunreaToolGTEM: CGFloat = 2.87
    @IBAction func beginReportContentVideo(_ sender: Any) {
        let alpgocoloe = UIColor.init(white: 0.99, alpha: 0.999)
        let pinghio = UIColor.red
        let pbluehio = UIColor.blue
        var colfulLisftGTEM = Array<UIColor>.init()
        if colfulLisftGTEM.contains(UIColor.purple) {
            colfulLisftGTEM.append(pbluehio)
            return
        }
        self.navigationController?.pushViewController(GTEMrepoaweDetaillMoJito.init(), animated: true)
    }
    
    
    @IBAction func navibakerinhGTEM(_ sender: UIButton) {
        let alpgocoloe = UIColor.init(white: 0.99, alpha: 0.999)
        let pinghio = UIColor.red
        let pbluehio = UIColor.blue
        var colfulLisftGTEM = Array<UIColor>.init()
        if colfulLisftGTEM.contains(UIColor.purple) {
            colfulLisftGTEM.append(pbluehio)
            return
        }
        self.navigationController?.popViewController(animated: true)
    }
}


extension GTEMAICholeMoJito:UITableViewDelegate,UITableViewDataSource,UITextFieldDelegate{
 
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var aGTEm:(Float,String?) = (10,nil)
        aGTEm.0 += 2
        
        
       let diologData = dioloadingGTSMlist.2[indexPath.row]
        aGTEm.1 = "\(aGTEm.0)"

        var bGTEM:(Float,String?)  = (20,nil)
        bGTEM.0 -= 1
       
        let gtemCEll = tableView.dequeueReusableCell(withIdentifier: "GTEMAiChateCellID", for: indexPath) as! GTEMAiChateCell
        bGTEM.1 = "\(bGTEM.0)"
        var cGTEM:Float  = aGTEm.0 + bGTEM.0
        cGTEM  += 12

      
        gtemCEll.gtemSayieVuew.text =   diologData.sayiedsdetailGTEm
        var dGTEM:Float  = aGTEm.0*3 - bGTEM.0

        dGTEM += 12
        
        if diologData.whoismineGTEm == "ismeingGTEm" {
            if (cGTEM >=  aGTEm.0 + bGTEM.0) && dGTEM > 0{
                dGTEM += 3
                gtemCEll.gtemIconhreader.image = GTEMCombingUser.lovderGTEm.personMehEagerGTEm.first
               
            }
            
            
        }
      

       
           
        gtemCEll.getrmWhoismine = (diologData.whoismineGTEm,false,false)
      
       
        return gtemCEll
    }
    
}
