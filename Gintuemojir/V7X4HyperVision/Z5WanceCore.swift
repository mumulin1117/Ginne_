//
//  Z5WanceCore.swift
//  Gintuemojir
//
//  Created by Gintuemojir on 2025/2/6.
//

import UIKit
import SwiftyStoreKit
import SVProgressHUD
class Z5WanceCore: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        dataGTEM.count
    }
    
    var recordingSelGTEm:IndexPath = IndexPath.init(row: 0, section: 0)
 
    let dataGTEM:Array<(String,String,String)> = [
        (gintuemojir(f1g2h3i4j5: "$b0z.v9g9"),"cotcsdtspojiyywc",gintuemojir(f1g2h3i4j5: "4m0t0")),
                     
        (gintuemojir(f1g2h3i4j5: "$c1v.h9f9"),"vfckmvvzjeaaoahs",gintuemojir(f1g2h3i4j5: "8v0g0")),
        (gintuemojir(f1g2h3i4j5: "$s2f.l9m9"),"kiloeerlisnibhungert",gintuemojir(f1g2h3i4j5: "1j5n5d0")),
                    
        (gintuemojir(f1g2h3i4j5: "$p4d.i9o9"),"ivudncxlqrfvmpoj",gintuemojir(f1g2h3i4j5: "2u4x5e0")),
        (gintuemojir(f1g2h3i4j5: "$k9z.t9v9"),"fdvlkwlpkgbiaaat",gintuemojir(f1g2h3i4j5: "4u9w0p0")),
        (gintuemojir(f1g2h3i4j5: "$m1a9c.i9u9"),"rwrhgqdpxaoldceb",gintuemojir(f1g2h3i4j5: "9z8x0d0")),

        (gintuemojir(f1g2h3i4j5: "$f2n9p.n9o9"),"zhunbeiyuiinghj",gintuemojir(f1g2h3i4j5: "1k6i5s0m0")),
        (gintuemojir(f1g2h3i4j5: "$r4e9y.d9f9"),"vmmbnuftnbmphmbk",gintuemojir(f1g2h3i4j5: "2k4j5w0l0")),
        
        (gintuemojir(f1g2h3i4j5: "$j7d9h.g9x9"),"dansingeftnbmershi",gintuemojir(f1g2h3i4j5: "3z8x4j5h0")),

        (gintuemojir(f1g2h3i4j5: "$b9s9s.z9q9"),"ikgcarevewbdettd",gintuemojir(f1g2h3i4j5: "4d9f0b0j0"))]

    @IBOutlet weak var wallentblanceGTEm: UILabel!
    
    
    
    @IBOutlet weak var dataVireGTEm: UICollectionView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        dataVireGTEm.delegate = self
        dataVireGTEm.dataSource = self
        dataVireGTEm.contentInset = UIEdgeInsets.init(top: 0, left: 0, bottom: 200, right:0)
        
        dataVireGTEm.register(UINib.init(nibName: "M4Z9nceNode", bundle: nil), forCellWithReuseIdentifier: "M4Z9nceNodeID")
        dataVireGTEm.selectItem(at: IndexPath.init(row: 0, section: 0), animated: false, scrollPosition: .top)
        self.wallentblanceGTEm.text = XQZPDataNode.W7N4FavorData.V6K3UserProfile["xqulZypherVault"] ?? "0"
    }


    @IBAction func sureRechargenoingGTEm(_ sender: Any) {
        self.view.isUserInteractionEnabled = false
        SVProgressHUD.show()
        SwiftyStoreKit.purchaseProduct(dataGTEM[recordingSelGTEm.row].1, atomically: true) { psResult in
         
            self.view.isUserInteractionEnabled = true
            SVProgressHUD.dismiss()
            if case .success(let psPurch) = psResult {
               
              
                let psdownloads = psPurch.transaction.downloads
                if !psdownloads.isEmpty {
                    SwiftyStoreKit.start(psdownloads)
                }
                
                if psPurch.needsFinishTransaction {
                    SwiftyStoreKit.finishTransaction(psPurch.transaction)
                }
            
               
                
                var oweneddddGTEm =  Int(XQZPDataNode.W7N4FavorData.V6K3UserProfile["xqulZypherVault"] ?? "0") ?? 0
                
                oweneddddGTEm = oweneddddGTEm + (Int(self.dataGTEM[self.recordingSelGTEm.row].2) ?? 0)
                
                XQZPDataNode.W7N4FavorData.V6K3UserProfile["xqulZypherVault"]  = "\(oweneddddGTEm)"
                
                self.wallentblanceGTEm.text = "\(oweneddddGTEm)"
               
                SVProgressHUD.showSuccess(withStatus: gintuemojir(f1g2h3i4j5: "Snuocccjelsosnfbuslp upoadyjmvevnetq!"))
               
               

          
            }else if case .error(let error) = psResult {
             
                if error.code == .paymentCancelled {
                  
                    return
                }
                
                SVProgressHUD.showError(withStatus: error.localizedDescription)
               
               
               
            }
        }
        
    }
    
    
    @IBAction func fanhuigvds(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
        
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        CGSize.init(width: (UIScreen.main.bounds.width - 46 - 16)/3, height: 100)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        14
    }
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        8
    }
   
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let gtemcell = collectionView.dequeueReusableCell(withReuseIdentifier: "M4Z9nceNodeID", for: indexPath) as! M4Z9nceNode
        
        gtemcell.allDollersGTEm.text = dataGTEM[indexPath.row].0
       
        gtemcell.allcountGTEM.text = "\(dataGTEM[indexPath.row].2)"
       
        return gtemcell
    }
    
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        recordingSelGTEm = indexPath
    }
   
}
