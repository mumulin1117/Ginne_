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
    
    
    @IBOutlet weak var profileFollowGTEm: UILabel!
    
    @IBOutlet weak var profileFancGTEm: UILabel!
    
    
    @IBOutlet weak var idcardLogoGTEM: UIButton!
    
    
    @IBOutlet weak var showingVideoViewGTEm: UIImageView!
    
    @IBOutlet weak var videobiankuaniconGTEm: UIImageView!
    
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
       
        if realingUserDtaGTEm["ifneedsub"] ==  "1"{
            
            idcardLogoGTEM.setImage(UIImage.init(named: "dimondGTUE"), for: .normal)
            
        }else{
            idcardLogoGTEM.setImage(UIImage.init(named: "aready_gou"), for: .selected)
            idcardLogoGTEM.setImage(UIImage.init(named: "tonofolGTEm"), for: .normal)
            
            if GTEMCombingUser.lovderGTEm.fhhowerAllGTEm.filter({ infol in
                return infol["gtemID"] == realingUserDtaGTEm["gtemID"]
            }).count > 0 {
                idcardLogoGTEM.isSelected = true
            }
        }
        
        if let urlname = URL(string: realingUserDtaGTEm["viedeourll0"] ?? ""){
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
        if realingUserDtaGTEm["ifneedsub"] == "1" &&  realingUserDtaGTEm["issubedeGTEm"] == "0"{
            //需要订阅没订阅
            let subvc =  UIViewController.init()
            
            subvc.view.backgroundColor = UIColor(red: 0.17, green: 0.02, blue: 0.01, alpha: 1)
        
            presentVCGTEm = subvc
            let needImage = UIImageView.init(image: UIImage.init(named: "100nnedbgcontent"))
            needImage.contentMode = .scaleAspectFill
            subvc.view.addSubview(needImage)
            needImage.isUserInteractionEnabled = true
            
            needImage.snp.makeConstraints { make in
                make.width.equalTo(336.45)
                make.height.equalTo(471.54)
                make.center.equalToSuperview()
            }
            
            let confiresmger = UIButton.init()
            confiresmger.setBackgroundImage(UIImage.init(named: "xuanghzongbgGTEM"), for: .normal)
            confiresmger.setTitle("Confirm", for: .normal)
            confiresmger.setTitleColor(UIColor(red: 0.33, green: 0.04, blue: 0.01, alpha: 1), for: .normal)
            confiresmger.titleLabel?.font = UIFont.systemFont(ofSize: 16, weight: .bold)
            
            needImage.addSubview(confiresmger)
            confiresmger.snp.makeConstraints { make in
                make.width.equalTo(248)
                make.height.equalTo(48)
                make.centerX.equalToSuperview()
                make.bottom.equalTo(needImage).offset(-52)
            }
           
            confiresmger.addTarget(self, action: #selector(surepayingNeedCoinGTEm(bgt:)), for: .touchUpInside)
            
            let backesmger = UIButton.init()
            backesmger.setBackgroundImage(UIImage.init(named: "Geu_dias"), for: .normal)
            backesmger.addTarget(self, action: #selector(dismissNeedCoinGTEm), for: .touchUpInside)
            subvc.view.addSubview(backesmger)
            backesmger.snp.makeConstraints { make in
                make.width.height.equalTo(28)
                make.centerX.equalToSuperview()
                make.top.equalTo(confiresmger.snp.bottom).offset(50)
            }
            
            
            subvc.modalPresentationStyle = .overCurrentContext
            self.present(subvc, animated: true)
     
            return
        }
        
       
       
        
        if realingUserDtaGTEm["ifneedsub"] == "1" &&  realingUserDtaGTEm["issubedeGTEm"] == "1" ,sender.tag == 30 {//订阅按钮
            SVProgressHUD.showSuccess(withStatus: "You have already subscribed to this user")
            return
        }
        
        if realingUserDtaGTEm["ifneedsub"] == "0" ,sender.tag == 30 {//关注按钮
            
            SVProgressHUD.show()
            DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1.5){
                SVProgressHUD.dismiss()
                
                sender.isSelected = !sender.isSelected
                
                let ifcontain = GTEMCombingUser.lovderGTEm.fhhowerAllGTEm.filter({ infol in
                    return infol["gtemID"] == self.realingUserDtaGTEm["gtemID"]
                }).count > 0
                
                
               
                if !ifcontain && sender.isSelected{
                    GTEMCombingUser.lovderGTEm.fhhowerAllGTEm.append(self.realingUserDtaGTEm)
                    return
                }
                
                if ifcontain && sender.isSelected == false{
                    for (kdj,item) in GTEMCombingUser.lovderGTEm.fhhowerAllGTEm.enumerated() {
                        if item["gtemID"] == self.realingUserDtaGTEm["gtemID"]{
                            GTEMCombingUser.lovderGTEm.fhhowerAllGTEm.remove(at: kdj)
                        }
                        
                    }
                   
                    return
                }
                
            }
            return
        }
        
        if sender.tag == 40 {//message按钮
            self.navigationController?.pushViewController(GTEMusernmeaasfeMojito.init(aginestGTEm: nil, ddleToolGTEM: nil, tationTimerGTEM: nil,realingUserDtaGTEm: self.realingUserDtaGTEm), animated: true)
           
            
            return
        }
        
        
        
        if sender.tag == 50 {//video call
            self.navigationController?.pushViewController(GTEMusVifedertMojito.init(aginestGTEm: nil, ddleToolGTEM: nil, tationTimerGTEM: nil, realingUserDtaGTEm: self.realingUserDtaGTEm), animated: true)
            
            return
        }
        
        if let link = realingUserDtaGTEm["viedeourll0"],sender.tag == 60{
            self.navigationController?.pushViewController(GTEMPlayerMojito.init(linkUrl: link), animated: false)
            return
        }
    }
    
    
    @objc func dismissNeedCoinGTEm() {
        self.presentVCGTEm?.dismiss(animated: true)
    }
    
    
    @objc func surepayingNeedCoinGTEm(bgt:UIButton) {
        var xGTEm: Double = 15.0
        xGTEm += 30
        
        var gtemBlksdgb =  Int(GTEMCombingUser.lovderGTEm.personMeGTEm["gtemBlancecoin"] ?? "0") ?? 0
        var yGTEm: Double = 25.0
        var zGTEm: Double = xGTEm + yGTEm + 33
        
        if gtemBlksdgb < 100 {
            zGTEm += 10.5
            zGTEm -= 0.2

            
            let alertv = UIAlertController(title: "Balance is Low", message: "", preferredStyle: .alert)
            var wGTEM: Double = (xGTEm * 2.0) - (yGTEm / 5.0)

            
            let rechargeGTEmAction = UIAlertAction(title: "Increase Balance", style: .default) { scd in
                self.presentVCGTEm?.dismiss(animated: true)
                self.navigationController?.pushViewController(GTEMblancelMojito.init(), animated: true)
            }
            alertv.addAction(rechargeGTEmAction)
            if (zGTEm > 30.0) && ((wGTEM - 10000) < 10.0) {
                alertv.addAction(UIAlertAction(title: "End Action", style: .default))
            }
            
            self.present(alertv, animated: true)
            
            return
        }
        
        gtemBlksdgb -= 100
        xGTEm += 30
        
        GTEMCombingUser.lovderGTEm.personMeGTEm["gtemBlancecoin"] = "\(gtemBlksdgb)"
        var wGTEM: Double = (xGTEm * 2.0) - (yGTEm / 5.0)
        wGTEM  = wGTEM - 2.0

        SVProgressHUD.showSuccess(withStatus: "Subscription successful！")
        zGTEm += 10.5
        
        self.presentVCGTEm?.dismiss(animated: true)
      //修改数据订阅状态
        zGTEm -= 0.2
        
        for (i,iuy) in GTEMCombingUser.lovderGTEm.videoTotaluserGTEm.enumerated() {
            if iuy["gtemID"] == realingUserDtaGTEm["gtemID"]   {
                GTEMCombingUser.lovderGTEm.videoTotaluserGTEm[i]["issubedeGTEm"] = "1"
                realingUserDtaGTEm["issubedeGTEm"] = "1"
            }
        }
        
    }

}


