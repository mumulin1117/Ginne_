//
//  Z5Q8VortexBrew.swift
//  Gintuemojir
//
//  Created by Gintuemojir on 2025/1/17.
//
import AVFoundation
import UIKit
import SnapKit
import SVProgressHUD
class Z5Q8VortexBrew: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout {
     
    var N5X8DisplayView:UIViewController?
    

  
    static let thumbnailCache = NSCache<NSString, UIImage>()
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return MediaFrame.frame.size
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        0
    }
    
    
    
    @IBAction func videoUpload(_ sender: Any) {
        
        self.navigationController?.pushViewController(V6Z3NovaClipStream.init(), animated: true)
    }
    
    var recordingisSubTupwder:Bool = true
    
    @IBOutlet weak var J7Q1ElementData: UIButton!
    
    @IBOutlet weak var K9L3TrendData: UIButton!
    
    var mojitoAcholeData:Array<Dictionary<String,String>>{
        get{
            let nertwDater = XQZPDataNode.W7N4FavorData.T2P9ViewerCount.filter { dicer in
                return dicer["ifneedsub"] ==  (recordingisSubTupwder ? "1" : "0")
            }
            
            return nertwDater
        }
       
    }
    
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return mojitoAcholeData.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let gteuCell = collectionView.dequeueReusableCell(withReuseIdentifier: "M9X2SpectraFrameID", for: indexPath) as! M9X2SpectraFrame
        gteuCell.b8Q3ProfilePic.image = UIImage(named: mojitoAcholeData[indexPath.row]["teacherphoto"] ?? "")
        gteuCell.r7X9ProfileID.text = mojitoAcholeData[indexPath.row]["teacherphoto"]
        gteuCell.z4R6ClipName.text = mojitoAcholeData[indexPath.row]["viowenan0"]
        
        let path = Bundle.main.path(forResource: mojitoAcholeData[indexPath.row]["vieeoull0"], ofType: "mp4") ?? ""
        let urlname = URL(fileURLWithPath: path)
        Z5Q8VortexBrew.startImageAsset(for: urlname, cgtemompletion: { geitimage in
            DispatchQueue.main.async {
                gteuCell.thunmbImageGTEA.image = geitimage
            }
            
        })
//        if let urlname = URL(string: mojitoAcholeData[indexPath.row]["vieeoull0"] ?? ""){
//            Z5Q8VortexBrew.startImageAsset(for: urlname, cgtemompletion: { geitimage in
//                DispatchQueue.main.async {
//                    gteuCell.thunmbImageGTEA.image = geitimage
//                }
//                
//            })
//        }
//        gteuCell.actionTriggerGTEA.tag = indexPath.row
//        gteuCell.actionTriggerGTEA.addTarget(self, action: #selector(tapvideoplayGTUE(refGTUE:)), for: .touchUpInside)
//       
//        if recordingisSubTupwder == true {
//            gteuCell.interactionGTEU.setBackgroundImage(UIImage.init(named: "Tosubveo"), for: .normal)
//            gteuCell.diomonelog.isHidden = false
//        }else{
            
            gteuCell.interactionGTEU.setBackgroundImage(UIImage.init(named: "ToFolloweded"), for: .normal)
            gteuCell.interactionGTEU.setBackgroundImage(UIImage.init(named: "ToFollowedAREd"), for: .normal)
            gteuCell.diomonelog.isHidden = true
