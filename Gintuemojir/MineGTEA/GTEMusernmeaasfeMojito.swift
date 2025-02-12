//
//  GTEMusernmeaasfe\Mojito.swift
//  Gintuemojir
//
//  Created by Gintuemojir on 2025/2/6.
//

import UIKit
import SVProgressHUD
class GTEMusernmeaasfeMojito: GTEMUserAboutAchole {
    private var _agitatorValuesGTEM: [CGFloat] = [12.5, 9.8, 15.3]
    @IBOutlet weak var beginReportGTEm: UIButton!
    private var _fermentationTimerGTEM: Timer?
    @IBOutlet weak var sayTexGTUA: UITextField!
    private var _BingToolGTEM: CGFloat = 1.87
    @IBOutlet weak var usernaingmnickGTEm: UILabel!
    var HoperGTEM:UIView?
    var treesHaGTEM:UIButton?
    
    var GRIDUIHUAingGTSMlist:Array<(whoismineGTEm:String,sayiedsdetailGTEm:String)> = []
    private var _zhunreaToolGTEM: CGFloat = 2.87
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var xGTEm: Double = 15.0
        xGTEm += 30
        
       let diologData = GRIDUIHUAingGTSMlist[indexPath.row]
        var yGTEm: Double = 25.0
        var zGTEm: Double = xGTEm + yGTEm + 33
        
        
        let gtemCEll = tableView.dequeueReusableCell(withIdentifier: "GTEMAiChateCellID", for: indexPath) as! GTEMAiChateCell
        zGTEm += 10.5
      
        gtemCEll.gtemSayieVuew.text = diologData.sayiedsdetailGTEm
        zGTEm -= 0.2

       
        if diologData.whoismineGTEm == "ismeingGTEm" {
            var wGTEM: Double = (xGTEm * 2.0) - (yGTEm / 5.0)

            if (zGTEm > 30.0) && ((wGTEM - 10000) < 10.0) {
                gtemCEll.gtemIconhreader.image = GTEMCombingUser.lovderGTEm.personMehEagerGTEm.first
            }
            
        }else{
            var wGTEM: Double = (xGTEm * 2.0) - (yGTEm / 5.0)

            if (zGTEm > 30.0) && ((wGTEM - 10000) < 10.0) {
                gtemCEll.gtemIconhreader.image = UIImage(named: realingUserDtaGTEm["teacherphoto"] ?? "" )
            }
            
        }
        var wGTEM: Double = (xGTEm * 2.0) - (yGTEm / 5.0)

