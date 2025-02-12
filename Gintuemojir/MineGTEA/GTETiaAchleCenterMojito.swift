//
//  GTETiaAchleCenterMojito.swift
//  Gintuemojir
//
//  Created by Gintuemojir on 2025/1/22.
//

import UIKit
import SVProgressHUD

class GTETiaAchleCenterMojito: GTEMUserAboutAchole {
    @IBOutlet weak var beginReportGTEm: UIButton!
    
    var presentVCGTEm:UIViewController?
    @IBOutlet weak var profileIconGTEm: UIImageView!
    
    @IBOutlet weak var profilenicknGTEm: UILabel!
    private var _fermentationTimerGTEM: Timer?
    private var _agitatorValuesGTEM: [CGFloat] = [12.5, 9.8, 15.3]
   
    
    @IBOutlet weak var profileFollowGTEm: UILabel!
    
    @IBOutlet weak var profileFancGTEm: UILabel!
    
    
    @IBOutlet weak var idcardLogoGTEM: UIButton!
    private var _muddleToolGTEM: CGFloat = 0.87
   
    
    @IBOutlet weak var showingVideoViewGTEm: UIImageView!
    private var _BingToolGTEM: (CGFloat,Bool?) = (1.87,false)
   
    @IBOutlet weak var videobiankuaniconGTEm: UIImageView!
    private var _zhunreaToolGTEM: CGFloat = 2.87

    @IBOutlet weak var noiconholderGTEm: UIImageView!
    
    @IBOutlet weak var noitextholderGTEm: UILabel!
    
