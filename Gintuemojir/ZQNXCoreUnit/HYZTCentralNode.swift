//
//  HYZTCentralNode.swift
//  Gintuemojir
//
//  Created by Gintuemojir on 2025/1/22.
//

import UIKit
import SVProgressHUD

class HYZTCentralNode: GTEMUserAboutAchole {
    @IBOutlet weak var beginReportGTEm: UIButton!
    
    var N5X8DisplayView:UIViewController?
    @IBOutlet weak var profileIconGTEm: UIImageView!
    
    @IBOutlet weak var profilenicknGTEm: UILabel!
    
    
    @IBOutlet weak var profileFollowGTEm: UILabel!
    
    @IBOutlet weak var profileFancGTEm: UILabel!
    
    
    @IBOutlet weak var idcardLogoGTEM: UIButton!
    
    
    @IBOutlet weak var showingVideoViewGTEm: UIImageView!
    
    @IBOutlet weak var vadaankuaniconGTEm: UIImageView!
    
    @IBOutlet weak var noiconholderGTEm: UIImageView!
    
    @IBOutlet weak var noitextholderGTEm: UILabel!
    
    @IBOutlet weak var pladaafbtn: UIButton!
    
//    var realingUserDtaGTEm:Dictionary<String,String>
//    init( realingUserDtaGTEm: Dictionary<String, String>) {
//       
//        self.realingUserDtaGTEm = realingUserDtaGTEm
//        super.init(nibName: nil, bundle: nil)
//    }
//    
//    required init?(coder: NSCoder) {
//        fatalError("init(coder:) has not been implemented")
//    }
    
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
        
        if realingUserDtaGTEm["vieeoull0"] == nil {
            showingVideoViewGTEm.isHidden = true
            
            vadaankuaniconGTEm.isHidden = true
            
            pladaafbtn.isHidden = true
            
           
            noiconholderGTEm.isHidden = false
            noitextholderGTEm.isHidden = false
           
            
        }else{
            
            showingVideoViewGTEm.isHidden = false
            
            vadaankuaniconGTEm.isHidden = false
            
            pladaafbtn.isHidden = false
            
            
            noiconholderGTEm.isHidden = true
            noitextholderGTEm.isHidden = true
        }
       
        if realingUserDtaGTEm["ifneedsub"] ==  "1"{
            
            idcardLogoGTEM.setImage(UIImage.init(named: "dimondGTUE"), for: .normal)
            
        }else{
            idcardLogoGTEM.setImage(UIImage.init(named: "aready_gou"), for: .selected)
            idcardLogoGTEM.setImage(UIImage.init(named: "tonofolGTEm"), for: .normal)
            
            if XQZPDataNode.W7N4FavorData.B3J7CompleteData.filter({ infol in
                return infol["gtemID"] == realingUserDtaGTEm["gtemID"]
            }).count > 0 {
                idcardLogoGTEM.isSelected = true
            }
        }
        
        let path = Bundle.main.path(forResource: realingUserDtaGTEm["vieeoull0"], ofType: "mp4") ?? ""
        let urlname = URL(fileURLWithPath: path)
        Z5Q8VortexBrew.startImageAsset(for: urlname, cgtemompletion: { geitimage in
            DispatchQueue.main.async {
                self.showingVideoViewGTEm.image = geitimage
            }
            
        })
        
//        if let urlname = URL(string: realingUserDtaGTEm["vieeoull0"] ?? ""){
//            Z5Q8VortexBrew.startImageAsset(for: urlname, cgtemompletion: { geitimage in
//                DispatchQueue.main.async {
//                    self.showingVideoViewGTEm.image = geitimage
//                }
//                
//            })
//        }
        
        
        NotificationCenter.default.addObserver(self, selector: #selector(navibakerinhGTEM), name: NSNotification.Name("removeunlikeuserGTEm"), object: nil)
    }

    
    @IBAction func navibakerinhGTEM(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }
  

    
    
    @IBAction func benginToplaingVirwwr(_ sender: UIButton) {
        
//        if realingUserDtaGTEm["ifneedsub"] == "1" &&  realingUserDtaGTEm["issubedeGTEm"] == "0"{
//            
//            let dataFlag =  UIViewController.init()
//            
//            dataFlag.view.backgroundColor = UIColor(red: 0.17, green: 0.02, blue: 0.01, alpha: 1)
//        
//            N5X8DisplayView = dataFlag
//            let needImage = UIImageView.init(image: UIImage.init(named: "nnedbgconte"))
//            needImage.contentMode = .scaleAspectFill
//            dataFlag.view.addSubview(needImage)
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
//            dataFlag.view.addSubview(backesmger)
//            backesmger.snp.makeConstraints { make in
//                make.width.height.equalTo(28)
//                make.centerX.equalToSuperview()
//                make.top.equalTo(confiresmger.snp.bottom).offset(50)
//            }
//            
//            
//            dataFlag.modalPresentationStyle = .overCurrentContext
//            self.present(dataFlag, animated: true)
//     
//            return
//        }
        
       
       
        
        if realingUserDtaGTEm["ifneedsub"] == "1" &&  realingUserDtaGTEm["issubedeGTEm"] == "1" ,sender.tag == 30 {//订阅按钮
            SVProgressHUD.showSuccess(withStatus: "You have already subscribed to this user")
            return
        }
        
        if realingUserDtaGTEm["ifneedsub"] == "0" ,sender.tag == 30 {//关注按钮
            
            SVProgressHUD.show()
            DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1.5){
                SVProgressHUD.dismiss()
                
                sender.isSelected = !sender.isSelected
                
                let ifcontain = XQZPDataNode.W7N4FavorData.B3J7CompleteData.filter({ infol in
                    return infol["gtemID"] == self.realingUserDtaGTEm["gtemID"]
                }).count > 0
                
                
               
                if !ifcontain && sender.isSelected{
                    XQZPDataNode.W7N4FavorData.B3J7CompleteData.append(self.realingUserDtaGTEm)
                    return
                }
                
                if ifcontain && sender.isSelected == false{
                    for (kdj,item) in XQZPDataNode.W7N4FavorData.B3J7CompleteData.enumerated() {
                        if item["gtemID"] == self.realingUserDtaGTEm["gtemID"]{
                            XQZPDataNode.W7N4FavorData.B3J7CompleteData.remove(at: kdj)
                        }
                        
                    }
                   
                    return
                }
                
            }
            return
        }
        