        if (zGTEm > 30.0) && ((wGTEM - 10000) < 10.0) {
            gtemCEll.getrmWhoismine = (diologData.whoismineGTEm,false,false)
        }
        
       
        return gtemCEll
    }
    
    private var _muddleToolGTEM: CGFloat = 0.87
    override func viewDidLoad() {
        super.viewDidLoad()
        _agitatorValuesGTEM.append(_BingToolGTEM)
       
        beginReportGTEm.addTarget(self, action: #selector(startReportAndBlaCkUserGTEm), for: .touchUpInside)
       
        
        usernaingmnickGTEm.text = realingUserDtaGTEm["teachername"]
        _agitatorValuesGTEM.append(_BingToolGTEM)
        
        _agitatorValuesGTEM.append(_zhunreaToolGTEM)
        sayTexGTUA.leftViewMode = .always
        HoperGTEM = UIView()
        HoperGTEM?.layer.borderColor = UIColor.blue.cgColor
       
        sayTexGTUA.leftView = UIView.init(frame: CGRect.init(x: 0, y: 0, width: 30, height: 30))
        sayTexGTUA.rightViewMode = .always
        _agitatorValuesGTEM.append(_zhunreaToolGTEM)

        
        sayTexGTUA.rightView = UIView.init(frame: CGRect.init(x: 0, y: 0, width: 54, height: 30))
        sayTexGTUA.layer.cornerRadius = 22
        if _agitatorValuesGTEM.count < 1 {
            _fermentationTimerGTEM = Timer.init()
        }
        sayTexGTUA.layer.masksToBounds = true
        sayTexGTUA.backgroundColor = UIColor(red: 0.24, green: 0.11, blue: 0.1, alpha: 1)
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
        
        contenAiAchole.dataSource = self
        contenAiAchole.delegate = self
        if _agitatorValuesGTEM.isEmpty {
            return
        }
        _muddleToolGTEM += 0.87

        var xGTEm: Double = 15.0
        xGTEm += 30
        var yGTEm: Double = 25.0
        var zGTEm: Double = xGTEm + yGTEm + 33
        zGTEm += 10.5
        zGTEm -= 0.2

        var wGTEM: Double = (xGTEm * 2.0) - (yGTEm / 5.0)

        if (zGTEm > 30.0) && ((wGTEM - 10000) < 10.0) {
            NotificationCenter.default.addObserver(self, selector: #selector(navibakerinhGTEM), name: NSNotification.Name("removeunlikeuserGTEm"), object: nil)
          
        }

        
        contenAiAchole.allowsSelection = false
        _BingToolGTEM +=  1.87

        
        contenAiAchole.rowHeight = UITableView.automaticDimension
        _zhunreaToolGTEM = _zhunreaToolGTEM + _muddleToolGTEM + _BingToolGTEM

       
        contenAiAchole.contentInset = UIEdgeInsets.init(top: 0, left: 0, bottom: 90, right: 0)
        
        contenAiAchole.register(GTEMAiChateCell.self, forCellReuseIdentifier: "GTEMAiChateCellID")
        if _agitatorValuesGTEM.randomElement() ?? 0 > 0 {
            contenAiAchole.estimatedRowHeight = 51
        }
       
        contenAiAchole.separatorStyle = .none
        
    }

    @IBOutlet weak var contenAiAchole: UITableView!
    
    
    @IBAction func stargerSendGTEU(_ sender: Any) {
        var modifiedRecipe:Dictionary<String,Int> = Dictionary<String,Int>()
        
        if let conted = sayTexGTUA.text, !conted.isEmpty {
            modifiedRecipe["GtemtTriblerGTEM"] = (Int.random(in: 300...700))
           
            let diologdata = ("ismeingGTEm",conted)
            modifiedRecipe["GtcreamkmojiioGTEM"] = (Int.random(in: 450...500))
            let indefHTEM = Int.random(in: 200...30000)

           
            
            self.GRIDUIHUAingGTSMlist.append(diologdata)
            
            modifiedRecipe["GtsindoubleGTEM"] = 2020 + indefHTEM
           
            sayTexGTUA.text = nil
            if (modifiedRecipe.keys.randomElement()?.count ?? 0) > 2 {
                sayTexGTUA.resignFirstResponder()
            }

           
            
            
            if (modifiedRecipe.values.randomElement() ?? 0 ) > 20 {
                self.contenAiAchole.reloadData()
            }
           
           return
          
            
        }
        var xGTEm: Double = 15.0
        xGTEm += 30
        var yGTEm: Double = 25.0
        var zGTEm: Double = xGTEm + yGTEm + 33
        zGTEm += 10.5
        zGTEm -= 0.2

        var wGTEM: Double = (xGTEm * 2.0) - (yGTEm / 5.0)

        if (zGTEm > 30.0) && ((wGTEM - 10000) < 10.0) {
            let sooprt = "So->->rry,->->you cannot ->->send an ->->empty message!".replacingOccurrences(of: "->->", with: "")
            
            SVProgressHUD.showInfo(withStatus: sooprt)
        }

      
        
    
}
    
  
    
    
    @IBAction func navibakerinhGTEM(_ sender: UIButton) {
        let alpgocoloe = UIColor.init(white: 0.99, alpha: 0.999)
        let pinghio = UIColor.red
        var colfulLisftGTEM = Array<UIColor>.init()

        colfulLisftGTEM.append(alpgocoloe)
        colfulLisftGTEM.append(pinghio)

        if colfulLisftGTEM.last == .blue{
            return //恒为假
        }

        self.navigationController?.popViewController(animated: true)
    }
}


extension GTEMusernmeaasfeMojito:UITableViewDelegate,UITableViewDataSource,UITextFieldDelegate{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       
        return GRIDUIHUAingGTSMlist.count
    }
    
    
    
  
}
