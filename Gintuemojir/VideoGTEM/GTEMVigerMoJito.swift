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
    

  
    static let thumbnailCache = NSCache<NSString, UIImage>()
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return dataviedeoView.frame.size
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        0
    }
    
    
    
    @IBAction func videoUpload(_ sender: Any) {
        
        self.navigationController?.pushViewController(GTETiaVideoPostMojito.init(), animated: true)
    }
    
    var recordingisSubTupwder:Bool = true
    
    @IBOutlet weak var itemSubGTUE: UIButton!
    
    @IBOutlet weak var itemTrendsGTUE: UIButton!
    
    var mojitoAcholeData:Array<Dictionary<String,String>>{
        get{
            let nertwDater = GTEMCombingUser.lovderGTEm.videoTotaluserGTEm.filter { dicer in
                return dicer["ifneedsub"] ==  (recordingisSubTupwder ? "1" : "0")
            }
            
            return nertwDater
        }
       
    }
    
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return mojitoAcholeData.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let gteuCell = collectionView.dequeueReusableCell(withReuseIdentifier: "GTEVideocerCellID", for: indexPath) as! GTEVideocerCell
        gteuCell.userGTEUAvator.image = UIImage(named: mojitoAcholeData[indexPath.row]["teacherphoto"] ?? "")
        gteuCell.userGTEUName.text = mojitoAcholeData[indexPath.row]["teacherphoto"]
        gteuCell.videoTitleGTEM.text = mojitoAcholeData[indexPath.row]["videowenan0"]
        if let urlname = URL(string: mojitoAcholeData[indexPath.row]["viedeourll0"] ?? ""){
            GTEMVigerMoJito.beginloadGTEmThumbnail(for: urlname, cgtemompletion: { geitimage in
                DispatchQueue.main.async {
                    gteuCell.thunmbImageGTEA.image = geitimage
                }
                
            })
        }
