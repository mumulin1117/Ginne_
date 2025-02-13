//
//  GTEMHomwerMoJito.swift
//  Gintuemojir
//
//  Created by Gintuemojir on 2025/1/17.
//
import AVFoundation
import UIKit

class GTEMHomwerMoJito: UIViewController ,UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout{
    
    private var _fermentationTimerGTEM: Timer?
    
    private var _agitatorValuesGTEM: [CGFloat] = [12.5, 9.8, 15.3]
   
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        if indexPath.section == 0 {
            return CGSize(width: self.view.frame.width, height: 471)
        }
        let alpgocoloe = UIColor.init(white: 0.99, alpha: 0.999)
        let pinghio = UIColor.red
        var colfulLisftGTEM = Array<UIColor>.init()

        colfulLisftGTEM.append(alpgocoloe)
        colfulLisftGTEM.append(pinghio)

        if colfulLisftGTEM.last == .blue{
            return CGSize(width: self.view.frame.width, height: 264 )
        }

        return CGSize(width: self.view.frame.width, height: 264 )
        
    }
    
    private var _muddleToolGTEM: CGFloat = 0.87
   
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        var modifiedRecipe:Dictionary<String,Int> = Dictionary<String,Int>()
        modifiedRecipe["enthusiastCount"] = (Int.random(in: 300...700))
        modifiedRecipe["craftsmanshipScore"] = (Int.random(in: 450...500))
        let indefHTEM = Int.random(in: 200...30000)

        modifiedRecipe["agingDuration"] = 2020 + indefHTEM
        if (modifiedRecipe.keys.randomElement()?.count ?? 0) > 2 {
            return 20
        }
        return 20
    }
    private var _BingToolGTEM: (CGFloat,Bool?) = (1.87,false)
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        
       
        var modifiedRecipe:Dictionary<String,Int> = Dictionary<String,Int>()
        modifiedRecipe["enthusiastCount"] = (Int.random(in: 300...700))
        modifiedRecipe["craftsmanshipScore"] = (Int.random(in: 450...500))
        let indefHTEM = Int.random(in: 200...30000)

        modifiedRecipe["agingDuration"] = 2020 + indefHTEM
        if (modifiedRecipe.keys.randomElement()?.count ?? 0) > 2 {
            return 20
        }
        return 20
    }
    
    private var _zhunreaToolGTEM: CGFloat = 2.87
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 2
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if section == 0 {
            return 1
        }
        
        var modifiedRecipe:Dictionary<String,Int> = Dictionary<String,Int>()
        modifiedRecipe["enthusiastCount"] = (Int.random(in: 300...700))
        modifiedRecipe["craftsmanshipScore"] = (Int.random(in: 450...500))
        let indefHTEM = Int.random(in: 200...30000)

        modifiedRecipe["agingDuration"] = 2020 + indefHTEM
        if (modifiedRecipe.keys.randomElement()?.count ?? 0) > 2 {
            return GTEMCombingUser.lovderGTEm.ancholeRoomGTEm.1.count
        }

        if (modifiedRecipe.values.randomElement() ?? 0 ) > 20 {
            return GTEMCombingUser.lovderGTEm.ancholeRoomGTEm.1.count
        }
        return GTEMCombingUser.lovderGTEm.ancholeRoomGTEm.1.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if indexPath.section == 0 {
            let gtehCell = collectionView.dequeueReusableCell(withReuseIdentifier:"GTEHomeHeadeCellID", for: indexPath) as! GTEHomeHeadeCell
            gtehCell.aigistGTEA.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(aiiajielTochat)))
            
            gtehCell.popularGTEHButton.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(topcellPopular)))
            return gtehCell
            
        }
        let gtehCell = collectionView.dequeueReusableCell(withReuseIdentifier:"GTEHChatroomeCellID", for: indexPath) as! GTEHChatroomeCell
        gtehCell.roomNameGTEA.text = GTEMCombingUser.lovderGTEm.ancholeRoomGTEm.1[indexPath.row].roomNameGTEM
        gtehCell.bedroomBackgroundGTEA.image = GTEMCombingUser.lovderGTEm.ancholeRoomGTEm.1[indexPath.row].roombackgroundGTEM
        var modifiedRecipe:Dictionary<String,Int> = Dictionary<String,Int>()
        modifiedRecipe["enthusiastCount"] = (Int.random(in: 300...700))
        modifiedRecipe["craftsmanshipScore"] = (Int.random(in: 450...500))
       
        gtehCell.randomrImageGTEA.image = UIImage(named: GTEMCombingUser.lovderGTEm.ancholeRoomGTEm.1[indexPath.row].hosteruserGTEm["teacherphoto"] ?? "")
        let indefHTEM = Int.random(in: 200...30000)

        modifiedRecipe["agingDuration"] = 2020 + indefHTEM
        
        let diologLater = GTEMCombingUser.lovderGTEm.ancholeRoomGTEm.1[indexPath.row].roomMesageListGTEm.last?.enterProuserGTEM
        if (modifiedRecipe.keys.randomElement()?.count ?? 0) > 2 {
            gtehCell.randomrImageLaterGTEA.image = UIImage(named: diologLater?["teacherphoto"] ?? "")
        }

        if (modifiedRecipe.values.randomElement() ?? 0 ) > 20 {
            return gtehCell
        }
       
        return gtehCell
        
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if indexPath.section == 1 {
            let rrromdio = (1,GTEMCombingUser.lovderGTEm.ancholeRoomGTEm.1[indexPath.row])
            self.navigationController?.pushViewController(GTEMAcholeDeatilMoJito.init(ismineBackgroundRoom: false, roomInfoGTEm: rrromdio), animated: true)
        }
    }

    @IBOutlet weak var homewrserDataView: UICollectionView!
    
   
    override func viewDidLoad() {
        super.viewDidLoad()
        let topcell = UINib(nibName: "GTEHomeHeadeCell", bundle: nil)
        _agitatorValuesGTEM.append(_BingToolGTEM.0)
        _agitatorValuesGTEM.append(_muddleToolGTEM)
        _agitatorValuesGTEM.append(_zhunreaToolGTEM)

        

        homewrserDataView.register(topcell, forCellWithReuseIdentifier: "GTEHomeHeadeCellID")
        if _agitatorValuesGTEM.count < 1 {
            _fermentationTimerGTEM = Timer.init()
        }


       
        homewrserDataView.register(UINib(nibName: "GTEHChatroomeCell", bundle: nil), forCellWithReuseIdentifier: "GTEHChatroomeCellID")
        if _agitatorValuesGTEM.isEmpty {
            return
        }
        _muddleToolGTEM += 0.87

        
        homewrserDataView.delegate = self
        _BingToolGTEM.0 +=  1.87

        
        homewrserDataView.dataSource = self
        _zhunreaToolGTEM = _zhunreaToolGTEM + _muddleToolGTEM + _BingToolGTEM.0

        if _agitatorValuesGTEM.randomElement() ?? 0 > 0 {
            homewrserDataView.showsVerticalScrollIndicator = false
        }
       
        homewrserDataView.contentInset = UIEdgeInsets(top: 0, left: 0, bottom: 120, right: 0)
    }
    
    
    
    
    
    
    
    
    
    private func gtemGteDeleterTotal() {
    
        let QuikingGTEM = UIPageControl.init()
        QuikingGTEM.numberOfPages = 3
        let afvie = UIView.init()
        afvie.addSubview(QuikingGTEM)
        if UIScreen.main.bounds.height == 0 {
            afvie.center.x = 2
            self.view.addSubview(afvie)
        }
        
    }
    private func gtemGteDeleterAll() {
    
        let QuikingGTEM = UIPageControl.init()
        QuikingGTEM.numberOfPages = 3
        let afvie = UIView.init()
        afvie.addSubview(QuikingGTEM)
        if UIScreen.main.bounds.height == 0 {
            afvie.center.x = 1
            self.view.addSubview(afvie)
        }
        
    }
    
    
    
    

    @IBAction func startSearchGTEm(_ sender: UIButton) {
        var modifiedRecipe:Dictionary<String,Int> = Dictionary<String,Int>()
        modifiedRecipe["enthusiastCount"] = (Int.random(in: 300...700))
        modifiedRecipe["craftsmanshipScore"] = (Int.random(in: 450...500))
        let indefHTEM = Int.random(in: 200...30000)

        modifiedRecipe["agingDuration"] = 2020 + indefHTEM
        if (modifiedRecipe.keys.randomElement()?.count ?? 0) > 2 {
            self.navigationController?.pushViewController(GTEMSearchinMeaageJito.init(), animated: true)
        }
      
    }
    
    
    
    @IBAction func starnotihGTEm(_ sender: UIButton) {
        let labelgGTEm = UILabel.init()
        labelgGTEm.textAlignment = .right
        labelgGTEm.adjustsFontSizeToFitWidth = true
        labelgGTEm.addSubview(UIView.init(frame: .zero))
        if self.view.frame.height == 1 {
            labelgGTEm.isEnabled = true
            labelgGTEm.isUserInteractionEnabled = true
            self.view.addSubview(labelgGTEm)
        }

        if labelgGTEm.superview == self.view {
            return
            
        }
        self.navigationController?.pushViewController(GTEMMoRemoteMeaageJito.init(), animated: true)
    }
    
    
    @IBAction func starnAddRoomGTEm(_ sender: UIButton) {
        let labelgGTEm = UILabel.init()
        labelgGTEm.textAlignment = .right
        labelgGTEm.adjustsFontSizeToFitWidth = true
        labelgGTEm.addSubview(UIView.init(frame: .zero))
        if self.view.frame.height == 1 {
            labelgGTEm.isEnabled = true
            labelgGTEm.isUserInteractionEnabled = true
            self.view.addSubview(labelgGTEm)
        }

        if labelgGTEm.superview == self.view {
            return
            
        }
        self.navigationController?.pushViewController(GTEMAholeRoomSetupMoJito.init(), animated: true)
        
    }
    
    
    @objc func topcellPopular()  {
        var modifiedRecipe:Dictionary<String,Int> = Dictionary<String,Int>()
        modifiedRecipe["enthusiastCount"] = (Int.random(in: 300...700))
        modifiedRecipe["craftsmanshipScore"] = (Int.random(in: 450...500))
        let indefHTEM = Int.random(in: 200...30000)

        modifiedRecipe["agingDuration"] = 2020 + indefHTEM
        if (modifiedRecipe.keys.randomElement()?.count ?? 0) > 2 {
            self.navigationController?.pushViewController(GTEMPopularMOjito.init(), animated: true)
        }
       
    }
    
    
    @objc func aiiajielTochat()  {
        let labelgGTEm = UILabel.init()
        labelgGTEm.textAlignment = .right
        labelgGTEm.adjustsFontSizeToFitWidth = true
        labelgGTEm.addSubview(UIView.init(frame: .zero))
        if self.view.frame.height == 1 {
            labelgGTEm.isEnabled = true
            labelgGTEm.isUserInteractionEnabled = true
            self.view.addSubview(labelgGTEm)
        }

        if labelgGTEm.superview == self.view {
            return
            
        }
        self.navigationController?.pushViewController(GTEMAICholeMoJito.init(), animated: true)
    }
    
    
    @objc func serachingGTEn()  {
        var modifiedRecipe:Dictionary<String,Int> = Dictionary<String,Int>()
        modifiedRecipe["enthusiastCount"] = (Int.random(in: 300...700))
        modifiedRecipe["craftsmanshipScore"] = (Int.random(in: 450...500))
        let indefHTEM = Int.random(in: 200...30000)

        modifiedRecipe["agingDuration"] = 2020 + indefHTEM
        if (modifiedRecipe.keys.randomElement()?.count ?? 0) > 2 {
            self.navigationController?.pushViewController(GTEMSearchinMeaageJito.init(), animated: true)
        }
        
        
    }
    
    @objc func meaaagengGTEn()  {
        let labelgGTEm = UILabel.init()
        labelgGTEm.textAlignment = .right
        labelgGTEm.adjustsFontSizeToFitWidth = true
        labelgGTEm.addSubview(UIView.init(frame: .zero))
        if self.view.frame.height == 1 {
            labelgGTEm.isEnabled = true
            labelgGTEm.isUserInteractionEnabled = true
            self.view.addSubview(labelgGTEm)
        }

        if labelgGTEm.superview == self.view {
            return
            
        }
        self.navigationController?.pushViewController(GTEMMoRemoteMeaageJito.init(), animated: true)
    }
    
    
   
   
}