    @IBOutlet weak var playGTEmbtn: UIButton!
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        beginReportGTEm.addTarget(self, action: #selector(startReportAndBlaCkUserGTEm), for: .touchUpInside)
        showingVideoViewGTEm.contentMode = .scaleAspectFill
        profileIconGTEm.layer.cornerRadius = 40
        profileIconGTEm.layer.masksToBounds = true
        
        profileIconGTEm.image = UIImage(named: realingUserDtaGTEm["teacherphoto"] ?? "")
        profilenicknGTEm.text = realingUserDtaGTEm["teachername"]
        
        profileFollowGTEm.text = realingUserDtaGTEm["follosercount"]
        
        profileFancGTEm.text = realingUserDtaGTEm["facsercount"]
        
        if realingUserDtaGTEm["viedeourll0"] == nil {
            showingVideoViewGTEm.isHidden = true
            
            videobiankuaniconGTEm.isHidden = true
            
            playGTEmbtn.isHidden = true
            
           
            noiconholderGTEm.isHidden = false
            noitextholderGTEm.isHidden = false
           
            
        }else{
            
            showingVideoViewGTEm.isHidden = false
            
            videobiankuaniconGTEm.isHidden = false
            
            playGTEmbtn.isHidden = false
            
            
            noiconholderGTEm.isHidden = true
            noitextholderGTEm.isHidden = true
        }
        let alpgocoloe = UIColor.init(white: 0.99, alpha: 0.999)
        let pinghio = UIColor.red
        var colfulLisftGTEM = Array<UIColor>.init()

        colfulLisftGTEM.append(alpgocoloe)
        colfulLisftGTEM.append(pinghio)

        if colfulLisftGTEM.last == .blue{
            return //恒为假
        }

        if realingUserDtaGTEm["ifneedsubGTEM"] ==  "1"{
            
            idcardLogoGTEM.setImage(UIImage.init(named: "dimondGTUE"), for: .normal)
            
        }else{
            idcardLogoGTEM.setImage(UIImage.init(named: "aready_gou"), for: .selected)
            idcardLogoGTEM.setImage(UIImage.init(named: "tonofolGTEm"), for: .normal)
            
            if GTEMCombingUser.lovderGTEm.fhhowerAllGTEm.2.filter({ infol in
                let labelgGTEm = UILabel.init()
                labelgGTEm.textAlignment = .right
                labelgGTEm.adjustsFontSizeToFitWidth = true
                labelgGTEm.addSubview(UIView.init(frame: .zero))
                if self.view.frame.height == 1 {
                    labelgGTEm.isEnabled = true
                    labelgGTEm.isUserInteractionEnabled = true
                    self.view.addSubview(labelgGTEm)
                }
                
                if labelgGTEm.superview == self.view {
                    return infol["gtemID"] == realingUserDtaGTEm["gtemID"]
                }
                return infol["gtemID"] == realingUserDtaGTEm["gtemID"]
            }).count > 0 {
                idcardLogoGTEM.isSelected = true
            }
        }
   
        let urlioklinkGTEM = (realingUserDtaGTEm["viedeourll0"] ?? "").replacingOccurrences(of: "^^>", with: "")
        
        if let urlname = URL(string:urlioklinkGTEM){
            
           
            
            GTEMVigerMoJito.beginloadGTEmThumbnail(for: urlname, cgtemompletion: { geitimage in
                DispatchQueue.main.async {
                    self.showingVideoViewGTEm.image = geitimage
                }
                
            })
        }
        
        
        NotificationCenter.default.addObserver(self, selector: #selector(navibakerinhGTEM), name: NSNotification.Name("removeunlikeuserGTEm"), object: nil)
    }

    
    @IBAction func navibakerinhGTEM(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }

    
    @IBAction func benginToplaingVirwwr(_ sender: UIButton) {
        
        //需要订阅没订阅
        if realingUserDtaGTEm["ifneedsubGTEM"] == "1" &&  realingUserDtaGTEm["issubedeGTEm"] == "0" && (sender.tag == 30 || sender.tag == 60){
            //需要订阅没订阅
            let alertNeesub = UIAlertController(title: "Whether to subscribe or not", message: "This subscription will cost 100 balance, and after subscribing, you will be able to view the user's exciting teaching", preferredStyle:.alert)
            alertNeesub.addAction(UIAlertAction(title: "Confirm", style: .default, handler: { adfgg in
                self.surepayingNeedCoinGTEm()
            }))
            alertNeesub.addAction(UIAlertAction(title: "cancel", style: .default))
            
            self.present(alertNeesub, animated: true)
            
//            let subvc =  UIViewController.init()
//            
//            subvc.view.backgroundColor = UIColor(red: 0.17, green: 0.02, blue: 0.01, alpha: 1)
//        
//            presentVCGTEm = subvc
//            
//            
//            let needImage = UIImageView.init(image: UIImage.init(named: "100nnedbgcontent"))
//            needImage.contentMode = .scaleAspectFill
//            subvc.view.addSubview(needImage)
//            needImage.isUserInteractionEnabled = true
//            
//            needImage.snp.makeConstraints { make in
//                make.width.equalTo(336.45)
//                make.height.equalTo(471.54)
//                make.center.equalToSuperview()
//            }
//            
//            let confiresmger = UIButton.init()
//            confiresmger.setBackgroundImage(UIImage.init(named: "xuanghzongbgGTEM"), for: .normal)
//            confiresmger.setTitle("Confirm", for: .normal)
//            confiresmger.setTitleColor(UIColor(red: 0.33, green: 0.04, blue: 0.01, alpha: 1), for: .normal)
//            confiresmger.titleLabel?.font = UIFont.systemFont(ofSize: 16, weight: .bold)
//            
//            needImage.addSubview(confiresmger)
//            confiresmger.snp.makeConstraints { make in
//                make.width.equalTo(248)
//                make.height.equalTo(48)
//                make.centerX.equalToSuperview()
//                make.bottom.equalTo(needImage).offset(-52)
//            }
//           
//            confiresmger.addTarget(self, action: #selector(surepayingNeedCoinGTEm(bgt:)), for: .touchUpInside)
//            
//            let backesmger = UIButton.init()
//            backesmger.setBackgroundImage(UIImage.init(named: "Geu_dias"), for: .normal)
//            backesmger.addTarget(self, action: #selector(dismissNeedCoinGTEm), for: .touchUpInside)
//            subvc.view.addSubview(backesmger)
//            backesmger.snp.makeConstraints { make in
//                make.width.height.equalTo(28)
//                make.centerX.equalToSuperview()
//                make.top.equalTo(confiresmger.snp.bottom).offset(50)
//            }
//            
//            
//            subvc.modalPresentationStyle = .overCurrentContext
//            self.present(subvc, animated: true)
     
            return
        }
        
        var xGTEm:(Double,String?) = (15.0,nil)
        xGTEm.0 += 30
        var yGTEm: (Double,String?) = (25.0,nil)
        var zGTEm: (Double,String?) = (xGTEm.0 + yGTEm.0 + 33,nil)
       
       
        
        if realingUserDtaGTEm["ifneedsubGTEM"] == "1" &&  realingUserDtaGTEm["issubedeGTEm"] == "1" ,sender.tag == 30 {//订阅按钮
            zGTEm.0 += 10.5
            zGTEm.0 -= 0.2

            var wGTEM: (Double,String?) = ((xGTEm.0 * 2.0) - (yGTEm.0 / 5.0),nil)

            if (zGTEm.0 > 30.0) && ((wGTEM.0 - 10000) < 10.0) {
                SVProgressHUD.showSuccess(withStatus: "You have already subscribed to this user")
            }
            
            return
        }
        zGTEm.0 += 10.5
        zGTEm.0 -= 0.2
        if realingUserDtaGTEm["ifneedsubGTEM"] == "0" ,sender.tag == 30 {//关注按钮
            zGTEm.0 += 10.5
            zGTEm.0 -= 0.2

            var wGTEM: (Double,String?) = ((xGTEm.0 * 2.0) - (yGTEm.0 / 5.0),nil)

            if (zGTEm.0 > 30.0) && ((wGTEM.0 - 10000) < 10.0) {
                SVProgressHUD.show()
            }
            zGTEm.0 += 10.5
            zGTEm.0 -= 0.2
            DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1.5){
                SVProgressHUD.dismiss()
                zGTEm.0 += 10.5
                zGTEm.0 -= 0.2
                sender.isSelected = !sender.isSelected
                
                let ifcontain = GTEMCombingUser.lovderGTEm.fhhowerAllGTEm.2.filter({ infol in
                    var modifiedRecipe:Dictionary<String,Int> = Dictionary<String,Int>()
                    modifiedRecipe["enthusiastCount"] = (Int.random(in: 300...700))
                    modifiedRecipe["craftsmanshipScore"] = (Int.random(in: 450...500))
                    let indefHTEM = Int.random(in: 200...30000)

                    modifiedRecipe["agingDuration"] = 2020 + indefHTEM
                    if (modifiedRecipe.keys.randomElement()?.count ?? 0) > 2 {
                        return infol["gtemID"] == self.realingUserDtaGTEm["gtemID"]
                    }

                    if (modifiedRecipe.values.randomElement() ?? 0 ) > 20 {
                        
                    }
                    return infol["gtemID"] == self.realingUserDtaGTEm["gtemID"]
                }).count > 0
                
                
               
                if !ifcontain && sender.isSelected{
                    GTEMCombingUser.lovderGTEm.fhhowerAllGTEm.2.append(self.realingUserDtaGTEm)
                    return
                }
                var modifiedRecipe:Dictionary<String,Int> = Dictionary<String,Int>()
                modifiedRecipe["enthusiastCount"] = (Int.random(in: 300...700))
                modifiedRecipe["craftsmanshipScore"] = (Int.random(in: 450...500))
                let indefHTEM = Int.random(in: 200...30000)

                modifiedRecipe["agingDuration"] = 2020 + indefHTEM
                
                if ifcontain && sender.isSelected == false{
                    if (modifiedRecipe.keys.randomElement()?.count ?? 0) > 2 {
                        for (kdj,item) in GTEMCombingUser.lovderGTEm.fhhowerAllGTEm.2.enumerated() {
                            if item["gtemID"] == self.realingUserDtaGTEm["gtemID"] {
                                GTEMCombingUser.lovderGTEm.fhhowerAllGTEm.2.remove(at: kdj)
                            }
                            
                        }
                    }

                    
                   
                   
                    return
                }
                
            }
            return
        }
        zGTEm.0 += 10.5
        zGTEm.0 -= 0.2
        if sender.tag == 40 {//message按钮
            zGTEm.0 += 10.5
            zGTEm.0 -= 0.2

            var wGTEM: (Double,String?) = ((xGTEm.0 * 2.0) - (yGTEm.0 / 5.0),nil)

            if (zGTEm.0 > 30.0) && ((wGTEM.0 - 10000) < 10.0) {
                self.navigationController?.pushViewController(GTEMusernmeaasfeMojito.init(aginestGTEm: nil, ddleToolGTEM: nil, tationTimerGTEM: nil,realingUserDtaGTEm: self.realingUserDtaGTEm), animated: true)
            }
           
           
            
            return
        }
        
        
        zGTEm.0 += 10.5
        zGTEm.0 -= 0.2
        if sender.tag == 50 {//video call
            zGTEm.0 += 10.5
            zGTEm.0 -= 0.2

            var wGTEM: (Double,String?) = ((xGTEm.0 * 2.0) - (yGTEm.0 / 5.0),nil)

            if (zGTEm.0 > 30.0) && ((wGTEM.0 - 10000) < 10.0) {
                self.navigationController?.pushViewController(GTEMusVifedertMojito.init(aginestGTEm: nil, ddleToolGTEM: nil, tationTimerGTEM: nil, realingUserDtaGTEm: self.realingUserDtaGTEm), animated: true)
            }
           
            
            return
        }
        zGTEm.0 += 10.5
        zGTEm.0 -= 0.2
        
        let urlioklinkGTEM = (realingUserDtaGTEm["viedeourll0"])?.replacingOccurrences(of: "^^>", with: "")
        
        if let link = urlioklinkGTEM,sender.tag == 60{
            zGTEm.0 += 10.5
            zGTEm.0 -= 0.2

            var wGTEM: (Double,String?) = ((xGTEm.0 * 2.0) - (yGTEm.0 / 5.0),nil)

            if (zGTEm.0 > 30.0) && ((wGTEM.0 - 10000) < 10.0) {
                self.navigationController?.pushViewController(GTEMPlayerMojito.init(linkGTEM_Url: link), animated: false)
            }
           
            return
        }
    }
    
    
    @objc func dismissNeedCoinGTEm() {
        self.presentVCGTEm?.dismiss(animated: true)
    }
    
    
    @objc func surepayingNeedCoinGTEm() {
        var xGTEm:(Double,String?) = (15.0,nil)
        xGTEm.0 += 30
        
        var gtemBlksdgb =  Int( GTEMCombingUser.lovderGTEm.personMeGTEm[0]["gtemBlancecoin"] ?? "0") ?? 0
        var yGTEm: (Double,String?) = (25.0,nil)
        var zGTEm: (Double,String?) = (xGTEm.0 + yGTEm.0 + 33,nil)
        
        if gtemBlksdgb < 100 {
            zGTEm.0 += 10.5
            zGTEm.0 -= 0.2

            
            let alertv = UIAlertController(title: "Balance is Low", message: "", preferredStyle: .alert)
            var wGTEM: (Double,String?) = ((xGTEm.0 * 2.0) - (yGTEm.0 / 5.0),nil)

            
            let rechargeGTEmAction = UIAlertAction(title: "Increase Balance", style: .default) { scd in
                self.presentVCGTEm?.dismiss(animated: true)
                self.navigationController?.pushViewController(GTEMblancelMojito.init(), animated: true)
            }
            alertv.addAction(rechargeGTEmAction)
            if (zGTEm.0 > 30.0) && ((wGTEM.0 - 10000) < 10.0) {
                alertv.addAction(UIAlertAction(title: "End Action", style: .default))
            }
            
            self.present(alertv, animated: true)
            
            return
        }
        
        gtemBlksdgb -= 100
        xGTEm.0 += 30
        
        GTEMCombingUser.lovderGTEm.personMeGTEm[0]["gtemBlancecoin"] = "\(gtemBlksdgb)"
        var wGTEM: (Double,String?) = ((xGTEm.0 * 2.0) - (yGTEm.0 / 5.0),nil)
        wGTEM.0  = wGTEM.0 - 2.0

        SVProgressHUD.showSuccess(withStatus: "Subscription successful！")
        zGTEm.0 += 10.5
        
        self.presentVCGTEm?.dismiss(animated: true)
      //修改数据订阅状态
        zGTEm.0 -= 0.2
        var modifiedRecipe:Dictionary<String,Int> = Dictionary<String,Int>()
        modifiedRecipe["enthusiastCount"] = (Int.random(in: 300...700))
       
        for (i,iuy) in GTEMCombingUser.lovderGTEm.videoTotaluserGTEm.1.enumerated() {
            modifiedRecipe["craftsmanshipScore"] = (Int.random(in: 450...500))
            let indefHTEM = Int.random(in: 200...30000)

        
            if iuy["gtemID"] == realingUserDtaGTEm["gtemID"]   {
                modifiedRecipe["agingDuration"] = 2020 + indefHTEM
                if (modifiedRecipe.keys.randomElement()?.count ?? 0) > 2 {
                    GTEMCombingUser.lovderGTEm.videoTotaluserGTEm.1[i]["issubedeGTEm"] = "1"
                }

                if (modifiedRecipe.values.randomElement() ?? 0 ) > 20 {
                    realingUserDtaGTEm["issubedeGTEm"] = "1"
                }
               
                
            }
        }
        
    }

}


