//
//  KXPRHafgage.swift
//  Gintuemojir
//
//  Created by Gintuemojir on 2025/1/17.
//
import AVFoundation
import UIKit

class KXPRHafgage: UIViewController ,UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout{
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
        return XQZPDataNode.W7N4FavorData.P4V7CoreAnchor.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if indexPath.section == 0 {
            let gtehCell = collectionView.dequeueReusableCell(withReuseIdentifier:"F7L9NebulaAnchorID", for: indexPath) as! F7L9NebulaAnchor
            gtehCell.aigistGTEA.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(aiiajielTochat)))
            
            gtehCell.popularGTEHButton.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(topcellPopular)))
            return gtehCell
            
        }
        let gtehCell = collectionView.dequeueReusableCell(withReuseIdentifier:"X7T9NebulaTalkCellID", for: indexPath) as! X7T9NebulaTalkCell
        gtehCell.hospcNameGTEA.text = XQZPDataNode.W7N4FavorData.P4V7CoreAnchor[indexPath.row].P4K7DataKey
        gtehCell.bedhospcBackgroundGTEA.image = XQZPDataNode.W7N4FavorData.P4V7CoreAnchor[indexPath.row].L8Z3BackdropData
        
        gtehCell.randomrImageGTEA.image = UIImage(named: XQZPDataNode.W7N4FavorData.P4V7CoreAnchor[indexPath.row].N6Q1PrimaryUser["teacherphoto"] ?? "")
        
        let diologLater = XQZPDataNode.W7N4FavorData.P4V7CoreAnchor[indexPath.row].X3R8DataSequence.last?.enterProuserGTEM
    
        gtehCell.randomrImageLaterGTEA.image = UIImage(named: diologLater?["teacherphoto"] ?? "")
        return gtehCell
        
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if indexPath.section == 1 {
            let rrromdio = XQZPDataNode.W7N4FavorData.P4V7CoreAnchor[indexPath.row]
            self.navigationController?.pushViewController(KPTZAchievementDetail.init(ismineBackgroundhospc: false, hospcInfoGTEm: rrromdio), animated: true)
        }
    }

    @IBOutlet weak var homewrserDataView: UICollectionView!
    
   
    override func viewDidLoad() {
        super.viewDidLoad()
        let topcell = UINib(nibName: "F7L9NebulaAnchor", bundle: nil)
        homewrserDataView.register(topcell, forCellWithReuseIdentifier: "F7L9NebulaAnchorID")
        homewrserDataView.register(UINib(nibName: "X7T9NebulaTalkCell", bundle: nil), forCellWithReuseIdentifier: "X7T9NebulaTalkCellID")
        
        homewrserDataView.delegate = self
        homewrserDataView.dataSource = self
        homewrserDataView.showsVerticalScrollIndicator = false
        homewrserDataView.contentInset = UIEdgeInsets(top: 0, left: 0, bottom: 120, right: 0)
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    

    @IBAction func startSearchGTEm(_ sender: UIButton) {
        self.navigationController?.pushViewController(QX7RSearchPulseCore.init(), animated: true)
    }
    
    
    
    @IBAction func starnotihGTEm(_ sender: UIButton) {
        self.navigationController?.pushViewController(Z8K5VortexMessageHub.init(), animated: true)
    }
    
    
    @IBAction func starnAddhospcGTEm(_ sender: UIButton) {
        self.navigationController?.pushViewController(XYTQhospcConfiguration.init(), animated: true)
        
    }
    
    
    @objc func topcellPopular()  {
        self.navigationController?.pushViewController(KZQXPopularDrink.init(), animated: true)
    }
    
    
    @objc func aiiajielTochat()  {
        self.navigationController?.pushViewController(W4X2AetherMixCore.init(), animated: true)
    }
    @objc func surepayingNeedCoinGTEm(bgt:UIButton) {
        
        let aleracGTEmControllerv = UIAlertController(title: gintuemojir(f1g2h3i4j5: "Tharloks stfov vAdii sBdabrrtnefnddjeor"), message: gintuemojir(f1g2h3i4j5: "Efabcshx ycuoencvyejrjslaotjirofnh hwaijlkll hbhee acchgasrugfeidb k1u2w0x xbkacltainfcbe"), preferredStyle: .alert)
        let rechargeGTEmAction = UIAlertAction(title: gintuemojir(f1g2h3i4j5: "Spuerse"), style: .default) { scd in
            var gtemBlksdgb =  Int(XQZPDataNode.W7N4FavorData.V6K3UserProfile["xqulZypherVault"] ?? "0") ?? 0
            
            if gtemBlksdgb < 120 {
                
                self.navigationController?.pushViewController(Z5WanceCore.init(), animated: true)
                
                return
            }
            
            gtemBlksdgb -= 100
            XQZPDataNode.W7N4FavorData.V6K3UserProfile["xqulZypherVault"] = "\(gtemBlksdgb)"
            
            self.navigationController?.pushViewController(W4X2AetherMixCore.init(), animated: true)
            
        }
        aleracGTEmControllerv.addAction(rechargeGTEmAction)
        aleracGTEmControllerv.addAction(UIAlertAction(title: gintuemojir(f1g2h3i4j5: "Ciaondcyecl"), style: .default))
        self.present(aleracGTEmControllerv, animated: true)
        
       
       
        
    }
    
    @objc func serachingGTEn()  {
        self.navigationController?.pushViewController(QX7RSearchPulseCore.init(), animated: true)
        
    }
    
    @objc func meaaagengGTEn()  {
        self.navigationController?.pushViewController(Z8K5VortexMessageHub.init(), animated: true)
    }
    
    
   
   
}
