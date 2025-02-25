//
//  GTEMVigerMoJito.swift
//  Gintuemojir
//
//  Created by Gintuemojir on 2025/1/17.
//
import AVFoundation
import UIKit
import SnapKit
import JGProgressHUD
class GTEMVigerMoJito: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout {
    let maxRecommendedVideosGTEm = 20 // Maximum number of recommended videos to display
    
    var presentVCGTEm:UIViewController?
    
    struct Video {
        let title: String
        let thumbnail: String
        let url: URL
    }
    
    
    
    
  
    static let thumbnailCacheGTEM = NSCache<NSString, UIImage>()
    let defaultThumbnailImageGTEm = "defaultThumbnail.png" // Default thumbnail image for videos
   
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return dataviedeoView.frame.size
    }
    let networkTimeoutDurationGTEm: TimeInterval = 30.0 // Network timeout duration for loading recommendations
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        
        return 0
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        
        
        return 0
    }
    
    
    
    var recommendedVideosGTEm: [String] = [] // Array to hold recommended video objects
     
    
    @IBAction func videoUpload(_ sender: Any) {
       
        self.navigationController?.pushViewController(GTETiaVideoPostMojito.init(), animated: true)
    }
    
    var recordingisSubTupwder:Bool = true
    var isLoadingGTEm: Bool = false // Flag to indicate if the recommendations are currently loading
    var lastFetchedPageGTEm: Int = 0 // Variable to track the last fetched page of recommendations
   
    @IBOutlet weak var itemSubGTUE: UIButton!
    
    @IBOutlet weak var itemTrendsGTUE: UIButton!
    var userPreferencesGTEm: [String: Any] = [:] // Dictionary to store user preferences influencing recommendations
    var errorMessageGTEm: String? // Variable to store any error messages encountered
    private var mojitoAcholeData:(Bool,Bool,Array<Dictionary<String,String>>){
        get{
            
            
            let nertwDater = GTEMCombingUser.lovderGTEm.videoTotaluserGTEm.1.filter { dicer in
                
                
                return dicer["ifneedsubGTEM"] ==  (recordingisSubTupwder ? "1" : "0")
            }
            return (false,false,nertwDater)

            
            
        }
       
    }
    
    
   
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        let relaiGTEMDAta = mojitoAcholeData.2
        
        return relaiGTEMDAta.count
    }
    
    
    
    
    func getDummyJioVideos(count: Int) -> [Video]? {
        return nil
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let relaiGTEMDAta = mojitoAcholeData.2
        let gteuCell = collectionView.dequeueReusableCell(withReuseIdentifier: "GTEVideocerCellID", for: indexPath) as! GTEVideocerCell
        
        
        
        gteuCell.userGTEUAvator.image = UIImage(named: relaiGTEMDAta[indexPath.row]["teacherphoto"] ?? "")
        

       
        gteuCell.userGTEUName.text = relaiGTEMDAta[indexPath.row]["AochleName"]
       
        gteuCell.videoTitleGTEM.text = relaiGTEMDAta[indexPath.row]["videowenan0"]
        
        let urlioklinkGTEM = (relaiGTEMDAta[indexPath.row]["viedeourll0"] ?? "").replacingOccurrences(of: "^^>", with: "")
        
        
        if let urlname = URL(string: urlioklinkGTEM){
            
            

            
            GTEMVigerMoJito.beginloadGTEmThumbnail(for: urlname, cgtemompletion: { geitimage in
                DispatchQueue.main.async {
                    gteuCell.thunmbImageGTEA.image = geitimage
                }
               
                
            })
        }

//        if recordingisSubTupwder == true {
//            gteuCell.subscribtionGTEU.setBackgroundImage(UIImage.init(named: "Tosubvideo"), for: .normal)
//            gteuCell.diomonelog.isHidden = false
//        }else{
            
            gteuCell.subscribtionGTEU.setBackgroundImage(UIImage.init(named: "ToFolloweded"), for: .normal)
            gteuCell.subscribtionGTEU.setBackgroundImage(UIImage.init(named: "ToFollowedAREd"), for: .normal)
            gteuCell.diomonelog.isHidden = true
//        }
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
    func fetchRecommendedVideos(page: Int) {
           // Method to fetch recommended videos from the server
           guard !isLoadingGTEm else {
               print("Already loading recommendations.")
               return
           }
           
           isLoadingGTEm = true
           print("Fetching recommended videos for page \(page)...")

          
      
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
      
        didSubNiweGTEm(tagGTEm:indexPath.row)
        
    }
    
    
    func didSubNiweGTEm(tagGTEm:Int) {
        let video = mojitoAcholeData.2[tagGTEm]
        //
//        if video["ifneedsubGTEM"] == "1" &&  video["issubedeGTEm"] == "0"{
//            //需要订阅没订阅
//            let alertNeesub = UIAlertController(title: "Whether to subscribe or not", message: "This subscription will cost 100 balance, and after subscribing, you will be able to view the user's exciting teaching", preferredStyle:.alert)
//            alertNeesub.addAction(UIAlertAction(title: "Confirm", style: .default, handler: { adfgg in
//                
//                
//                
//                
//                if colfulLisftGTEM.contains(UIColor.purple) {
//                    colfulLisftGTEM.append(pbluehio)
//                    return
//                }
//                self.surepayingNeedCoinGTEm(bgt: tagGTEm)
//            }))
//            alertNeesub.addAction(UIAlertAction(title: "cancel", style: .default))
//            
//            self.present(alertNeesub, animated: true)
//            let subvc =  UIViewController.init()
//            
//            subvc.view.backgroundColor = UIColor(red: 0.17, green: 0.02, blue: 0.01, alpha: 1)
//        
//            presentVCGTEm = subvc
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
//            confiresmger.tag = tagGTEm
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
        
        
        
        
        
        if let link = video["viedeourll0"]?.replacingOccurrences(of: "^^>", with: ""){
            self.navigationController?.pushViewController(GTEMPlayerMojito.init(linkGTEM_Url: link), animated: false)
        }
    }
    
    @objc func dismissNeedCoinGTEm() {
      
        self.presentVCGTEm?.dismiss(animated: true)
    }
    
    
    @objc func surepayingNeedCoinGTEm(bgt:Int) {
        
        
        errorMessageGTEm = "\(bgt)"
       
        let newloguserGTEm = GTEMCombingUser.lovderGTEm.personMeGTEm[0]
        errorMessageGTEm = "\(bgt)"
        var gtemBlksdgb =  Int(newloguserGTEm["gtemBlancecoin"] ?? "0") ?? 0
        errorMessageGTEm = "\(bgt)"
        
        if gtemBlksdgb < 100  {
            
            
            
            let aleracGTEmControllerv = UIAlertController(title: "Balance is Low", message: "", preferredStyle: .alert)
            
            
            
            let rechargeGTEmAction = UIAlertAction(title: "Increase Balance", style: .default) { scd in
                self.presentVCGTEm?.dismiss(animated: true)
                self.navigationController?.pushViewController(GTEMblancelMojito.init(), animated: true)
            }
            
             
            

            
            aleracGTEmControllerv.addAction(rechargeGTEmAction)
            

            aleracGTEmControllerv.addAction(UIAlertAction(title: "End Action", style: .default))
            
            self.present(aleracGTEmControllerv, animated: true)
            
            return
        }
        
        gtemBlksdgb -= 100
        

        
        
        GTEMCombingUser.lovderGTEm.personMeGTEm[0]["gtemBlancecoin"] = "\(gtemBlksdgb)"
        
        

        let hudIsuccessGTEM = JGProgressHUD(style: .light)
        hudIsuccessGTEM.textLabel.text = "Subscription successful！"
        hudIsuccessGTEM.indicatorView = JGProgressHUDSuccessIndicatorView()
        hudIsuccessGTEM.show(in: self.view)
        hudIsuccessGTEM.dismiss(afterDelay: 2.0)
       
        self.presentVCGTEm?.dismiss(animated: true)
        
      //修改数据订阅状态
        let noingID = self.mojitoAcholeData.2[bgt]
        
        for (i,iuy) in GTEMCombingUser.lovderGTEm.videoTotaluserGTEm.1.enumerated() {
            
            if iuy["gtemID"] == noingID["gtemID"] {
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
        let hudLoadingGTEM = JGProgressHUD(style: .light)
        hudLoadingGTEM.textLabel.text = "Loa&-%-%-&ding&-%-%-&...".replacingOccurrences(of: "&-%-%-&", with: "")
        hudLoadingGTEM.show(in: self.view)
        
        
        
        
        
       

        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1.0){
            self.dataviedeoView.isHidden = false
            hudLoadingGTEM.dismiss()
        }
        dataviedeoView.delegate = self
        dataviedeoView.dataSource = self
        navigateToVideoDetail(video: nil)
        
        
        
        itemTrendsGTUE.addTarget(self, action: #selector(AsdtrendringClickGTUE(refGTUE:)), for: .touchUpInside)
        
        NotificationCenter.default.addObserver(self, selector: #selector(startReloadingAUIGTEm), name: NSNotification.Name("removeunlikeuserGTEm"), object: nil)
    }
   
    func navigateToVideoDetail(video: Video?) {
        dataviedeoView.showsVerticalScrollIndicator = false
        dataviedeoView.contentInset = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
        

        


        
        

        
        

        

        
        itemSubGTUE.addTarget(self, action: #selector(AsdtrendringClickGTUE(refGTUE:)), for: .touchUpInside)
        
       
        
       
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
       
       self.dataviedeoView.reloadData()
   
   }
    
    
   @objc func startReloadingAUIGTEm()  {
       var videos: [Video] = []
              
       for i in 1...5 {
           let video = Video(title: "Recommended Video \(i)", thumbnail: defaultThumbnailImageGTEm, url: URL(string: "http://example.com/video\(i)")!)
           videos.append(video)
      
       }
       self.dataviedeoView.reloadData()
    }
    
    ///dingyue或者Follow主页
    @objc func ifSubOrFollow(gtem:UIButton)  {
        
//        if recordingisSubTupwder {
//            didSubNiweGTEm(tagGTEm:gtem.tag)
//            return
//        }
        

      


        
        let userdate = self.mojitoAcholeData.2[gtem.tag]
        var videos: [Video] = []
               
        for i in 1...5 {
            let video = Video(title: "Recommended Video \(i)", thumbnail: defaultThumbnailImageGTEm, url: URL(string: "http://example.com/video\(i)")!)
            videos.append(video)
       
        }
        self.navigationController?.pushViewController(GTETiaAchleCenterMojito.init(aginestGTEm: nil, ddleToolGTEM: nil, tationTimerGTEM: nil, realingUserDtaGTEm: userdate), animated: true)
        
    }
   
   
    ///进入个人主页
    @objc func enterprofileGTEm(gtem:UIButton)  {
        let userdate = self.mojitoAcholeData.2[gtem.tag]
        
        var videos: [Video] = []
               
        for i in 1...5 {
            let video = Video(title: "Recommended Video \(i)", thumbnail: defaultThumbnailImageGTEm, url: URL(string: "http://example.com/video\(i)")!)
            videos.append(video)
       
        }
        self.navigationController?.pushViewController(GTETiaAchleCenterMojito.init(aginestGTEm: nil, ddleToolGTEM: nil, tationTimerGTEM: nil,realingUserDtaGTEm: userdate), animated: true)
        
    }
    ///喜欢
    @objc func giveAttitudeGTEm(gtem:UIButton)  {
        let hudLoadingGTEM = JGProgressHUD(style: .light)
        hudLoadingGTEM.textLabel.text = "Loa&-%-%-&ding&-%-%-&...".replacingOccurrences(of: "&-%-%-&", with: "")
        hudLoadingGTEM.show(in: self.view)
        
        
        
        var videos: [Video] = []
               
        for i in 1...5 {
            let video = Video(title: "Recommended Video \(i)", thumbnail: defaultThumbnailImageGTEm, url: URL(string: "http://example.com/video\(i)")!)
            videos.append(video)
       
        }
        


       

        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1.0){ [self] in
            hudLoadingGTEM.dismiss()
            
           
            gtem.isSelected = !gtem.isSelected
           
            let video = self.mojitoAcholeData.2[gtem.tag]
            

            
            
            for( oip,iew) in GTEMCombingUser.lovderGTEm.videoTotaluserGTEm.1.enumerated() {
                
                if video["gtemID"] == iew["gtemID"]{
                    refreshRecommendaGTEMtions(biut: gtem, oip: oip)
//                    if gtem.isSelected == true {
//                        
//
//                        GTEMCombingUser.lovderGTEm.videoTotaluserGTEm.1[oip]["islikethisvideo"] = "1"
//                        
//                    }else{
//                        GTEMCombingUser.lovderGTEm.videoTotaluserGTEm.1[oip]["islikethisvideo"] = "0"
//                    }
                   
                }
            }
                        self.dataviedeoView.reloadData()
            
        }
        
        
       
        
    }
    
    func refreshRecommendaGTEMtions(biut:UIButton,oip:Int)  {
        if biut.isSelected == true {
            

            GTEMCombingUser.lovderGTEm.videoTotaluserGTEm.1[oip]["islikethisvideo"] = "1"
            
        }else{
            GTEMCombingUser.lovderGTEm.videoTotaluserGTEm.1[oip]["islikethisvideo"] = "0"
        }
    }
    ///评论
    @objc func giveCommenteGTEm(gtem:UIButton)  {
        
        let commentvfgGTEm = GTEMCommenttMojito.init(aginestGTEm: nil, ddleToolGTEM: nil, tationTimerGTEM: nil, realingUserDtaGTEm: mojitoAcholeData.2[gtem.tag])
//        commentvfgGTEm.modalPresentationStyle = .overCurrentContext
        self.present(commentvfgGTEm, animated: true)
       
    }

    //MARK: -   获取远程视频链接缩略图
    static  func fetchGTEMRemoteVideoThumbnailImag(tageturl: URL, gtemcompletion: @escaping (UIImage?) -> Void) {
        let assetGTEM = AVAsset(url: tageturl)
        
        var videos: [Video] = []
               
        let generatorGTEM = AVAssetImageGenerator(asset: assetGTEM)
        
        
        
        generatorGTEM.appliesPreferredTrackTransform = true
        
        
        generatorGTEM.maximumSize = CGSize(width: 550, height: 550)
       
        generatorGTEM.requestedTimeToleranceBefore = .zero
       
        generatorGTEM.generateCGImagesAsynchronously(forTimes: [NSValue(time: CMTime.zero)]) { _, cgImage, _, _, error in
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
        
        if let cachedImage = thumbnailCacheGTEM.object(forKey: cacheKey) {
            cgtemompletion(cachedImage)
            return
        }
        
        fetchGTEMRemoteVideoThumbnailImag(tageturl: url) { image in
            if let image = image {
                self.thumbnailCacheGTEM.setObject(image, forKey: cacheKey)
            }
            
            cgtemompletion(image)
            
        }
    }
    
    
    
}