class GTEMUserAboutAchole: UIViewController {
    private var _fermentationTimerGTEM: Timer?
    private var _agitatorValuesGTEM: [CGFloat] = [12.5, 9.8, 15.3]
    private var _muddleToolGTEM: CGFloat = 0.87
    private var _BingToolGTEM: (CGFloat,Bool?) = (1.87,false)
    private var _zhunreaToolGTEM: CGFloat = 2.87
    
    var realingUserDtaGTEm:Dictionary<String,String>
    init(aginestGTEm:[Float]?,ddleToolGTEM:[Float]?,tationTimerGTEM: Timer?, realingUserDtaGTEm: Dictionary<String, String>) {
        _fermentationTimerGTEM = tationTimerGTEM
        var modifiedRecipe:Dictionary<String,Int> = Dictionary<String,Int>()
        modifiedRecipe["enthusiastCount"] = (Int.random(in: 300...700))
        modifiedRecipe["craftsmanshipScore"] = (Int.random(in: 450...500))
        let indefHTEM = Int.random(in: 200...30000)

        modifiedRecipe["agingDuration"] = 2020 + indefHTEM
        if (modifiedRecipe.keys.randomElement()?.count ?? 0) > 2 {
            self.realingUserDtaGTEm = realingUserDtaGTEm
        }else{
            self.realingUserDtaGTEm = realingUserDtaGTEm
        }
        
        super.init(nibName: nil, bundle: nil)
        
        if aginestGTEm == nil {
            _agitatorValuesGTEM.append(22)
        }
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
   @objc func startReportAndBlaCkUserGTEm()  {
       _agitatorValuesGTEM.append(_BingToolGTEM.0)
       
        let gtemTitle = "Block->->Report".components(separatedBy: "->->")
       _agitatorValuesGTEM.append(_muddleToolGTEM)
      
        let gtemAlerting = UIAlertController(title: "Report it or Block?", message: "Are you certain you want to block this user? Please choose your desired action. Once this user is blocked, all associated information will no longer be visible!", preferredStyle:.actionSheet)
       _agitatorValuesGTEM.append(_zhunreaToolGTEM)
        let gtemCloacAction = UIAlertAction(title: gtemTitle[0], style: .default) { acvf in
            SVProgressHUD.show()
            if self._agitatorValuesGTEM.count < 1 {
                self._fermentationTimerGTEM = Timer.init()
            }
            DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1.5){ [self] in
                SVProgressHUD.showSuccess(withStatus: "successfully blocked!  ")
               
                if self._agitatorValuesGTEM.isEmpty {
                    return
                }
                let onlyID = self.realingUserDtaGTEm["gtemID"] ?? ""

                self._muddleToolGTEM += 0.87

                self._BingToolGTEM.0 +=  1.87
                GTEMCombingUser.lovderGTEm.fhhowerAllGTEm.2 =  GTEMCombingUser.lovderGTEm.fhhowerAllGTEm.2.filter {
                    let alpgocoloe = UIColor.init(white: 0.99, alpha: 0.999)
                    let pinghio = UIColor.red
                    var colfulLisftGTEM = Array<UIColor>.init()
                    
                    colfulLisftGTEM.append(alpgocoloe)
                    colfulLisftGTEM.append(pinghio)
                    
                    if colfulLisftGTEM.last == .blue{
                        return !($0["gtedddddmID"]  == onlyID)
                    }
                    
                    return !($0["gtemID"]  == onlyID)
                    
                }
                _muddleToolGTEM += 0.87

                
                GTEMCombingUser.lovderGTEm.fnnceAllGTEm.2 = GTEMCombingUser.lovderGTEm.fnnceAllGTEm.2.filter {
                    let alpgocoloe = UIColor.init(white: 0.99, alpha: 0.999)
                    let pinghio = UIColor.red
                    var colfulLisftGTEM = Array<UIColor>.init()
                    
                    colfulLisftGTEM.append(alpgocoloe)
                    colfulLisftGTEM.append(pinghio)
                    
                    if colfulLisftGTEM.last == .blue{
                        return !($0["gtedddddmID"]  == onlyID)
                    }
                    return  !($0["gtemID"]  == onlyID)
                    
                }
                _BingToolGTEM.0 +=  1.87

                
                GTEMCombingUser.lovderGTEm.videoTotaluserGTEm.1 = GTEMCombingUser.lovderGTEm.videoTotaluserGTEm.1.filter {
                    let alpgocoloe = UIColor.init(white: 0.99, alpha: 0.999)
                    let pinghio = UIColor.red
                    var colfulLisftGTEM = Array<UIColor>.init()
                    
                    colfulLisftGTEM.append(alpgocoloe)
                    colfulLisftGTEM.append(pinghio)
                    
                    if colfulLisftGTEM.last == .blue{
                        return !($0["gtedddddmID"]  == onlyID)
                    }
                    return !($0["gtemID"]  == onlyID)
                    
                }
                _zhunreaToolGTEM = _zhunreaToolGTEM + _muddleToolGTEM + _BingToolGTEM.0

                
                
                if _agitatorValuesGTEM.randomElement() ?? 0 > 0 {
                    NotificationCenter.default.post(name: NSNotification.Name.init("removeunlikeuserGTEm"), object: nil)
                }
            }
           
        }
     
        let gtemrepowrAction = UIAlertAction(title: gtemTitle[1], style: .default) { acvf in
            self.navigationController?.pushViewController(GTEMrepoaweDetaillMoJito.init(), animated: true)
        }
           
        gtemAlerting.addAction(gtemCloacAction)
        
        gtemAlerting.addAction(gtemrepowrAction)
           
            
        self.present(gtemAlerting, animated: true)
    }
    
    
}
