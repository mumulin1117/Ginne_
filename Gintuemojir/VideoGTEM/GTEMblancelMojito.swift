//
//  GTEMblancelMojito.swift
//  Gintuemojir
//
//  Created by Gintuemojir on 2025/2/6.
//

import UIKit

import SwiftyStoreKit

import JGProgressHUD

class GTEMblancelMojito: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout {
    
   
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
       

        return dataGTEM.count
    }
    

    var recordingSelGTEm:IndexPath = IndexPath.init(row: 0, section: 0)
    
    
    private  let dataGTEM:Array<(String,String,Int,Bool,Bool)> = [
        ("$&%%&0.&%%&99".replacingOccurrences(of: "&%%&", with: "")
         ,"cotcsdtspojiyywc",400,false,false),
                     
        ("$&%%&1.&%%&99".replacingOccurrences(of: "&%%&", with: ""),"vfckmvvzjeaaoahs",800,false,false),
        ("$2&%%&.9&%%&9".replacingOccurrences(of: "&%%&", with: ""),"kiloeerlisnibhungert",1550,false,false),
                    
        ("$&%%&4.9&%%&9".replacingOccurrences(of: "&%%&", with: ""),"ivudncxlqrfvmpoj",2450,false,false),
           ("$9&%%&.9&%%&9".replacingOccurrences(of: "&%%&", with: ""),"fdvlkwlpkgbiaaat",4900,false,false),
        ("$&%%&19.9&%%&9".replacingOccurrences(of: "&%%&", with: ""),"rwrhgqdpxaoldceb",9800,false,false),

        ("$&%%&29.9&%%&9".replacingOccurrences(of: "&%%&", with: ""),"zhunbeiyuiinghj",16500,false,false),
        ("$4&%%&9.9&%%&9".replacingOccurrences(of: "&%%&", with: ""),"vmmbnuftnbmphmbk",24500,false,false),
        
        ("$79.9&%%&9".replacingOccurrences(of: "&%%&", with: ""),"dansingeftnbmershi",38450,false,false),

        ("$&%%&99.9&%%&9".replacingOccurrences(of: "&%%&", with: ""),"ikgcarevewbdettd",49000,false,false)]
    
    
   
    @IBOutlet weak var wallentblanceGTEm: UILabel!
    
    

    
    @IBOutlet weak var dataVireGTEm: UICollectionView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        dataVireGTEm.delegate = self
        
        
        dataVireGTEm.dataSource = self
        
        dataVireGTEm.contentInset = UIEdgeInsets.init(top: 0, left: 0, bottom: 200, right:0)
        

        dataVireGTEm.register(UINib.init(nibName: "GTEMblancelCell", bundle: nil), forCellWithReuseIdentifier: "GTEMblancelCellID")
        

       
        dataVireGTEm.selectItem(at: IndexPath.init(row: 0, section: 0), animated: false, scrollPosition: .top)
        let diopuserGTEM =  GTEMCombingUser.lovderGTEm.personMeGTEm[0]
       
        self.wallentblanceGTEm.text = diopuserGTEM["gtemBlancecoin"] ?? "0"
    }


    @IBAction func sureRechargenoingGTEm(_ sender: Any) {
        
        self.view.isUserInteractionEnabled = false
       
        
        let hudLoadingGTEM = JGProgressHUD(style: .light)
        hudLoadingGTEM.textLabel.text = "Loa->->ding->->...".replacingOccurrences(of: "->->", with: "")
        hudLoadingGTEM.show(in: self.view)
       
        
        
        SwiftyStoreKit.purchaseProduct(dataGTEM[recordingSelGTEm.row].1, atomically: true) { [self] psResult in
            
            self.view.isUserInteractionEnabled = true
            
            hudLoadingGTEM.dismiss()
            
            if case .success(let psPurch) = psResult {
               
              
                let psdownloads = psPurch.transaction.downloads
                
                if !psdownloads.isEmpty {
                    
                    SwiftyStoreKit.start(psdownloads)
                }
               

                

              
                if psPurch.needsFinishTransaction {
                    SwiftyStoreKit.finishTransaction(psPurch.transaction)
                }
            
                

               
                let diopuserGTEM =  GTEMCombingUser.lovderGTEm.personMeGTEm[0]
                var oweneddddGTEm =  Int(diopuserGTEM["gtemBlancecoin"] ?? "0") ?? 0
               
                oweneddddGTEm = oweneddddGTEm + self.dataGTEM[self.recordingSelGTEm.row].2
                

               
                GTEMCombingUser.lovderGTEm.personMeGTEm[0]["gtemBlancecoin"]  = "\(oweneddddGTEm)"
                

                

                self.wallentblanceGTEm.text = "\(oweneddddGTEm)"
               
                let hudIsuccessGTEM = JGProgressHUD(style: .light)
                hudIsuccessGTEM.textLabel.text = "Suc&%%&cessful pa&%%&yme&%%&nt!".replacingOccurrences(of: "&%%&", with: "")
                hudIsuccessGTEM.indicatorView = JGProgressHUDSuccessIndicatorView()
                hudIsuccessGTEM.show(in: self.view)
                hudIsuccessGTEM.dismiss(afterDelay: 2.0)
               

          
            }else if case .error(let error) = psResult {
                
                
                
                
                if error.code == .paymentCancelled {
                  
                    return
                }
                

                let hudINfoGTEM = JGProgressHUD(style: .light)
                hudINfoGTEM.textLabel.text = error.localizedDescription
                hudINfoGTEM.indicatorView = JGProgressHUDErrorIndicatorView(image: UIImage.init(named: "Rewort_GTEA")!)
                hudINfoGTEM.show(in: self.view)
                hudINfoGTEM.dismiss(afterDelay: 2.0)
               
               
               
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
        
        
        

        
        

        
        return 14
    }
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        
        return 8
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
