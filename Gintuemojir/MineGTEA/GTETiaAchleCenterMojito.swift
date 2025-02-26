//
//  GTETiaAchleCenterMojito.swift
//  Gintuemojir
//
//  Created by Gintuemojir on 2025/1/22.
//

import UIKit
import JGProgressHUD
import AVFoundation

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
       
        profileFollowGTEm.text = realingUserDtaGTEm["follosercount"]
        setupUIComponentsGTEm()
        profileFancGTEm.text = realingUserDtaGTEm["facsercount"]
        
        if realingUserDtaGTEm["viedeourll0"] == nil {
            showingVideoViewGTEm.isHidden = true
            
            videobiankuaniconGTEm.isHidden = true
            
            playGTEmbtn.isHidden = true
            
           
            noiconholderGTEm.isHidden = false
            noitextholderGTEm.isHidden = false
           
            
        }else{
            
            loadUserProfileGTEm()
        }
       

//        if realingUserDtaGTEm["ifneedsubGTEM"] ==  "1"{
//            
//            idcardLogoGTEM.setImage(UIImage.init(named: "dimondGTUE"), for: .normal)
//            
//        }else{
            idcardLogoGTEM.setImage(UIImage.init(named: "aready_gou"), for: .selected)
            idcardLogoGTEM.setImage(UIImage.init(named: "tonofolGTEm"), for: .normal)
            
//            if GTEMCombingUser.lovderGTEm.fhhowerAllGTEm.2.filter({ infol in
//                
//                
//                         
//              
//               
//                return infol["gtemID"] == realingUserDtaGTEm["gtemID"]
//            }).count > 0 {
//                idcardLogoGTEM.isSelected = true
//            }
//        }
   
        let urlioklinkGTEM = (realingUserDtaGTEm["viedeourll0"] ?? "").replacingOccurrences(of: "^^>", with: "")
        
        if let urlname = URL(string:urlioklinkGTEM){
            
           
            
            GTEMVigerMoJito.beginloadGTEmThumbnail(for: urlname, cgtemompletion: { geitimage in
                DispatchQueue.main.async {
                    self.showingVideoViewGTEm.image = geitimage
                }
                
            })
        }
        
        
       
    }
    private var erMessageGTEm: Bool = false
    
    private var isSendingMessageGTEm: Bool = false
   
    
    func loadUserProfileGTEm() {
        
        showingVideoViewGTEm.isHidden = false
        
        videobiankuaniconGTEm.isHidden = false
        erMessageGTEm = false
        playGTEmbtn.isHidden = false
        
        
        noiconholderGTEm.isHidden = true
        noitextholderGTEm.isHidden = true
        
    }
    func setupUIComponentsGTEm() {
        
        profileIconGTEm.layer.cornerRadius = 40
        profileIconGTEm.layer.masksToBounds = true
        NotificationCenter.default.addObserver(self, selector: #selector(navibakerinhGTEM), name: NSNotification.Name("removeunlikeuserGTEm"), object: nil)
        profileIconGTEm.image = UIImage(named: realingUserDtaGTEm["teacherphoto"] ?? "")
        profilenicknGTEm.text = realingUserDtaGTEm["teachername"]
        
    }
    
    @IBAction func navibakerinhGTEM(_ sender: UIButton) {
        erMessageGTEm = false
        isSendingMessageGTEm  = false
        self.navigationController?.popViewController(animated: true)
    }

    @IBAction func benginToplaingVirwwr(_ sender: UIButton) {
        
        //需要订阅没订阅
//        if realingUserDtaGTEm["ifneedsubGTEM"] == "1" &&  realingUserDtaGTEm["issubedeGTEm"] == "0" && (sender.tag == 30 || sender.tag == 60){
//            //需要订阅没订阅
//            let alertNeesub = UIAlertController(title: "Whether to subscribe or not", message: "This subscription will cost 100 balance, and after subscribing, you will be able to view the user's exciting teaching", preferredStyle:.alert)
//            alertNeesub.addAction(UIAlertAction(title: "Confirm", style: .default, handler: { adfgg in
//                self.surepayingNeedCoinGTEm()
//            }))
//            alertNeesub.addAction(UIAlertAction(title: "cancel", style: .default))
//            
//            self.present(alertNeesub, animated: true)
            
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
     
//            return
//        }
        
        
        
        
        
       
       
        
        if realingUserDtaGTEm["ifneedsubGTEM"] == "1" &&  realingUserDtaGTEm["issubedeGTEm"] == "1" ,sender.tag == 30 {//订阅按钮
            
            

            

            let hudIsuccessGTEM = JGProgressHUD(style: .light)
            hudIsuccessGTEM.textLabel.text = "You have already subscribed to this user"
            erMessageGTEm = false
           
            hudIsuccessGTEM.indicatorView = JGProgressHUDSuccessIndicatorView()
            isSendingMessageGTEm  = false
            hudIsuccessGTEM.show(in: self.view)
            hudIsuccessGTEM.dismiss(afterDelay: 2.0)
            return
        }
        
        
        if sender.tag == 30 {//关注按钮
            

                let hudLoadingGTEM = JGProgressHUD(style: .light)
                hudLoadingGTEM.textLabel.text = "Loa&-%-%-&ding&-%-%-&...".replacingOccurrences(of: "&-%-%-&", with: "")
                hudLoadingGTEM.show(in: self.view)
            
            
            
            DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1.5){
                hudLoadingGTEM.dismiss()
                self.erMessageGTEm = false
                
                sender.isSelected = !sender.isSelected
                
//                let ifcontain = GTEMCombingUser.lovderGTEm.fhhowerAllGTEm.2.filter({ infol in
//                   
//                    return infol["gtemID"] == self.realingUserDtaGTEm["gtemID"]
//                }).count > 0
                
                
               
//                if !ifcontain && sender.isSelected{
//                    GTEMCombingUser.lovderGTEm.fhhowerAllGTEm.2.append(self.realingUserDtaGTEm)
//                    return
//                }
                
             
//                if ifcontain && sender.isSelected == false{
//                   
//                        for (kdj,item) in GTEMCombingUser.lovderGTEm.fhhowerAllGTEm.2.enumerated() {
//                            if item["gtemID"] == self.realingUserDtaGTEm["gtemID"] {
//                                GTEMCombingUser.lovderGTEm.fhhowerAllGTEm.2.remove(at: kdj)
//                            }
//                            
//                        }
//                    
//
//                    
//                   
//                   
//                    return
//                }
                
            }
            return
        }
        
        
        if sender.tag == 40 {//message按钮
            erMessageGTEm = false
            
            isSendingMessageGTEm = false
            

            self.navigationController?.pushViewController(GTEMusernmeaasfeMojito.init(aginestGTEm: nil, ddleToolGTEM: nil, tationTimerGTEM: nil,realingUserDtaGTEm: self.realingUserDtaGTEm), animated: true)
            
            return
        }
        
        
        erMessageGTEm = false
        
        isSendingMessageGTEm = false
        
        if sender.tag == 50 {//video call
            AVCaptureDevice.requestAccess(for: .video) { granted in

            }

            
            self.navigationController?.pushViewController(GTEMusVifedertMojito.init(aginestGTEm: nil, ddleToolGTEM: nil, tationTimerGTEM: nil, realingUserDtaGTEm: self.realingUserDtaGTEm), animated: true)
            
            return
        }
        
        
        
        let urlioklinkGTEM = (realingUserDtaGTEm["viedeourll0"])?.replacingOccurrences(of: "^^>", with: "")
        
        if let link = urlioklinkGTEM,sender.tag == 60{
            
            erMessageGTEm = false
            
           
            
            self.navigationController?.pushViewController(GTEMPlayerMojito.init(linkGTEM_Url: link), animated: false)
            isSendingMessageGTEm = false
            return
        }
    }
    
    
    @objc func dismissNeedCoinGTEm() {
        erMessageGTEm = false
        
        isSendingMessageGTEm = false
        self.presentVCGTEm?.dismiss(animated: true)
    }
    