//        gteuCell.playButtonGTEA.tag = indexPath.row
//        gteuCell.playButtonGTEA.addTarget(self, action: #selector(tapvideoplayGTUE(refGTUE:)), for: .touchUpInside)
//       
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
        
        gteuCell.attitudeButtonGTEM.isSelected = (mojitoAcholeData[indexPath.row]["islikethisvideo"] == "1")
        gteuCell.commentButGTEm.tag = indexPath.row
       
        gteuCell.enterUserGTEM.addTarget(self, action: #selector(enterprofileGTEm(gtem:)), for: .touchUpInside)
        gteuCell.userGTEUFolloweCount.text = (mojitoAcholeData[indexPath.row]["follosercount"] ?? "0") + " Followers"
        gteuCell.attitudeButtonGTEM.addTarget(self, action: #selector(giveAttitudeGTEm(gtem:)), for: .touchUpInside)
        gteuCell.subscribtionGTEU.addTarget(self, action: #selector(ifSubOrFollow(gtem:)), for: .touchUpInside)
        gteuCell.commentButGTEm.addTarget(self, action: #selector(giveCommenteGTEm(gtem:)), for: .touchUpInside)
        return gteuCell
        
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        didSubNiweGTEm(tagGTEm:indexPath.row)
        
    }
    
    
    func didSubNiweGTEm(tagGTEm:Int) {
        let video = mojitoAcholeData[tagGTEm]
        //
        if video["ifneedsub"] == "1" &&  video["issubedeGTEm"] == "0"{
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
            self.navigationController?.pushViewController(GTEMPlayerMojito.init(linkUrl: link), animated: false)
        }
    }
    
    @objc func dismissNeedCoinGTEm() {
        self.presentVCGTEm?.dismiss(animated: true)
    }
    
    
    @objc func surepayingNeedCoinGTEm(bgt:UIButton) {
        
        var aGTEm:Float = 10
        var bGTEM:Float  = 20
        var cGTEM:Float  = aGTEm + bGTEM
        var gtemBlksdgb =  Int(GTEMCombingUser.lovderGTEm.personMeGTEm["gtemBlancecoin"] ?? "0") ?? 0
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
        GTEMCombingUser.lovderGTEm.personMeGTEm["gtemBlancecoin"] = "\(gtemBlksdgb)"
        
        SVProgressHUD.showSuccess(withStatus: "Subscription successful！")
        self.presentVCGTEm?.dismiss(animated: true)
      //修改数据订阅状态
        let noingID = self.mojitoAcholeData[bgt.tag]
        
        for (i,iuy) in GTEMCombingUser.lovderGTEm.videoTotaluserGTEm.enumerated() {
            if iuy["gtemID"] == noingID["gtemID"]   {
                GTEMCombingUser.lovderGTEm.videoTotaluserGTEm[i]["issubedeGTEm"] = "1"
            }
        }
        
    }

    @IBOutlet weak var dataviedeoView: UICollectionView!
   
    override func viewDidLoad() {
        super.viewDidLoad()
        let topcell = UINib(nibName: "GTEVideocerCell", bundle: nil)
        dataviedeoView.register(topcell, forCellWithReuseIdentifier: "GTEVideocerCellID")
        
        dataviedeoView.delegate = self
        dataviedeoView.dataSource = self
        dataviedeoView.showsVerticalScrollIndicator = false
        dataviedeoView.contentInset = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
 
        
        itemSubGTUE.addTarget(self, action: #selector(AsdtrendringClickGTUE(refGTUE:)), for: .touchUpInside)
        
        itemTrendsGTUE.addTarget(self, action: #selector(AsdtrendringClickGTUE(refGTUE:)), for: .touchUpInside)
        
        NotificationCenter.default.addObserver(self, selector: #selector(startReloadingAUIGTEm), name: NSNotification.Name("removeunlikeuserGTEm"), object: nil)
    }
   
    
    @IBAction func beginSerachingVideo(_ sender: Any) {
        self.navigationController?.pushViewController(GTEMSearchinMeaageJito.init(), animated: true)
        
    }
    
    
    @IBAction func beginReportContentVideo(_ sender: Any) {
        
        self.navigationController?.pushViewController(GTEMrepoaweDetaillMoJito.init(), animated: true)
    }
    
   @objc func AsdtrendringClickGTUE(refGTUE:UIButton)  {
       if refGTUE == self.itemSubGTUE {
           itemSubGTUE.isSelected = true
           itemTrendsGTUE.isSelected = false
           recordingisSubTupwder = true
       }else{
           itemSubGTUE.isSelected = false
           itemTrendsGTUE.isSelected = true
           recordingisSubTupwder = false
           
       }
       self.dataviedeoView.scrollsToTop = true
       self.dataviedeoView.reloadData()
   
   }
    
    
   @objc func startReloadingAUIGTEm()  {
       self.dataviedeoView.reloadData()
    }
    
    ///dingyue或者Follow主页
    @objc func ifSubOrFollow(gtem:UIButton)  {
        
        if recordingisSubTupwder {
            didSubNiweGTEm(tagGTEm:gtem.tag)
            return
        }
        
        
        let userdate = self.mojitoAcholeData[gtem.tag]
        
        self.navigationController?.pushViewController(GTETiaAchleCenterMojito.init(aginestGTEm: nil, ddleToolGTEM: nil, tationTimerGTEM: nil, realingUserDtaGTEm: userdate), animated: true)
        
    }
    
    ///进入个人主页
    @objc func enterprofileGTEm(gtem:UIButton)  {
        let userdate = self.mojitoAcholeData[gtem.tag]
        
        self.navigationController?.pushViewController(GTETiaAchleCenterMojito.init(aginestGTEm: nil, ddleToolGTEM: nil, tationTimerGTEM: nil,realingUserDtaGTEm: userdate), animated: true)
        
    }
    ///喜欢
    @objc func giveAttitudeGTEm(gtem:UIButton)  {
        SVProgressHUD.show()
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1.0){
            SVProgressHUD.dismiss()
            gtem.isSelected = !gtem.isSelected
            
            let video = self.mojitoAcholeData[gtem.tag]
            
            
            for( oip,iew) in GTEMCombingUser.lovderGTEm.videoTotaluserGTEm.enumerated() {
                if video["gtemID"] == iew["gtemID"]{
                    if gtem.isSelected == true {
                        GTEMCombingUser.lovderGTEm.videoTotaluserGTEm[oip]["islikethisvideo"] = "1"
                        
                    }else{
                        GTEMCombingUser.lovderGTEm.videoTotaluserGTEm[oip]["islikethisvideo"] = "0"
                    }
                   
                }
            }
           
            self.dataviedeoView.reloadData()
            
        }
        
        
       
        
    }
    ///评论
    @objc func giveCommenteGTEm(gtem:UIButton)  {
        let video = mojitoAcholeData[gtem.tag]
        let commentvfgGTEm = GTEMCommenttMojito.init(aginestGTEm: nil, ddleToolGTEM: nil, tationTimerGTEM: nil, realingUserDtaGTEm: video)
//        commentvfgGTEm.modalPresentationStyle = .overCurrentContext
        self.present(commentvfgGTEm, animated: true)
    }

    //MARK: -   获取远程视频链接缩略图
    static  func fetchGTEMRemoteVideoThumbnailImag(tageturl: URL, gtemcompletion: @escaping (UIImage?) -> Void) {
        let asset = AVAsset(url: tageturl)
        let generator = AVAssetImageGenerator(asset: asset)
        generator.appliesPreferredTrackTransform = true
        generator.maximumSize = CGSize(width: 400, height: 400) // 控制缩略图尺寸
        
        // 精确到关键帧（节省流量）
        generator.requestedTimeToleranceBefore = .zero
        generator.requestedTimeToleranceAfter = .zero
        
        generator.generateCGImagesAsynchronously(forTimes: [NSValue(time: CMTime.zero)]) { _, cgImage, _, _, error in
            guard let cgImage = cgImage, error == nil else {
                gtemcompletion(nil)
                return
            }
            let thumbnail = UIImage(cgImage: cgImage)
            DispatchQueue.main.async {
                gtemcompletion(thumbnail)
            }
        }
    }
    
    

    static func beginloadGTEmThumbnail(for url: URL, cgtemompletion: @escaping (UIImage?) -> Void) {
        let cacheKey = url.absoluteString as NSString
        
        if let cachedImage = thumbnailCache.object(forKey: cacheKey) {
            cgtemompletion(cachedImage)
            return
        }
        
        fetchGTEMRemoteVideoThumbnailImag(tageturl: url) { image in
            if let image = image {
                self.thumbnailCache.setObject(image, forKey: cacheKey)
            }
            cgtemompletion(image)
        }
    }
    
    
    
}
