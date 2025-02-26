//
//  GTEMHomwerMoJito.swift
//  Gintuemojir
//
//  Created by Gintuemojir on 2025/1/17.
//
import AVFoundation
import UIKit
import JGProgressHUD

class GTEMHomwerMoJito: UIViewController ,UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout{
    var isLoadingGTEm: Bool = false
    
    private let maxDisplayedVideosGTEm = 20
    
    @IBOutlet weak var readkiopGTEm: UILabel!
    
    var currentPageGTEm: Int = 1
    @IBOutlet weak var okiopGtemn: UILabel!
    
    var totalVideosCountGTEm: Int = 0
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        if indexPath.section == 0 {
            return CGSize(width: self.view.frame.width, height: 471)
        }
        
        return CGSize(width: self.view.frame.width, height: 264 )
        
    }
    
    
    @IBOutlet weak var glaiopGtuhn: UILabel!
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
       
        return  mockFetchVideosGTEm(iooojuio:true)
    }
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
       
        return mockFetchVideosGTEm(iooojuio:false)
    }
    
    func mockFetchVideosGTEm(iooojuio:Bool) -> CGFloat {
        if iooojuio  {
            return 20
        }
        return 20
        
    }

    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 2
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if section == 0 {
            return 1
        }
    
        return GTEMCombingUser.lovderGTEm.ancholeRoomGTEm.1.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if indexPath.section == 0 {
            let gtehCell = collectionView.dequeueReusableCell(withReuseIdentifier:"GTEHomeHeadeCellID", for: indexPath) as! GTEHomeHeadeCell
            gtehCell.aigistGTEA.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(aiiajielTochat)))
            
            gtehCell.popularGTEHButton.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(topcellPopular)))
            return gtehCell
            
        }
        let gtehCell = collectionView.dequeueReusableCell(withReuseIdentifier:"GTEHChatroomeCellID", for: indexPath) as! GTEHChatroomeCell
        gtehCell.roomNameGTEA.text = GTEMCombingUser.lovderGTEm.ancholeRoomGTEm.1[indexPath.row].fangjainNameGTEM
        gtehCell.bedroomBackgroundGTEA.image = GTEMCombingUser.lovderGTEm.ancholeRoomGTEm.1[indexPath.row].roombackgroundGTEM
        
       
        gtehCell.randomrImageGTEA.image = UIImage(named: GTEMCombingUser.lovderGTEm.ancholeRoomGTEm.1[indexPath.row].hosteruserGTEm["teacherphoto"] ?? "")
        

       
        
        let diologLater = GTEMCombingUser.lovderGTEm.ancholeRoomGTEm.1[indexPath.row].roomMesageListGTEm.last?.enterProuserGTEM
        gtehCell.randomrImageLaterGTEA.image = UIImage(named: diologLater?["teacherphoto"] ?? "")

       
       
        return gtehCell
        
    }
    
    func didSelectVideoGTEm(videoGTEM: Int) {
          
        homewrserDataView.delegate = self
       
        homewrserDataView.dataSource = self
        
        homewrserDataView.showsVerticalScrollIndicator = false
       
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if indexPath.section == 1 {
            let rrromdio = (1,GTEMCombingUser.lovderGTEm.ancholeRoomGTEm.1[indexPath.row])
            self.navigationController?.pushViewController(GTEMAcholeDeatilMoJito.init(ismineBackgroundRoom: false, roomInfoGTEm: rrromdio), animated: true)
        }
    }

    @IBOutlet weak var homewrserDataView: UICollectionView!
    
   
    override func viewDidLoad() {
        super.viewDidLoad()
        let topcell = UINib(nibName: "GTEHomeHeadeCell", bundle: nil)
        
        
        
       

        homewrserDataView.register(topcell, forCellWithReuseIdentifier: "GTEHomeHeadeCellID")
        
        

       
        homewrserDataView.register(UINib(nibName: "GTEHChatroomeCell", bundle: nil), forCellWithReuseIdentifier: "GTEHChatroomeCellID")
        
        
        didSelectVideoGTEm(videoGTEM: 0)
        
      
        homewrserDataView.contentInset = UIEdgeInsets(top: 0, left: 0, bottom: 120, right: 0)
    }
    
    
    
    
    
    
    
    
  
    

    @IBAction func startSearchGTEm(_ sender: UIButton) {
        
        self.navigationController?.pushViewController(GTEMSearchinMeaageJito.init(), animated: true)
      
    }
    
    
    
    @IBAction func starnotihGTEm(_ sender: UIButton) {
        

        
        self.navigationController?.pushViewController(GTEMMoRemoteMeaageJito.init(), animated: true)
    }
    
    
    @IBAction func starnAddRoomGTEm(_ sender: UIButton) {
        

        
        self.navigationController?.pushViewController(GTEMAholeRoomSetupMoJito.init(), animated: true)
        
    }
    
    
    @objc func topcellPopular()  {
        
        self.navigationController?.pushViewController(GTEMPopularMOjito.init(), animated: true)
       
    }
    
    
    @objc func aiiajielTochat()  {
        

        isLoadingGTEm = true
        
        let alertNeesub = UIAlertController(title: "Start a conversation with an AI Mixologist", message: "Each conversation will cost 120 balance！", preferredStyle:.alert)
        alertNeesub.addAction(UIAlertAction(title: "Confirm", style: .default, handler: { adfgg in
            self.isLoadingGTEm = true
            self.isLoadingGTEm = true
            self.surepayingNeedCoinGTEm()
        }))
        alertNeesub.addAction(UIAlertAction(title: "ca&-%-%-&nc&-%-%-&el".replacingOccurrences(of: "&-%-%-&", with: ""), style: .default))
        
        self.present(alertNeesub, animated: true)
        self.isLoadingGTEm = false
        self.navigationController?.pushViewController(GTEMAICholeMoJito.init(), animated: true)
    }
    
    @objc func surepayingNeedCoinGTEm() {
           
        let fullkertGTEm = "S&-%-%-&oorry&-%-%-&,Ba&-%-%-&lance &-%-%-&is Low".replacingOccurrences(of: "&-%-%-&", with: "")
   
           var gtemBlksdgb =  Int( GTEMCombingUser.lovderGTEm.personMeGTEm[0]["gtemBlancecoin"] ?? "0") ?? 0
           
           
   
           if gtemBlksdgb < 120 {
               
               
   
   
               let alertv = UIAlertController(title: fullkertGTEm, message: "", preferredStyle: .alert)
               
               let fullBAikertGTEm = "I&-%-%-&ncre&-%-%-&ase Ba&-%-%-&lan&-%-%-&ce".replacingOccurrences(of: "&-%-%-&", with: "")
   
               let rechargeGTEmAction = UIAlertAction(title: fullBAikertGTEm, style: .default) { scd in
                   
                   self.navigationController?.pushViewController(GTEMblancelMojito.init(), animated: true)
               }
               alertv.addAction(rechargeGTEmAction)
               
               let fullBSDAikertGTEm = "En&-%-%-&d A&-%-%-&ction".replacingOccurrences(of: "&-%-%-&", with: "")
   
               alertv.addAction(UIAlertAction(title: fullBSDAikertGTEm, style: .default))
   
               self.present(alertv, animated: true)
   
               return
           }
   
        let hudIsuccessGTEM = JGProgressHUD(style: .light)
     
        hudIsuccessGTEM.textLabel.text = "L&-%-%-&et's &-%-%-&start your conve&-%-%-&rsation！".replacingOccurrences(of: "&-%-%-&", with: "")
   
          
        GTEMCombingUser.lovderGTEm.personMeGTEm[0]["gtemBlancecoin"] = "\(gtemBlksdgb)"
           
           
           
        
           hudIsuccessGTEM.indicatorView = JGProgressHUDSuccessIndicatorView()
        
           hudIsuccessGTEM.show(in: self.view)
        
           hudIsuccessGTEM.dismiss(afterDelay: 2.0)
   
           
   
          
         
   
       }
    
    @objc func serachingGTEn()  {
        
        self.navigationController?.pushViewController(GTEMSearchinMeaageJito.init(), animated: true)
        
        
    }
    
    @objc func meaaagengGTEn()  {
        

        
        self.navigationController?.pushViewController(GTEMMoRemoteMeaageJito.init(), animated: true)
    }
    
    
   
   
}