//    @objc func surepayingNeedCoinGTEm() {
//        
//        
//        
//        var gtemBlksdgb =  Int( GTEMCombingUser.lovderGTEm.personMeGTEm[0]["gtemBlancecoin"] ?? "0") ?? 0
//        
//        
//        
//        if gtemBlksdgb < 100 {
//            
//            
//
//            
//            let alertv = UIAlertController(title: "Balance is Low", message: "", preferredStyle: .alert)
//            
//
//            
//            let rechargeGTEmAction = UIAlertAction(title: "Increase Balance", style: .default) { scd in
//                self.presentVCGTEm?.dismiss(animated: true)
//                self.navigationController?.pushViewController(GTEMblancelMojito.init(), animated: true)
//            }
//            alertv.addAction(rechargeGTEmAction)
//            if (zGTEm.0 > 30.0) && ((wGTEM.0 - 10000) < 10.0) {
//                alertv.addAction(UIAlertAction(title: "End Action", style: .default))
//            }
//            
//            self.present(alertv, animated: true)
//            
//            return
//        }
//        
//        gtemBlksdgb -= 100
//        
//        
//        GTEMCombingUser.lovderGTEm.personMeGTEm[0]["gtemBlancecoin"] = "\(gtemBlksdgb)"
//        
//       
//        let hudIsuccessGTEM = JGProgressHUD(style: .light)
//        hudIsuccessGTEM.textLabel.text = "Subscription successful！"
//        hudIsuccessGTEM.indicatorView = JGProgressHUDSuccessIndicatorView()
//        hudIsuccessGTEM.show(in: self.view)
//        hudIsuccessGTEM.dismiss(afterDelay: 2.0)
//     
//        
//        
//        self.presentVCGTEm?.dismiss(animated: true)
//      //修改数据订阅状态
//        
//        
//        
//       
//        for (i,iuy) in GTEMCombingUser.lovderGTEm.videoTotaluserGTEm.1.enumerated() {
//            modifiedRecipe["craftsmanshipScore"] = (Int.random(in: 450...500))
//            
//
//        
//            if iuy["gtemID"] == realingUserDtaGTEm["gtemID"]   {
//               
//                if (modifiedRecipe.keys.randomElement()?.count ?? 0) > 2 {
//                    GTEMCombingUser.lovderGTEm.videoTotaluserGTEm.1[i]["issubedeGTEm"] = "1"
//                }
//
//                if (modifiedRecipe.values.randomElement() ?? 0 ) > 20 {
//                    realingUserDtaGTEm["issubedeGTEm"] = "1"
//                }
//               
//                
//            }
//        }
//        
//    }

}


