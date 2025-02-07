//
//  GTEMHomwerMoJito.swift
//  Gintuemojir
//
//  Created by Gintuemojir on 2025/1/17.
//
import AVFoundation
import UIKit

class GTEMHomwerMoJito: UIViewController ,UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        if indexPath.section == 0 {
            return CGSize(width: self.view.frame.width, height: 471)
        }

        return CGSize(width: self.view.frame.width, height: 264 )
        
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
       
        20
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        
       
        20
    }
    
    
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 2
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if section == 0 {
            return 1
        }
        return GTEMCombingUser.lovderGTEm.ancholeRoomGTEm.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if indexPath.section == 0 {
            let gtehCell = collectionView.dequeueReusableCell(withReuseIdentifier:"GTEHomeHeadeCellID", for: indexPath) as! GTEHomeHeadeCell
            gtehCell.aigistGTEA.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(aiiajielTochat)))
            
            gtehCell.popularGTEHButton.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(topcellPopular)))
            return gtehCell
            
        }
        let gtehCell = collectionView.dequeueReusableCell(withReuseIdentifier:"GTEHChatroomeCellID", for: indexPath) as! GTEHChatroomeCell
        gtehCell.roomNameGTEA.text = GTEMCombingUser.lovderGTEm.ancholeRoomGTEm[indexPath.row].roomNameGTEM
        gtehCell.bedroomBackgroundGTEA.image = GTEMCombingUser.lovderGTEm.ancholeRoomGTEm[indexPath.row].roombackgroundGTEM
        
        gtehCell.randomrImageGTEA.image = UIImage(named: GTEMCombingUser.lovderGTEm.ancholeRoomGTEm[indexPath.row].hosteruserGTEm["teacherphoto"] ?? "")
        
        let diologLater = GTEMCombingUser.lovderGTEm.ancholeRoomGTEm[indexPath.row].roomMesageListGTEm.last?.enterProuserGTEM
    
        gtehCell.randomrImageLaterGTEA.image = UIImage(named: diologLater?["teacherphoto"] ?? "")
        return gtehCell
        
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if indexPath.section == 1 {
            let rrromdio = GTEMCombingUser.lovderGTEm.ancholeRoomGTEm[indexPath.row]
            self.navigationController?.pushViewController(GTEMAcholeDeatilMoJito.init(ismineBackgroundRoom: false, roomInfoGTEm: rrromdio), animated: true)
        }
    }

    @IBOutlet weak var homewrserDataView: UICollectionView!
    
   
    override func viewDidLoad() {
        super.viewDidLoad()
        let topcell = UINib(nibName: "GTEHomeHeadeCell", bundle: nil)
        homewrserDataView.register(topcell, forCellWithReuseIdentifier: "GTEHomeHeadeCellID")
        homewrserDataView.register(UINib(nibName: "GTEHChatroomeCell", bundle: nil), forCellWithReuseIdentifier: "GTEHChatroomeCellID")
        
        homewrserDataView.delegate = self
        homewrserDataView.dataSource = self
        homewrserDataView.showsVerticalScrollIndicator = false
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
        self.navigationController?.pushViewController(GTEMAICholeMoJito.init(), animated: true)
    }
    
    
    @objc func serachingGTEn()  {
        self.navigationController?.pushViewController(GTEMSearchinMeaageJito.init(), animated: true)
        
    }
    
    @objc func meaaagengGTEn()  {
        self.navigationController?.pushViewController(GTEMMoRemoteMeaageJito.init(), animated: true)
    }
    
    
   
   
}
