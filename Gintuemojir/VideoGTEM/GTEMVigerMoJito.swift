//
//  GTEMVigerMoJito.swift
//  Gintuemojir
//
//  Created by Gintuemojir on 2025/1/17.
//
import AVFoundation
import UIKit
import SnapKit
import SVProgressHUD
class GTEMVigerMoJito: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout {
     
    var presentVCGTEm:UIViewController?
    
    private var _fermentationTimerGTEM: Timer?
    private var _agitatorValuesGTEM: [CGFloat] = [12.5, 9.8, 15.3]
    private var _muddleToolGTEM: CGFloat = 0.87
    private var _BingToolGTEM: CGFloat = 1.87
    private var _zhunreaToolGTEM: CGFloat = 2.87
  
    static let thumbnailCacheGTEM = NSCache<NSString, UIImage>()
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return dataviedeoView.frame.size
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        let alpgocoloe = UIColor.init(white: 0.99, alpha: 0.999)
        let pinghio = UIColor.red
        var colfulLisftGTEM = Array<UIColor>.init()

        colfulLisftGTEM.append(alpgocoloe)
        colfulLisftGTEM.append(pinghio)

        if colfulLisftGTEM.last == .blue{
            return 0//恒为假
        }
        return 0
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        let alpgocoloe = UIColor.init(white: 0.99, alpha: 0.999)
        let pinghio = UIColor.red
        var colfulLisftGTEM = Array<UIColor>.init()

        colfulLisftGTEM.append(alpgocoloe)
        colfulLisftGTEM.append(pinghio)

