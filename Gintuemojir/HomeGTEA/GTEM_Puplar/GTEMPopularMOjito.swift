//
//  GTEMPopularMOjito.swift
//  Gintuemojir
//
//  Created by Gintuemojir on 2025/1/21.
//

import UIKit
import JGProgressHUD
//热门
class GTEMPopularMOjito: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout{
    
    struct RecipeGTEM {
        var name: String
        var image: String?
    }
    
    var maxDisplayedRecipesGTEm = 20
    @IBOutlet weak var dihiGTEMback: UIImageView!
    
    @IBOutlet weak var sinhrGTEm: UIActivityIndicatorView!
    let noRecipesMessageGTEm = "No recipes available at the moment."
    
    @IBOutlet weak var beginkit: UIActivityIndicatorView!
    
    @IBOutlet weak var gutCustom: UINavigationBar!
    let recipeCellIdentifierGTEm = "GTEMPopularliasCellID"
    
    var selectedRecipeGTEm: RecipeGTEM?
    
    var mojitoAcholeData:Array<Dictionary<String,String>> = Array<Dictionary<String,String>>()
    var isLoadingGTEm: Bool = false
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        self.mojitoAcholeData.count
    }
    var currentPageGTEm: Int = 1
    
   
    @IBOutlet weak var homewrserDataView: UICollectionView!
    
    var totalRecipesCountGTEm: Int = 0
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
       
        return CGSize(width: self.view.frame.width - 16, height: 210 )
        
    }
    
    func didSelectRecipe(recipe: RecipeGTEM) {
           // Method to handle recipe selection
           selectedRecipeGTEm = recipe
           
      
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
       
        29
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
   
        return 29
    }
    
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let vcGtua = GTEMStepDetaillMoJito.init(aginestGTEm: nil, ddleToolGTEM: nil, tationTimerGTEM: nil, detgiolGTEA: mojitoAcholeData[indexPath.row])
        
        self.navigationController?.pushViewController(vcGtua, animated: true)
      
    }
   
   
    
    func mockFetchRecipesGTEm() -> [RecipeGTEM]{
        return [
            RecipeGTEM(name: "Mojito", image: "mojito.png"),
            RecipeGTEM(name: "Pina Colada", image: "pina_colada.png"),
            RecipeGTEM(name: "Cosmopolitan", image: "cosmopolitan.png")
                
        ]
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
     
        let gtehCell = collectionView.dequeueReusableCell(withReuseIdentifier:recipeCellIdentifierGTEm, for: indexPath) as! GTEMPopularliasCell
        
        gtehCell.acholeGTEHimg.image =  UIImage(named: mojitoAcholeData[indexPath.row]["AochlePicture"] ?? "")
        if self.view.isHidden == false {
            gtehCell.acholeNameGTEH.text = mojitoAcholeData[indexPath.row]["AochleName"]
          
        }
        
         

        
        gtehCell.acholeMaterGTEH.text = mojitoAcholeData[indexPath.row]["Aochlematerial"]
        
        
       
       
        return gtehCell
        
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        guard let GTEMDatNll = Bundle.main.path(forResource: "MOjiToGTEH", ofType: "plist"),
        let lGTENj = FileManager.default.contents(atPath: GTEMDatNll),
    
        let nertuset = try? PropertyListSerialization.propertyList(from: lGTENj, options: [], format: nil) as? [[String: String]]  else {
           
            self.navigationController?.popViewController(animated: true)
            return
            
        }
        
        
        mojitoAcholeData = nertuset
        
        let topcell = UINib(nibName: "GTEMPopularliasCell", bundle: nil)
       
        homewrserDataView.register(topcell, forCellWithReuseIdentifier: recipeCellIdentifierGTEm)
        
        
        
        setupTableGTEMView()
     
        
       
        let hudLoadingGTEM = JGProgressHUD(style: .light)
        hudLoadingGTEM.textLabel.text = "Loa&-%-%-&ding&-%-%-&...".replacingOccurrences(of: "&-%-%-&", with: "")
        homewrserDataView.isHidden = true
        hudLoadingGTEM.show(in: self.view)
        
        fetchPopularRecipesGTEm(hiddend: hudLoadingGTEM)
    }
    
    func fetchPopularRecipesGTEm(hiddend:JGProgressHUD) {
            // Method to fetch popular recipes from the server
            isLoadingGTEm = true
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1, execute: DispatchWorkItem(block: {
           
            hiddend.dismiss()
           
                
            self.homewrserDataView.isHidden = false
          
        }))
       
       
    }

    fileprivate  func setupTableGTEMView() {
        
        
         homewrserDataView.delegate = self
         


        
         homewrserDataView.dataSource = self
         
        mockFetchRecipesGTEm()

       
         homewrserDataView.showsVerticalScrollIndicator = false
         
         homewrserDataView.contentInset = UIEdgeInsets(top: 0, left: 0, bottom: 120, right: 0)
        
    }
    
    
    
    @IBAction func navibakerinhGTEM(_ sender: UIButton) {
        
        mockFetchRecipesGTEm()
            
            self.navigationController?.popViewController(animated: true)
     
        
    }

}
