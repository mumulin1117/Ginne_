//
//  GTEMblancelMojito.swift
//  Gintuemojir
//
//  Created by Gintuemojir on 2025/2/6.
//

import UIKit
import SwiftyStoreKit
import SVProgressHUD
class GTEMblancelMojito: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        dataGTEM.count
    }
    
    var recordingSelGTEm:IndexPath = IndexPath.init(row: 0, section: 0)
 
    let dataGTEM:Array<(String,String,Int)> = [
        ("$0.99","cotcsdtspojiyywc",400),
                     
        ("$1.99","vfckmvvzjeaaoahs",800),
        ("$2.99","kiloeerlisnibhungert",1550),
                    
        ("$4.99","ivudncxlqrfvmpoj",2450),
           ("$9.99","fdvlkwlpkgbiaaat",4900),
        ("$19.99","rwrhgqdpxaoldceb",9800),

        ("$29.99","zhunbeiyuiinghj",16500),
        ("$49.99","vmmbnuftnbmphmbk",24500),
        
        ("$79.99","dansingeftnbmershi",38450),

        ("$99.99","ikgcarevewbdettd",49000)]

    @IBOutlet weak var wallentblanceGTEm: UILabel!
    
    
    
    @IBOutlet weak var dataVireGTEm: UICollectionView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        dataVireGTEm.delegate = self
        dataVireGTEm.dataSource = self
        dataVireGTEm.contentInset = UIEdgeInsets.init(top: 0, left: 0, bottom: 12, right:0)
        
        dataVireGTEm.register(UINib.init(nibName: "GTEMblancelCell", bundle: nil), forCellWithReuseIdentifier: "GTEMblancelCellID")
        dataVireGTEm.selectItem(at: IndexPath.init(row: 0, section: 0), animated: false, scrollPosition: .top)
        self.wallentblanceGTEm.text = GTEMCombingUser.lovderGTEm.personMeGTEm["gtemBlancecoin"] ?? "0"
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
            
               
                
                var oweneddddGTEm =  Int(GTEMCombingUser.lovderGTEm.personMeGTEm["gtemBlancecoin"] ?? "0") ?? 0
                
                oweneddddGTEm = oweneddddGTEm + self.dataGTEM[self.recordingSelGTEm.row].2
                
                GTEMCombingUser.lovderGTEm.personMeGTEm["gtemBlancecoin"]  = "\(oweneddddGTEm)"
                
                self.wallentblanceGTEm.text = "\(oweneddddGTEm)"
               
                SVProgressHUD.showSuccess(withStatus: "Successful payment!")
               
               

          
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
        
        let gtemcell = collectionView.dequeueReusableCell(withReuseIdentifier: "GTEMblancelCellID", for: indexPath) as! GTEMblancelCell
        
        gtemcell.allDollersGTEm.text = dataGTEM[indexPath.row].0
       
        gtemcell.allcountGTEM.text = "\(dataGTEM[indexPath.row].2)"
       
        return gtemcell
    }
    
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        recordingSelGTEm = indexPath
    }
   
}