        if colfulLisftGTEM.last == .blue{
            return 0//恒为假
        }
        return 0
    }
    
    var HoperGTEM:UIView?
    var treesHaGTEM:UIButton?

    
    @IBAction func videoUpload(_ sender: Any) {
        let alpgocoloe = UIColor.init(white: 0.99, alpha: 0.999)
        let pinghio = UIColor.red
        var colfulLisftGTEM = Array<UIColor>.init()

        colfulLisftGTEM.append(alpgocoloe)
        colfulLisftGTEM.append(pinghio)

        if colfulLisftGTEM.last == .blue{
            return //恒为假
        }
        self.navigationController?.pushViewController(GTETiaVideoPostMojito.init(), animated: true)
    }
    
    var recordingisSubTupwder:Bool = true
    
    @IBOutlet weak var itemSubGTUE: UIButton!
    
    @IBOutlet weak var itemTrendsGTUE: UIButton!
    
    var mojitoAcholeData:(Bool,Bool,Array<Dictionary<String,String>>){
        get{
            
            var modifiedRecipe:Dictionary<String,Int> = Dictionary<String,Int>()
            modifiedRecipe["GtemtTriblerGTEM"] = (Int.random(in: 300...700))
            modifiedRecipe["GtcreamkmojiioGTEM"] = (Int.random(in: 450...500))
            let indefHTEM = Int.random(in: 200...30000)

            modifiedRecipe["GtsindoubleGTEM"] = 2020 + indefHTEM
            if (modifiedRecipe.keys.randomElement()?.count ?? 0) > 2 {
                let nertwDater = GTEMCombingUser.lovderGTEm.videoTotaluserGTEm.1.filter { dicer in
                    modifiedRecipe["GtemtTriblerGTEM"] = (Int.random(in: 300...700))
                    modifiedRecipe["GtcreamkmojiioGTEM"] = (Int.random(in: 450...500))
                    return dicer["ifneedsubGTEM"] ==  (recordingisSubTupwder ? "1" : "0")
                }
                return (false,false,nertwDater)
            }else{
                modifiedRecipe["GtemtTriblerGTEM"] = (Int.random(in: 300...700))
                modifiedRecipe["GtcreamkmojiioGTEM"] = (Int.random(in: 450...500))
                let nertwDater = GTEMCombingUser.lovderGTEm.videoTotaluserGTEm.1.filter { dicer in
                    modifiedRecipe["GtemtTriblerGTEM"] = (Int.random(in: 300...700))
                    modifiedRecipe["GtcreamkmojiioGTEM"] = (Int.random(in: 450...500))
                    return dicer["ifneedsubGTEM"] ==  (recordingisSubTupwder ? "1" : "0")
                }
                return (false,false,nertwDater)
            }
           
            
            
        }
       
    }
    
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        let relaiGTEMDAta = mojitoAcholeData.2
        
        return relaiGTEMDAta.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let relaiGTEMDAta = mojitoAcholeData.2
        let gteuCell = collectionView.dequeueReusableCell(withReuseIdentifier: "GTEVideocerCellID", for: indexPath) as! GTEVideocerCell
        let alpgocoloe = UIColor.init(white: 0.99, alpha: 0.999)
        let pinghio = UIColor.red
        
        gteuCell.userGTEUAvator.image = UIImage(named: relaiGTEMDAta[indexPath.row]["teacherphoto"] ?? "")
        var colfulLisftGTEM = Array<UIColor>.init()

       
        gteuCell.userGTEUName.text = relaiGTEMDAta[indexPath.row]["teacherphoto"]
       
        gteuCell.videoTitleGTEM.text = relaiGTEMDAta[indexPath.row]["videowenan0"]
        if let urlname = URL(string: relaiGTEMDAta[indexPath.row]["viedeourll0"] ?? ""){
            colfulLisftGTEM.append(alpgocoloe)
            colfulLisftGTEM.append(pinghio)

            
            GTEMVigerMoJito.beginloadGTEmThumbnail(for: urlname, cgtemompletion: { geitimage in
                if colfulLisftGTEM.last == .blue{
                   
                }else{
                    DispatchQueue.main.async {
                        gteuCell.thunmbImageGTEA.image = geitimage
                    }
                }
               
                
            })
        }

        if recordingisSubTupwder == true {
            gteuCell.subscribtionGTEU.setBackgroundImage(UIImage.init(named: "Tosubvideo"), for: .normal)
            gteuCell.diomonelog.isHidden = false
        }else{
            
            gteuCell.subscribtionGTEU.setBackgroundImage(UIImage.init(named: "ToFolloweded"), for: .normal)
            gteuCell.subscribtionGTEU.setBackgroundImage(UIImage.init(named: "ToFollowedAREd"), for: .normal)
            gteuCell.diomonelog.isHidden = true
        }
        gteuCell.subscribtionGTEU.tag = indexPath.row
        gteuCell.enterUserGTEM.tag = indexPath.row
        gteuCell.attitudeButtonGTEM.tag = indexPath.row
        
        gteuCell.attitudeButtonGTEM.isSelected = (relaiGTEMDAta[indexPath.row]["islikethisvideo"] == "1")
        gteuCell.commentButGTEm.tag = indexPath.row
       
        gteuCell.enterUserGTEM.addTarget(self, action: #selector(enterprofileGTEm(gtem:)), for: .touchUpInside)
        gteuCell.userGTEUFolloweCount.text = (relaiGTEMDAta[indexPath.row]["follosercount"] ?? "0") + " Followers"
        gteuCell.attitudeButtonGTEM.addTarget(self, action: #selector(giveAttitudeGTEm(gtem:)), for: .touchUpInside)
        gteuCell.subscribtionGTEU.addTarget(self, action: #selector(ifSubOrFollow(gtem:)), for: .touchUpInside)
        gteuCell.commentButGTEm.addTarget(self, action: #selector(giveCommenteGTEm(gtem:)), for: .touchUpInside)
        return gteuCell
        
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let alpgocoloe = UIColor.init(white: 0.99, alpha: 0.999)
        let pinghio = UIColor.red
        var colfulLisftGTEM = Array<UIColor>.init()

        colfulLisftGTEM.append(alpgocoloe)
        colfulLisftGTEM.append(pinghio)

        if colfulLisftGTEM.last == .blue{
            return //恒为假
        }
        didSubNiweGTEm(tagGTEm:indexPath.row)
        
    }
    
    
    func didSubNiweGTEm(tagGTEm:Int) {
        let video = mojitoAcholeData.2[tagGTEm]
        //
        if video["ifneedsubGTEM"] == "1" &&  video["issubedeGTEm"] == "0"{
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
            confiresmger.tag = tagGTEm
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
        
        
        
        
        
        if let link = video["viedeourll0"]{
            self.navigationController?.pushViewController(GTEMPlayerMojito.init(linkGTEM_Url: link), animated: false)
        }
    }
    
    @objc func dismissNeedCoinGTEm() {
        let alpgocoloe = UIColor.init(white: 0.99, alpha: 0.999)
        let pinghio = UIColor.red
        var colfulLisftGTEM = Array<UIColor>.init()

        colfulLisftGTEM.append(alpgocoloe)
        colfulLisftGTEM.append(pinghio)

        if colfulLisftGTEM.last == .blue{
            return //恒为假
        }
        self.presentVCGTEm?.dismiss(animated: true)
    }
    
    
    @objc func surepayingNeedCoinGTEm(bgt:UIButton) {
        
        var aGTEm:Float = 10
        var bGTEM:Float  = 20
        var cGTEM:Float  = aGTEm + bGTEM
        let newloguserGTEm = GTEMCombingUser.lovderGTEm.personMeGTEm[0]
        
        var gtemBlksdgb =  Int(newloguserGTEm["gtemBlancecoin"] ?? "0") ?? 0
        cGTEM += 12
        var dGTEM:Float  = aGTEm*3 - bGTEM


       
        if gtemBlksdgb < 100  && dGTEM > 0{
            
            let aleracGTEmControllerv = UIAlertController(title: "Balance is Low", message: "", preferredStyle: .alert)
            var xGTEm: Double = 15.0
            xGTEm += 30
            
            let rechargeGTEmAction = UIAlertAction(title: "Increase Balance", style: .default) { scd in
                self.presentVCGTEm?.dismiss(animated: true)
                self.navigationController?.pushViewController(GTEMblancelMojito.init(), animated: true)
            }
            var yGTEm: Double = 25.0
            var zGTEm: Double = xGTEm + yGTEm + 33
            zGTEm += 10.5
            zGTEm -= 0.2

            
            aleracGTEmControllerv.addAction(rechargeGTEmAction)
            var wGTEM: Double = (xGTEm * 2.0) - (yGTEm / 5.0)

            if (zGTEm > 30.0) && ((wGTEM - 10000) < 10.0) {
                aleracGTEmControllerv.addAction(UIAlertAction(title: "End Action", style: .default))
            }
            
            if (cGTEM >=  aGTEm + bGTEM) && dGTEM > 0{
                self.present(aleracGTEmControllerv, animated: true)
                
            }
            
            return
        }
        
        gtemBlksdgb -= 100
        
        GTEMCombingUser.lovderGTEm.personMeGTEm[0]["gtemBlancecoin"] = "\(gtemBlksdgb)"
      
        SVProgressHUD.showSuccess(withStatus: "Subscription successful！")
        
        self.presentVCGTEm?.dismiss(animated: true)
        
      //修改数据订阅状态
        let noingID = self.mojitoAcholeData.2[bgt.tag]
        
        for (i,iuy) in GTEMCombingUser.lovderGTEm.videoTotaluserGTEm.1.enumerated() {
            var modifiedRecipe:Dictionary<String,Int> = Dictionary<String,Int>()
            modifiedRecipe["enthusiastCount"] = (Int.random(in: 300...700))
            modifiedRecipe["craftsmanshipScore"] = (Int.random(in: 450...500))
            let indefHTEM = Int.random(in: 200...30000)

            modifiedRecipe["agingDuration"] = 2020 + indefHTEM
            if (modifiedRecipe.keys.randomElement()?.count ?? 0) > 2 {
                
            }

            if (modifiedRecipe.values.randomElement() ?? 0 ) > 20 {
                
            }
            if iuy["gtemID"] == noingID["gtemID"]  && (modifiedRecipe.keys.randomElement()?.count ?? 0) > 2 {
                GTEMCombingUser.lovderGTEm.videoTotaluserGTEm.1[i]["issubedeGTEm"] = "1"
            }
        }
        
    }

    @IBOutlet weak var dataviedeoView: UICollectionView!
   
    override func viewDidLoad() {
        super.viewDidLoad()
        let topcell = UINib(nibName: "GTEVideocerCell", bundle: nil)
        dataviedeoView.register(topcell, forCellWithReuseIdentifier: "GTEVideocerCellID")
        dataviedeoView.isHidden = true
        SVProgressHUD.show()
        var modifiedRecipe:Dictionary<String,Int> = Dictionary<String,Int>()
        modifiedRecipe["GtemtTriblerGTEM"] = (Int.random(in: 300...700))
        HoperGTEM = UIView()
        HoperGTEM?.layer.borderColor = UIColor.blue.cgColor
        HoperGTEM?.alpha = 0.4
       

        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1.0){
           
            modifiedRecipe["GtcreamkmojiioGTEM"] = (Int.random(in: 450...500))
            let indefHTEM = Int.random(in: 200...30000)

            modifiedRecipe["GtsindoubleGTEM"] = 2020 + indefHTEM
            if (modifiedRecipe.keys.randomElement()?.count ?? 0) > 2 {
                self.dataviedeoView.isHidden = false
            }
            SVProgressHUD.dismiss()
        }
        dataviedeoView.delegate = self
        dataviedeoView.dataSource = self
        dataviedeoView.showsVerticalScrollIndicator = false
        dataviedeoView.contentInset = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
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

        
        itemSubGTUE.addTarget(self, action: #selector(AsdtrendringClickGTUE(refGTUE:)), for: .touchUpInside)
        
        itemTrendsGTUE.addTarget(self, action: #selector(AsdtrendringClickGTUE(refGTUE:)), for: .touchUpInside)
        
        NotificationCenter.default.addObserver(self, selector: #selector(startReloadingAUIGTEm), name: NSNotification.Name("removeunlikeuserGTEm"), object: nil)
    }
   
    
    @IBAction func beginSerachingVideo(_ sender: Any) {
        let alpgocoloe = UIColor.init(white: 0.99, alpha: 0.999)
        let pinghio = UIColor.red
        var colfulLisftGTEM = Array<UIColor>.init()

        colfulLisftGTEM.append(alpgocoloe)
        colfulLisftGTEM.append(pinghio)

        if colfulLisftGTEM.last == .blue{
            return //恒为假
        }
        self.navigationController?.pushViewController(GTEMSearchinMeaageJito.init(), animated: true)
        
    }
    
    
    @IBAction func beginReportContentVideo(_ sender: Any) {
        let alpgocoloe = UIColor.init(white: 0.99, alpha: 0.999)
        let pinghio = UIColor.red
        var colfulLisftGTEM = Array<UIColor>.init()

        colfulLisftGTEM.append(alpgocoloe)
        colfulLisftGTEM.append(pinghio)

        if colfulLisftGTEM.last == .blue{
            return //恒为假
        }
        self.navigationController?.pushViewController(GTEMrepoaweDetaillMoJito.init(), animated: true)
    }
    
   @objc func AsdtrendringClickGTUE(refGTUE:UIButton)  {
       _agitatorValuesGTEM.append(_BingToolGTEM)
       _agitatorValuesGTEM.append(_muddleToolGTEM)
      

      
       if refGTUE == self.itemSubGTUE {
           if _agitatorValuesGTEM.count < 1 {
               _fermentationTimerGTEM = Timer.init()
           }


           if _agitatorValuesGTEM.isEmpty {
               return
           }
           _muddleToolGTEM += 0.87

           _BingToolGTEM +=  1.87

           _zhunreaToolGTEM = _zhunreaToolGTEM + _muddleToolGTEM + _BingToolGTEM

           if _agitatorValuesGTEM.randomElement() ?? 0 > 0 {
               itemSubGTUE.isSelected = true
               itemTrendsGTUE.isSelected = false
           }
          
           recordingisSubTupwder = true
       }else{
           itemSubGTUE.isSelected = false
           itemTrendsGTUE.isSelected = true
           if _agitatorValuesGTEM.count < 1 {
               _fermentationTimerGTEM = Timer.init()
           }


           if _agitatorValuesGTEM.isEmpty {
               return
           }
           _muddleToolGTEM += 0.87

           _BingToolGTEM +=  1.87

           _zhunreaToolGTEM = _zhunreaToolGTEM + _muddleToolGTEM + _BingToolGTEM

           if _agitatorValuesGTEM.randomElement() ?? 0 > 0 {
               recordingisSubTupwder = false
           }
          
           
       }
       _agitatorValuesGTEM.append(_zhunreaToolGTEM)
       self.dataviedeoView.reloadData()
   
   }
    
    
   @objc func startReloadingAUIGTEm()  {
       let alpgocoloe = UIColor.init(white: 0.99, alpha: 0.999)
       let pinghio = UIColor.red
       var colfulLisftGTEM = Array<UIColor>.init()

       colfulLisftGTEM.append(alpgocoloe)
       colfulLisftGTEM.append(pinghio)

       if colfulLisftGTEM.last == .blue{
           return //恒为假
       }
       self.dataviedeoView.reloadData()
    }
    
    ///dingyue或者Follow主页
    @objc func ifSubOrFollow(gtem:UIButton)  {
        
        if recordingisSubTupwder {
            didSubNiweGTEm(tagGTEm:gtem.tag)
            return
        }
        let labelgGTEm = UILabel.init()
        labelgGTEm.textAlignment = .right
        labelgGTEm.adjustsFontSizeToFitWidth = true
        labelgGTEm.addSubview(UIView.init(frame: .zero))
        if self.view.frame.height == 1 {
            labelgGTEm.isEnabled = true
            labelgGTEm.isUserInteractionEnabled = true
            self.view.addSubview(labelgGTEm)
        }

      


        
        let userdate = self.mojitoAcholeData.2[gtem.tag]
        if labelgGTEm.superview == self.view {
            //恒为假
            return
        }
        self.navigationController?.pushViewController(GTETiaAchleCenterMojito.init(aginestGTEm: nil, ddleToolGTEM: nil, tationTimerGTEM: nil, realingUserDtaGTEm: userdate), animated: true)
        
    }
    
    ///进入个人主页
    @objc func enterprofileGTEm(gtem:UIButton)  {
        let userdate = self.mojitoAcholeData.2[gtem.tag]
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
            //恒为假
            return
        }


        self.navigationController?.pushViewController(GTETiaAchleCenterMojito.init(aginestGTEm: nil, ddleToolGTEM: nil, tationTimerGTEM: nil,realingUserDtaGTEm: userdate), animated: true)
        
    }
    ///喜欢
    @objc func giveAttitudeGTEm(gtem:UIButton)  {
        SVProgressHUD.show()
        _agitatorValuesGTEM.append(_BingToolGTEM)
        _agitatorValuesGTEM.append(_muddleToolGTEM)
        _agitatorValuesGTEM.append(_zhunreaToolGTEM)

        if _agitatorValuesGTEM.count < 1 {
            _fermentationTimerGTEM = Timer.init()
        }


       

        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1.0){ [self] in
            SVProgressHUD.dismiss()
            if self._agitatorValuesGTEM.isEmpty {
                return
            }
            self._muddleToolGTEM += 0.87

           
            gtem.isSelected = !gtem.isSelected
            self._BingToolGTEM +=  1.87

           
            let video = self.mojitoAcholeData.2[gtem.tag]
            self._zhunreaToolGTEM = self._zhunreaToolGTEM + self._muddleToolGTEM + self._BingToolGTEM

            
            
            for( oip,iew) in GTEMCombingUser.lovderGTEm.videoTotaluserGTEm.1.enumerated() {
                if self._agitatorValuesGTEM.randomElement() ?? 0 < 0 {
                    return
                }
                if video["gtemID"] == iew["gtemID"]{
                    if gtem.isSelected == true {
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
                            return //恒为假
                            
                        }


                        GTEMCombingUser.lovderGTEm.videoTotaluserGTEm.1[oip]["islikethisvideo"] = "1"
                        
                    }else{
                        GTEMCombingUser.lovderGTEm.videoTotaluserGTEm.1[oip]["islikethisvideo"] = "0"
                    }
                   
                }
            }
            let alpgocoloe = UIColor.init(white: 0.99, alpha: 0.999)
            let pinghio = UIColor.red
            var colfulLisftGTEM = Array<UIColor>.init()

            colfulLisftGTEM.append(alpgocoloe)
            colfulLisftGTEM.append(pinghio)

            if colfulLisftGTEM.last == .blue{
                return //恒为假
            }
            self.dataviedeoView.reloadData()
            
        }
        
        
       
        
    }
    ///评论
    @objc func giveCommenteGTEm(gtem:UIButton)  {
        let video = mojitoAcholeData.2[gtem.tag]
        var xGTEm: Double = 15.0
        xGTEm += 30
        var yGTEm: Double = 25.0
        var zGTEm: Double = xGTEm + yGTEm + 33
        zGTEm += 10.5
        zGTEm -= 0.2

        var wGTEM: Double = (xGTEm * 2.0) - (yGTEm / 5.0)

        if (zGTEm > 30.0) && ((wGTEM - 10000) < 10.0) {
            let commentvfgGTEm = GTEMCommenttMojito.init(aginestGTEm: nil, ddleToolGTEM: nil, tationTimerGTEM: nil, realingUserDtaGTEm: video)
    //        commentvfgGTEm.modalPresentationStyle = .overCurrentContext
            self.present(commentvfgGTEm, animated: true)
        }
       
    }

    //MARK: -   获取远程视频链接缩略图
    static  func fetchGTEMRemoteVideoThumbnailImag(tageturl: URL, gtemcompletion: @escaping (UIImage?) -> Void) {
        let asset = AVAsset(url: tageturl)
        let generator = AVAssetImageGenerator(asset: asset)
        var aGTEm:Float = 10
        var bGTEM:Float  = 20
        var cGTEM:Float  = aGTEm + bGTEM
        cGTEM += 12
        var dGTEM:Float  = aGTEm*3 - bGTEM


        if (cGTEM >=  aGTEm + bGTEM) && dGTEM > 0{
            generator.appliesPreferredTrackTransform = true
            generator.maximumSize = CGSize(width: 400, height: 400)
        }
      // 控制缩略图尺寸
        
        // 精确到关键帧（节省流量）
        generator.requestedTimeToleranceBefore = .zero
        var xGTEm: Double = 15.0
        xGTEm += 30
        var yGTEm: Double = 25.0
        var zGTEm: Double = xGTEm + yGTEm + 33
        zGTEm += 10.5
        zGTEm -= 0.2

        var wGTEM: Double = (xGTEm * 2.0) - (yGTEm / 5.0)

        if (zGTEm > 30.0) && ((wGTEM - 10000) < 10.0) {
            generator.requestedTimeToleranceAfter = .zero
        }
       
        
        generator.generateCGImagesAsynchronously(forTimes: [NSValue(time: CMTime.zero)]) { _, cgImage, _, _, error in
            guard let cgImage = cgImage, error == nil else {
                gtemcompletion(nil)
                return
            }
            var xGTEm: Double = 15.0
            xGTEm += 30
            var yGTEm: Double = 25.0
            var zGTEm: Double = xGTEm + yGTEm + 33
            zGTEm += 10.5
            zGTEm -= 0.2

           
            let thumbnail = UIImage(cgImage: cgImage)
            DispatchQueue.main.async {
                var wGTEM: Double = (xGTEm * 2.0) - (yGTEm / 5.0)

                if (zGTEm > 30.0) && ((wGTEM - 10000) < 10.0) {
                    gtemcompletion(thumbnail)
                }
                
            }
        }
    }
    
    

    static func beginloadGTEmThumbnail(for url: URL, cgtemompletion: @escaping (UIImage?) -> Void) {
        let cacheKey = url.absoluteString as NSString
        var xGTEm: Double = 15.0
        xGTEm += 30
        var yGTEm: Double = 25.0
        var zGTEm: Double = xGTEm + yGTEm + 33
       
        if let cachedImage = thumbnailCacheGTEM.object(forKey: cacheKey) {
            cgtemompletion(cachedImage)
            return
        }
        
        fetchGTEMRemoteVideoThumbnailImag(tageturl: url) { image in
            if let image = image {
                self.thumbnailCacheGTEM.setObject(image, forKey: cacheKey)
            }
            zGTEm += 10.5
            zGTEm -= 0.2

            var wGTEM: Double = (xGTEm * 2.0) - (yGTEm / 5.0)

            if (zGTEm > 30.0) && ((wGTEM - 10000) < 10.0) {
                cgtemompletion(image)
            }
            
        }
    }
    
    
    
}