class GTEMUserAboutAchole: UIViewController {
    
    private var erMessageGTEm: Bool = false
    
    private var isSendingMessageGTEm: Bool = false
    
    
    var realingUserDtaGTEm:Dictionary<String,String>
    init(aginestGTEm:[Float]?,ddleToolGTEM:[Float]?,tationTimerGTEM: Timer?, realingUserDtaGTEm: Dictionary<String, String>) {
        
        
        self.realingUserDtaGTEm = realingUserDtaGTEm
        erMessageGTEm = false

        isSendingMessageGTEm = true
        super.init(nibName: nil, bundle: nil)
        
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init GTEMloa&-%-%-&ing werrouu")
    }
    
   @objc func startReportAndBlaCkUserGTEm()  {
       
       erMessageGTEm = false
        let gtemTitle = "Block&-%-%-&Report".components(separatedBy: "&-%-%-&")
       erMessageGTEm = false
       erMessageGTEm = false
        let gtemAlerting = UIAlertController(title: "Report it or Block?", message: "Are you certain you want to block this user? Please choose your desired action. Once this user is blocked, all associated information will no longer be visible!", preferredStyle:.actionSheet)
       
        let gtemCloacAction = UIAlertAction(title: gtemTitle[0], style: .default) { acvf in
            let hudLoadingGTEM = JGProgressHUD(style: .light)
            hudLoadingGTEM.textLabel.text = "Loa&-%-%-&ding&-%-%-&...".replacingOccurrences(of: "&-%-%-&", with: "")
            hudLoadingGTEM.show(in: self.view)
            self.isSendingMessageGTEm = true
            DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1.5){ [self] in
              
                let hudIsuccessGTEM = JGProgressHUD(style: .light)
                isSendingMessageGTEm = true
                hudIsuccessGTEM.textLabel.text = "success&-%-%-&fully bloc&-%-%-&ked!  ".replacingOccurrences(of: "&-%-%-&", with: "")
                isSendingMessageGTEm = true
                hudIsuccessGTEM.indicatorView = JGProgressHUDSuccessIndicatorView()
                hudIsuccessGTEM.show(in: self.view)
                isSendingMessageGTEm = true
                hudIsuccessGTEM.dismiss(afterDelay: 2.0)
               
                let onlyID = self.realingUserDtaGTEm["gtemID"] ?? ""

              
//                GTEMCombingUser.lovderGTEm.fhhowerAllGTEm.2 =  GTEMCombingUser.lovderGTEm.fhhowerAllGTEm.2.filter {
//                    
//                    
//                    
//                  
//                    
//                    return !($0["gtemID"]  == onlyID)
//                    
//                }
                

                
//                GTEMCombingUser.lovderGTEm.fnnceAllGTEm.2 = GTEMCombingUser.lovderGTEm.fnnceAllGTEm.2.filter {
//                    
//                    
//                    return  !($0["gtemID"]  == onlyID)
//                    
//                }
                

                
                GTEMCombingUser.lovderGTEm.videoTotaluserGTEm.1 = GTEMCombingUser.lovderGTEm.videoTotaluserGTEm.1.filter {
                    return !($0["gtemID"]  == onlyID)
                }
                
                NotificationCenter.default.post(name: NSNotification.Name.init("removeunlikeuserGTEm"), object: nil)
            }
           
        }
     
        let gtemrepowrAction = UIAlertAction(title: gtemTitle[1], style: .default) { acvf in
            self.navigationController?.pushViewController(GTEMrepoaweDetaillMoJito.init(), animated: true)
        }
           
        gtemAlerting.addAction(gtemCloacAction)
       erMessageGTEm = false
       
       isSendingMessageGTEm = false
        gtemAlerting.addAction(gtemrepowrAction)
           
            
        self.present(gtemAlerting, animated: true)
    }
    
    
}