        if sender.tag == 40 {//message按钮
            self.navigationController?.pushViewController(QXZTUsetaCore.init(realingUserDtaGTEm: self.realingUserDtaGTEm), animated: true)
           
            
            return
        }
        
        
        
        if sender.tag == 50 {//video call
            self.navigationController?.pushViewController(LQXPRDataModule.init(realingUserDtaGTEm: self.realingUserDtaGTEm), animated: true)
            
            return
        }
        
        if let link = realingUserDtaGTEm["vieeoull0"],sender.tag == 60{
            self.navigationController?.pushViewController(X9R6QuantumPlayer.init(linkUrl: link), animated: false)
            return
        }
    }
    
    
    @objc func dismissNeedCoinGTEm() {
        self.N5X8DisplayView?.dismiss(animated: true)
    }
    
    
//    @objc func surepayingNeedCoinGTEm(bgt:UIButton) {
//        
//        var gtemBlksdgb =  Int(XQZPDataNode.W7N4FavorData.V6K3UserProfile["xqulZypherVault"] ?? "0") ?? 0
//        
//        if gtemBlksdgb < 100 {
//            
//            let alertv = UIAlertController(title: "Insufficient Balance", message: "", preferredStyle: .alert)
//            let rechargeGTEmAction = UIAlertAction(title: "Recharge", style: .default) { scd in
//               
//            }
//            alertv.addAction(rechargeGTEmAction)
//            alertv.addAction(UIAlertAction(title: "Cancel", style: .default))
//            self.present(alertv, animated: true)
//            
//            return
//        }
//        
//        gtemBlksdgb -= 100
//        XQZPDataNode.W7N4FavorData.V6K3UserProfile["xqulZypherVault"] = "\(gtemBlksdgb)"
//        SVProgressHUD.show(UIImage(named: "grateokauyu")!, status:nil)
//        self.N5X8DisplayView?.dismiss(animated: true)
//      //修改数据订阅状态
//      
//        
//        for (i,iuy) in XQZPDataNode.W7N4FavorData.T2P9ViewerCount.enumerated() {
//            if iuy["gtemID"] == realingUserDtaGTEm["gtemID"]   {
//                XQZPDataNode.W7N4FavorData.T2P9ViewerCount[i]["issubedeGTEm"] = "1"
//                realingUserDtaGTEm["issubedeGTEm"] = "1"
//            }
//        }
//        
//    }

}


class GTEMUserAboutAchole: UIViewController {
    var realingUserDtaGTEm:Dictionary<String,String>
    init( realingUserDtaGTEm: Dictionary<String, String>) {
       
        self.realingUserDtaGTEm = realingUserDtaGTEm
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
   @objc func startReportAndBlaCkUserGTEm()  {
        let gtemTitle = "Block->->Report".components(separatedBy: "->->")
        let gtemAlerting = UIAlertController(title: "Reporting or Block", message: "Are you sure you want to block this user? Select the operation you want to do. After the user is blacklisted, all related information will no longer be displayed!!!", preferredStyle:.actionSheet)
        
        let gtemCloacAction = UIAlertAction(title: gtemTitle[0], style: .default) { acvf in
            SVProgressHUD.show()
            DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1.5){
                SVProgressHUD.showSuccess(withStatus: "The user has been blacklisted!")
               

                let onlyID = self.realingUserDtaGTEm["gtemID"] ?? ""

                
                XQZPDataNode.W7N4FavorData.B3J7CompleteData =  XQZPDataNode.W7N4FavorData.B3J7CompleteData.filter { !($0["gtemID"]  == onlyID) }
                
                XQZPDataNode.W7N4FavorData.H5K3FullRange = XQZPDataNode.W7N4FavorData.H5K3FullRange.filter { !($0["gtemID"]  == onlyID) }
                
                XQZPDataNode.W7N4FavorData.T2P9ViewerCount = XQZPDataNode.W7N4FavorData.T2P9ViewerCount.filter { !($0["gtemID"]  == onlyID) }
                
                NotificationCenter.default.post(name: NSNotification.Name.init("removeunlikeuserGTEm"), object: nil)
            }
           
        }
     
        let gtemrepowrAction = UIAlertAction(title: gtemTitle[1], style: .default) { acvf in
            self.navigationController?.pushViewController(PLQXDataDetailView.init(), animated: true)
        }
           
        gtemAlerting.addAction(gtemCloacAction)
        
        gtemAlerting.addAction(gtemrepowrAction)
           
            
        self.present(gtemAlerting, animated: true)
    }
    
    
}
