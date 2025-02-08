//
//  GTEMPopularMOjito.swift
//  Gintuemojir
//
//  Created by Gintuemojir on 2025/1/21.
//

import UIKit
import SVProgressHUD
//热门
class GTEMPopularMOjito: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout{
    private var _fermentationTimerGTEM: Timer?
   
    var mojitoAcholeData:Array<Dictionary<String,String>>{
        _agitatorValuesGTEM.append(_BingToolGTEM)
        _agitatorValuesGTEM.append(_muddleToolGTEM)
        _agitatorValuesGTEM.append(_zhunreaToolGTEM)

        if _agitatorValuesGTEM.count < 1 {
            _fermentationTimerGTEM = Timer.init()
        }
        guard let GTEMDatNll = Bundle.main.path(forResource: "MOjiToGTEH", ofType: "plist"),
        let lGTENj = FileManager.default.contents(atPath: GTEMDatNll),
        let nertuset = try? PropertyListSerialization.propertyList(from: lGTENj, options: [], format: nil) as? [[String: String]]  else {
           


            _muddleToolGTEM += 0.87

            _BingToolGTEM +=  1.87

            _zhunreaToolGTEM = _zhunreaToolGTEM + _muddleToolGTEM + _BingToolGTEM
            let newrDagte = Array<Dictionary<String,String>>()
            if _agitatorValuesGTEM.randomElement() ?? 0 > 0 {
                return newrDagte
            }
            
            return newrDagte
            
        }
        return nertuset
    }
    private var _agitatorValuesGTEM: [CGFloat] = [12.5, 9.8, 15.3]
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        self.mojitoAcholeData.count
    }
    
    private var _muddleToolGTEM: CGFloat = 0.87
   
    @IBOutlet weak var homewrserDataView: UICollectionView!
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
       
        return CGSize(width: self.view.frame.width - 16, height: 210 )
        
    }
    private var _BingToolGTEM: CGFloat = 1.87
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
       
        29
    }
    private var _zhunreaToolGTEM: CGFloat = 2.87
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        
       
        29
    }
    
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let vcGtua = GTEMStepDetaillMoJito.init(aginestGTEm: nil, ddleToolGTEM: nil, tationTimerGTEM: nil, detgiolGTEA: mojitoAcholeData[indexPath.row])
        self.navigationController?.pushViewController(vcGtua, animated: true)
        
    }
   
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
     
        let gtehCell = collectionView.dequeueReusableCell(withReuseIdentifier:"GTEMPopularliasCellID", for: indexPath) as! GTEMPopularliasCell
        gtehCell.acholeNameGTEH.text = mojitoAcholeData[indexPath.row]["AochleName"]
        gtehCell.acholeMaterGTEH.text = mojitoAcholeData[indexPath.row]["Aochlematerial"]
        gtehCell.acholeGTEHimg.image =  UIImage(named: mojitoAcholeData[indexPath.row]["AochlePicture"] ?? "")
        return gtehCell
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        let topcell = UINib(nibName: "GTEMPopularliasCell", bundle: nil)
        homewrserDataView.register(topcell, forCellWithReuseIdentifier: "GTEMPopularliasCellID")
        _agitatorValuesGTEM.append(_BingToolGTEM)
        _agitatorValuesGTEM.append(_muddleToolGTEM)
        _agitatorValuesGTEM.append(_zhunreaToolGTEM)

       
        homewrserDataView.delegate = self
        if _agitatorValuesGTEM.count < 1 {
            _fermentationTimerGTEM = Timer.init()
        }


       
        homewrserDataView.dataSource = self
        if _agitatorValuesGTEM.isEmpty {
            return
        }
        _muddleToolGTEM += 0.87

      
        homewrserDataView.showsVerticalScrollIndicator = false
        _BingToolGTEM +=  1.87

        _zhunreaToolGTEM = _zhunreaToolGTEM + _muddleToolGTEM + _BingToolGTEM

        if _agitatorValuesGTEM.randomElement() ?? 0 > 0 {
            homewrserDataView.contentInset = UIEdgeInsets(top: 0, left: 0, bottom: 120, right: 0)
            
        }
        
        homewrserDataView.isHidden = true
        SVProgressHUD.show()
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1, execute: DispatchWorkItem(block: {
            var aGTEm:Float = 10
            var bGTEM:Float  = 20
            var cGTEM:Float  = aGTEm + bGTEM
          
            SVProgressHUD.dismiss()
            cGTEM += 12
            var dGTEM:Float  = aGTEm*3 - bGTEM


            if (cGTEM >=  aGTEm + bGTEM) && dGTEM > 0{
                self.homewrserDataView.isHidden = false
            }
            
        }))
       
    }


    @IBAction func navibakerinhGTEM(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }

}