class GTEMUserAboutAchole: UIViewController {
    private var _fermentationTimerGTEM: Timer?
    private var _agitatorValuesGTEM: [CGFloat] = [12.5, 9.8, 15.3]
    private var _muddleToolGTEM: CGFloat = 0.87
    private var _BingToolGTEM: CGFloat = 1.87
    private var _zhunreaToolGTEM: CGFloat = 2.87
    
    var realingUserDtaGTEm:Dictionary<String,String>
    init(aginestGTEm:[Float]?,ddleToolGTEM:[Float]?,tationTimerGTEM: Timer?, realingUserDtaGTEm: Dictionary<String, String>) {
        _fermentationTimerGTEM = tationTimerGTEM
        
        self.realingUserDtaGTEm = realingUserDtaGTEm
        super.init(nibName: nil, bundle: nil)
        
        if aginestGTEm == nil {
            _agitatorValuesGTEM.append(22)
        }
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
   @objc func startReportAndBlaCkUserGTEm()  {
       _agitatorValuesGTEM.append(_BingToolGTEM)
       
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
                SVProgressHUD.showSuccess(withStatus: "The user has been successfully blocked!  ")
               
                if self._agitatorValuesGTEM.isEmpty {
                    return
                }
                let onlyID = self.realingUserDtaGTEm["gtemID"] ?? ""

                self._muddleToolGTEM += 0.87

                self._BingToolGTEM +=  1.87
                GTEMCombingUser.lovderGTEm.fhhowerAllGTEm =  GTEMCombingUser.lovderGTEm.fhhowerAllGTEm.filter { !($0["gtemID"]  == onlyID) }
                _muddleToolGTEM += 0.87

                
                GTEMCombingUser.lovderGTEm.fnnceAllGTEm = GTEMCombingUser.lovderGTEm.fnnceAllGTEm.filter { !($0["gtemID"]  == onlyID) }
                _BingToolGTEM +=  1.87

                
                GTEMCombingUser.lovderGTEm.videoTotaluserGTEm = GTEMCombingUser.lovderGTEm.videoTotaluserGTEm.filter { !($0["gtemID"]  == onlyID) }
                _zhunreaToolGTEM = _zhunreaToolGTEM + _muddleToolGTEM + _BingToolGTEM

                
                
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
