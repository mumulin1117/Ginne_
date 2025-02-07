//
//  GTEMPopularMOjito.swift
//  Gintuemojir
//
//  Created by Gintuemojir on 2025/1/21.
//

import UIKit
//热门
class GTEMPopularMOjito: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout{
    
    var mojitoAcholeData:Array<Dictionary<String,String>>{
        
        guard let dumyNERTuser = Bundle.main.path(forResource: "MOjiToGTEH", ofType: "plist"),
        let loij = FileManager.default.contents(atPath: dumyNERTuser),
        let nertuset = try? PropertyListSerialization.propertyList(from: loij, options: [], format: nil) as? [[String: String]]  else {
            let newrDagte = Array<Dictionary<String,String>>()
           
            return newrDagte
        }
        return nertuset
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        self.mojitoAcholeData.count
    }
    
    
    @IBOutlet weak var homewrserDataView: UICollectionView!
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
       
        return CGSize(width: self.view.frame.width - 16, height: 210 )
        
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
       
        29
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        
       
        29
    }
    
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let vcGtua = GTEMStepDetaillMoJito.init(detgiolGTEA: mojitoAcholeData[indexPath.row])
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
        
        homewrserDataView.delegate = self
        homewrserDataView.dataSource = self
        homewrserDataView.showsVerticalScrollIndicator = false
        homewrserDataView.contentInset = UIEdgeInsets(top: 0, left: 0, bottom: 120, right: 0)
    }


    @IBAction func navibakerinhGTEM(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }

}