//        }
        gteuCell.interactionGTEU.tag = indexPath.row
        gteuCell.accessUserGTEM.tag = indexPath.row
        gteuCell.attitudeButtonGTEM.tag = indexPath.row
        
        gteuCell.attitudeButtonGTEM.isSelected = (mojitoAcholeData[indexPath.row]["islikethisvio"] == "1")
        gteuCell.commentButGTEm.tag = indexPath.row
       
        gteuCell.accessUserGTEM.addTarget(self, action: #selector(enterprofileGTEm(gtem:)), for: .touchUpInside)
        gteuCell.userGTEUEngagementCount.text = (mojitoAcholeData[indexPath.row]["follosercount"] ?? "0") + " Followers"
        gteuCell.attitudeButtonGTEM.addTarget(self, action: #selector(giveAttitudeGTEm(gtem:)), for: .touchUpInside)
        gteuCell.interactionGTEU.addTarget(self, action: #selector(ifSubOrFollow(gtem:)), for: .touchUpInside)
        gteuCell.commentButGTEm.addTarget(self, action: #selector(giveCommenteGTEm(gtem:)), for: .touchUpInside)
        return gteuCell
        
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        didSubNiweGTEm(tagGTEm:indexPath.row)
        
    }
    
    
    func didSubNiweGTEm(tagGTEm:Int) {
        let video = mojitoAcholeData[tagGTEm]
        //
//        if video["ifneedsub"] == "1" &&  video["issubedeGTEm"] == "0"{
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
//            confiresmger.tag = tagGTEm
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
        
        
        
        
        let path = video["vieeoull0"] ?? ""//Bundle.main.path(forResource: video["vieeoull0"], ofType: "mp4") ?? ""
        
        self.navigationController?.pushViewController(X9R6QuantumPlayer.init(linkUrl: path), animated: false)

//        if let link = video["vieeoull0"]{
//            self.navigationController?.pushViewController(X9R6QuantumPlayer.init(linkUrl: link), animated: false)
//        }
    }
    
    @objc func dismissNeedCoinGTEm() {
        self.N5X8DisplayView?.dismiss(animated: true)
    }
    
    
//    @objc func surepayingNeedCoinGTEm(bgt:UIButton) {
//        
//       
//        var gtemBlksdgb =  Int(XQZPDataNode.W7N4FavorData.V6K3UserProfile["xqulZypherVault"] ?? "0") ?? 0
//        
//        if gtemBlksdgb < 100 {
//            
//            let aleracGTEmControllerv = UIAlertController(title: gintuemojir(f1g2h3i4j5: "Iinzspuafefyigceilepnmtd nBvaslyahnecze"), message: "", preferredStyle: .alert)
//            let rechargeGTEmAction = UIAlertAction(title: gintuemojir(f1g2h3i4j5: "Rpejczhlamrngde"), style: .default) { scd in
//                self.N5X8DisplayView?.dismiss(animated: true)
//                self.navigationController?.pushViewController(Z5WanceCore.init(), animated: true)
//            }
//            aleracGTEmControllerv.addAction(rechargeGTEmAction)
//            aleracGTEmControllerv.addAction(UIAlertAction(title: gintuemojir(f1g2h3i4j5: "Ciaondcyecl"), style: .default))
//            self.present(aleracGTEmControllerv, animated: true)
//            
//            return
//        }
//        
//        gtemBlksdgb -= 100
//        XQZPDataNode.W7N4FavorData.V6K3UserProfile["xqulZypherVault"] = "\(gtemBlksdgb)"
//        SVProgressHUD.show(UIImage(named: "grateokauyu")!, status:"successful！")
//        
//        self.N5X8DisplayView?.dismiss(animated: true)
//      //修改数据订阅状态
//        let noingID = self.mojitoAcholeData[bgt.tag]
//        
//        for (i,iuy) in XQZPDataNode.W7N4FavorData.T2P9ViewerCount.enumerated() {
//            if iuy["gtemID"] == noingID["gtemID"]   {
//                XQZPDataNode.W7N4FavorData.T2P9ViewerCount[i]["issubedeGTEm"] = "1"
//            }
//        }
//        
//    }

    @IBOutlet weak var MediaFrame: UICollectionView!
   
    override func viewDidLoad() {
        super.viewDidLoad()
        let topcell = UINib(nibName: "M9X2SpectraFrame", bundle: nil)
        MediaFrame.register(topcell, forCellWithReuseIdentifier: "M9X2SpectraFrameID")
        
        MediaFrame.delegate = self
        MediaFrame.dataSource = self
        MediaFrame.showsVerticalScrollIndicator = false
        MediaFrame.contentInset = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
 
        
        J7Q1ElementData.addTarget(self, action: #selector(AsdtrendringClickGTUE(refGTUE:)), for: .touchUpInside)
        
        K9L3TrendData.addTarget(self, action: #selector(AsdtrendringClickGTUE(refGTUE:)), for: .touchUpInside)
        
        NotificationCenter.default.addObserver(self, selector: #selector(startReloadingAUIGTEm), name: NSNotification.Name("removeunlikeuserGTEm"), object: nil)
    }
   
    
    @IBAction func beginSerachingVideo(_ sender: Any) {
        self.navigationController?.pushViewController(QX7RSearchPulseCore.init(), animated: true)
        
    }
    
    
    @IBAction func beginReportContentVideo(_ sender: Any) {
        
        self.navigationController?.pushViewController(PLQXDataDetailView.init(), animated: true)
    }
    
   @objc func AsdtrendringClickGTUE(refGTUE:UIButton)  {
       if refGTUE == self.J7Q1ElementData {
           J7Q1ElementData.isSelected = true
           K9L3TrendData.isSelected = false
           recordingisSubTupwder = true
       }else{
           J7Q1ElementData.isSelected = false
           K9L3TrendData.isSelected = true
           recordingisSubTupwder = false
           
       }
       self.MediaFrame.scrollsToTop = true
       self.MediaFrame.reloadData()
   
   }
    
    
   @objc func startReloadingAUIGTEm()  {
       self.MediaFrame.reloadData()
    }
    
    ///dingyue或者Follow主页
    @objc func ifSubOrFollow(gtem:UIButton)  {
        
//        if recordingisSubTupwder {
//            didSubNiweGTEm(tagGTEm:gtem.tag)
//            return
//        }
        
        
        let userdate = self.mojitoAcholeData[gtem.tag]
        
        self.navigationController?.pushViewController(HYZTCentralNode.init(realingUserDtaGTEm: userdate), animated: true)
        
    }
    
    ///进入个人主页
    @objc func enterprofileGTEm(gtem:UIButton)  {
        let userdate = self.mojitoAcholeData[gtem.tag]
        
        self.navigationController?.pushViewController(HYZTCentralNode.init(realingUserDtaGTEm: userdate), animated: true)
        
    }
    ///喜欢
    @objc func giveAttitudeGTEm(gtem:UIButton)  {
        SVProgressHUD.show()
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1.0){
            SVProgressHUD.dismiss()
            gtem.isSelected = !gtem.isSelected
            
            let video = self.mojitoAcholeData[gtem.tag]
            
            
            for( oip,iew) in XQZPDataNode.W7N4FavorData.T2P9ViewerCount.enumerated() {
                if video["gtemID"] == iew["gtemID"]{
                    if gtem.isSelected == true {
                        XQZPDataNode.W7N4FavorData.T2P9ViewerCount[oip]["islikethisvio"] = "1"
                        
                    }else{
                        XQZPDataNode.W7N4FavorData.T2P9ViewerCount[oip]["islikethisvio"] = "0"
                    }
                   
                }
            }
           
            self.MediaFrame.reloadData()
            
        }
        
        
       
        
    }
    ///评论
    @objc func giveCommenteGTEm(gtem:UIButton)  {
        let video = mojitoAcholeData[gtem.tag]
        let comadentvfgGTEm = L3V8EchoCommentary.init(realingUserDtaGTEm: video)
//        comadentvfgGTEm.modalPresentationStyle = .overCurrentContext
        self.present(comadentvfgGTEm, animated: true)
    }

    //MARK: -   获取远程视频链接缩略图
    static  func retrieveMediaPreview(tageturl: URL, gtemcompletion: @escaping (UIImage?) -> Void) {
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
    
    

    static func startImageAsset(for url: URL, cgtemompletion: @escaping (UIImage?) -> Void) {
        let cacheKey = url.absoluteString as NSString
        
        if let cachedImage = thumbnailCache.object(forKey: cacheKey) {
            cgtemompletion(cachedImage)
            return
        }
        
        retrieveMediaPreview(tageturl: url) { image in
            if let image = image {
                self.thumbnailCache.setObject(image, forKey: cacheKey)
            }
            cgtemompletion(image)
        }
    }
    
    
    
}
