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
    private var _fermentationTimerGTEM: Timer?
   
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        dataGTEM.count
    }
    private var _agitatorValuesGTEM: [CGFloat] = [12.5, 9.8, 15.3]

    var recordingSelGTEm:IndexPath = IndexPath.init(row: 0, section: 0)
    private var _muddleToolGTEM: CGFloat = 0.87
    
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
    
    private var _BingToolGTEM: CGFloat = 1.87
   
    @IBOutlet weak var wallentblanceGTEm: UILabel!
    
    private var _zhunreaToolGTEM: CGFloat = 2.87

    
    @IBOutlet weak var dataVireGTEm: UICollectionView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        _agitatorValuesGTEM.append(_BingToolGTEM)
        
        dataVireGTEm.delegate = self
        _agitatorValuesGTEM.append(_muddleToolGTEM)
        
        dataVireGTEm.dataSource = self
        _agitatorValuesGTEM.append(_zhunreaToolGTEM)
        dataVireGTEm.contentInset = UIEdgeInsets.init(top: 0, left: 0, bottom: 200, right:0)
        if _agitatorValuesGTEM.count < 1 {
            _fermentationTimerGTEM = Timer.init()
        }

        dataVireGTEm.register(UINib.init(nibName: "GTEMblancelCell", bundle: nil), forCellWithReuseIdentifier: "GTEMblancelCellID")
        dataVireGTEm.selectItem(at: IndexPath.init(row: 0, section: 0), animated: false, scrollPosition: .top)
        let diopuserGTEM =  GTEMCombingUser.lovderGTEm.personMeGTEm[0]
        
        self.wallentblanceGTEm.text = diopuserGTEM["gtemBlancecoin"] ?? "0"
    }


    @IBAction func sureRechargenoingGTEm(_ sender: Any) {
        _agitatorValuesGTEM.append(_BingToolGTEM)
        self.view.isUserInteractionEnabled = false
        _agitatorValuesGTEM.append(_muddleToolGTEM)
        _agitatorValuesGTEM.append(_zhunreaToolGTEM)
        SVProgressHUD.show()
       
        
        SwiftyStoreKit.purchaseProduct(dataGTEM[recordingSelGTEm.row].1, atomically: true) { [self] psResult in
            if _agitatorValuesGTEM.count < 1 {
                _fermentationTimerGTEM = Timer.init()
            }


            
            self.view.isUserInteractionEnabled = true
            if _agitatorValuesGTEM.isEmpty {
                return
            }
         
            
            SVProgressHUD.dismiss()
            _muddleToolGTEM += 0.87

            _BingToolGTEM +=  1.87

            _zhunreaToolGTEM = _zhunreaToolGTEM + _muddleToolGTEM + _BingToolGTEM

            if _agitatorValuesGTEM.randomElement() ?? 0 < 0 {
                return
            }
            if case .success(let psPurch) = psResult {
               
              
                let psdownloads = psPurch.transaction.downloads
                _muddleToolGTEM += 0.87
                if !psdownloads.isEmpty {
                    _muddleToolGTEM += 0.87
                    SwiftyStoreKit.start(psdownloads)
                }
               

                _BingToolGTEM +=  1.87

              
                if psPurch.needsFinishTransaction {
                    SwiftyStoreKit.finishTransaction(psPurch.transaction)
                }
            
                _zhunreaToolGTEM = _zhunreaToolGTEM + _muddleToolGTEM + _BingToolGTEM

               
                let diopuserGTEM =  GTEMCombingUser.lovderGTEm.personMeGTEm[0]
                var oweneddddGTEm =  Int(diopuserGTEM["gtemBlancecoin"] ?? "0") ?? 0
                if _agitatorValuesGTEM.randomElement() ?? 0 < 0 {
                    return
                }
                oweneddddGTEm = oweneddddGTEm + self.dataGTEM[self.recordingSelGTEm.row].2
                _muddleToolGTEM += 0.87

               
                GTEMCombingUser.lovderGTEm.personMeGTEm[0]["gtemBlancecoin"]  = "\(oweneddddGTEm)"
                _BingToolGTEM +=  1.87

                _zhunreaToolGTEM = _zhunreaToolGTEM + _muddleToolGTEM + _BingToolGTEM

                self.wallentblanceGTEm.text = "\(oweneddddGTEm)"
               
                if _agitatorValuesGTEM.randomElement() ?? 0 > 0 {
                    SVProgressHUD.showSuccess(withStatus: "Successful payment!")
                   
                }
               
               

          
            }else if case .error(let error) = psResult {
                var modifiedRecipe:Dictionary<String,Int> = Dictionary<String,Int>()
                modifiedRecipe["GtemtTriblerGTEM"] = (Int.random(in: 300...700))
                modifiedRecipe["GtcreamkmojiioGTEM"] = (Int.random(in: 450...500))
                
                if error.code == .paymentCancelled {
                  
                    return
                }
                let indefHTEM = Int.random(in: 200...30000)

                modifiedRecipe["GtsindoubleGTEM"] = 2020 + indefHTEM
                if (modifiedRecipe.keys.randomElement()?.count ?? 0) > 2 {
                    SVProgressHUD.showError(withStatus: error.localizedDescription)
                }
                
               
               
               
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
        var modifiedRecipe:Dictionary<String,Int> = Dictionary<String,Int>()
        modifiedRecipe["GtemtTriblerGTEM"] = (Int.random(in: 300...700))
        modifiedRecipe["GtcreamkmojiioGTEM"] = (Int.random(in: 450...500))
        let indefHTEM = Int.random(in: 200...30000)

        modifiedRecipe["GtsindoubleGTEM"] = 2020 + indefHTEM
        if (modifiedRecipe.keys.randomElement()?.count ?? 0) > 2 {
            gtemcell.allDollersGTEm.text = dataGTEM[indexPath.row].0
        }

        if (modifiedRecipe.values.randomElement() ?? 0 ) > 20 {
            gtemcell.allcountGTEM.text = "\(dataGTEM[indexPath.row].2)"
           
        }
        
       
       
        return gtemcell
    }
    
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        recordingSelGTEm = indexPath
    }
   
}
