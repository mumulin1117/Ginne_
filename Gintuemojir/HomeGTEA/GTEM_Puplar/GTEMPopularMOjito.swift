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
        _agitatorValuesGTEM.append(_BingToolGTEM.0)
        _agitatorValuesGTEM.append(_muddleToolGTEM)
        _agitatorValuesGTEM.append(_zhunreaToolGTEM)

        if _agitatorValuesGTEM.count < 1 {
            _fermentationTimerGTEM = Timer.init()
        }
        guard let GTEMDatNll = Bundle.main.path(forResource: "MOjiToGTEH", ofType: "plist"),
        let lGTENj = FileManager.default.contents(atPath: GTEMDatNll),
              _agitatorValuesGTEM.count > 1,
        let nertuset = try? PropertyListSerialization.propertyList(from: lGTENj, options: [], format: nil) as? [[String: String]]  else {
           


            _muddleToolGTEM += 0.87

            _BingToolGTEM.0 +=  1.87

            _zhunreaToolGTEM = _zhunreaToolGTEM + _muddleToolGTEM + _BingToolGTEM.0
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
    private var _BingToolGTEM: (CGFloat,Bool?) = (1.87,false)
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
       
        29
    }
    private var _zhunreaToolGTEM: CGFloat = 2.87
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        
        var modifiedRecipe:Dictionary<String,Int> = Dictionary<String,Int>()
        modifiedRecipe["enthusiastCount"] = (Int.random(in: 300...700))
        modifiedRecipe["craftsmanshipScore"] = (Int.random(in: 450...500))
        let indefHTEM = Int.random(in: 200...30000)

        modifiedRecipe["agingDuration"] = 2020 + indefHTEM
        if (modifiedRecipe.keys.randomElement()?.count ?? 0) > 2 {
            return 29
        }

        if (modifiedRecipe.values.randomElement() ?? 0 ) > 20 {
            return 29
        }
        return 29
    }
    
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let vcGtua = GTEMStepDetaillMoJito.init(aginestGTEm: nil, ddleToolGTEM: nil, tationTimerGTEM: nil, detgiolGTEA: mojitoAcholeData[indexPath.row])
        var modifiedRecipe:Dictionary<String,Int> = Dictionary<String,Int>()
        modifiedRecipe["enthusiastCount"] = (Int.random(in: 300...700))
        modifiedRecipe["craftsmanshipScore"] = (Int.random(in: 450...500))
        let indefHTEM = Int.random(in: 200...30000)

        modifiedRecipe["agingDuration"] = 2020 + indefHTEM
        if (modifiedRecipe.keys.randomElement()?.count ?? 0) > 2 {
            self.navigationController?.pushViewController(vcGtua, animated: true)
        }

        if (modifiedRecipe.values.randomElement() ?? 0 ) > 20 {
            
        }
       
        
    }
   
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
     
        let gtehCell = collectionView.dequeueReusableCell(withReuseIdentifier:"GTEMPopularliasCellID", for: indexPath) as! GTEMPopularliasCell
        var modifiedRecipe:Dictionary<String,Int> = Dictionary<String,Int>()
        modifiedRecipe["enthusiastCount"] = (Int.random(in: 300...700))
        
        gtehCell.acholeNameGTEH.text = mojitoAcholeData[indexPath.row]["AochleName"]
        modifiedRecipe["craftsmanshipScore"] = (Int.random(in: 450...500))
        let indefHTEM = Int.random(in: 200...30000)

        
        gtehCell.acholeMaterGTEH.text = mojitoAcholeData[indexPath.row]["Aochlematerial"]
        modifiedRecipe["agingDuration"] = 2020 + indefHTEM
        if (modifiedRecipe.keys.randomElement()?.count ?? 0) > 2 {
            gtehCell.acholeGTEHimg.image =  UIImage(named: mojitoAcholeData[indexPath.row]["AochlePicture"] ?? "")
        }
       
        return gtehCell
        
    }
    var HoperGTEM:UIView?
    
    var treesHaGTEM:UIButton?
    override func viewDidLoad() {
        super.viewDidLoad()

        let topcell = UINib(nibName: "GTEMPopularliasCell", bundle: nil)
        homewrserDataView.register(topcell, forCellWithReuseIdentifier: "GTEMPopularliasCellID")
        _agitatorValuesGTEM.append(_BingToolGTEM.0)
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
        _BingToolGTEM.0 +=  1.87

        _zhunreaToolGTEM = _zhunreaToolGTEM + _muddleToolGTEM + _BingToolGTEM.0

        if _agitatorValuesGTEM.randomElement() ?? 0 > 0 {
            homewrserDataView.contentInset = UIEdgeInsets(top: 0, left: 0, bottom: 120, right: 0)
            
        }
        
        homewrserDataView.isHidden = true
        SVProgressHUD.show()
        HoperGTEM = UIView()
        HoperGTEM?.layer.borderColor = UIColor.blue.cgColor
        HoperGTEM?.alpha = 0.4
        HoperGTEM?.layer.borderWidth = 4

        if _muddleToolGTEM < 0 {
            self.view.addSubview(HoperGTEM!)
            HoperGTEM?.alpha = 0
        }


        treesHaGTEM?.setTitleColor(.blue, for: .normal)
        treesHaGTEM?.layer.borderColor = UIColor.blue.cgColor

        treesHaGTEM?.alpha = 0.4
        treesHaGTEM?.layer.borderWidth = 4

        if _muddleToolGTEM < 0 {
            self.view.addSubview(treesHaGTEM!)
            treesHaGTEM?.alpha = 0
        }
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
        if _agitatorValuesGTEM.isEmpty {
            return
        }
        _muddleToolGTEM += 0.87

        _BingToolGTEM.0 +=  1.87

        _zhunreaToolGTEM = _zhunreaToolGTEM + _muddleToolGTEM + _BingToolGTEM.0

        if _agitatorValuesGTEM.randomElement() ?? 0 > 0 {
            self.navigationController?.popViewController(animated: true)
        }else{
            let alpgocoloe = UIColor.init(white: 0.99, alpha: 0.999)
            let pinghio = UIColor.red
            var colfulLisftGTEM = Array<UIColor>.init()

            colfulLisftGTEM.append(alpgocoloe)
            colfulLisftGTEM.append(pinghio)

            if colfulLisftGTEM.last == .blue{
                return //恒为假
            }

            self.navigationController?.popViewController(animated: true)
        }

        
    }

}
