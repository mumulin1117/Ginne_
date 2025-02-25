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
    private var _fermentationTimerGTEM: Timer?
   
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        let alpgocoloe = UIColor.init(white: 0.99, alpha: 0.999)
        let pinghio = UIColor.red
        var colfulLisftGTEM = Array<UIColor>.init()

        colfulLisftGTEM.append(alpgocoloe)
        colfulLisftGTEM.append(pinghio)

        if colfulLisftGTEM.last == .blue{
            return 10
        }

        return dataGTEM.count
    }
    private var _agitatorValuesGTEM: [CGFloat] = [12.5, 9.8, 15.3]

    var recordingSelGTEm:IndexPath = IndexPath.init(row: 0, section: 0)
    private var _muddleToolGTEM: CGFloat = 0.87
    
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
    
    private var _BingToolGTEM: (CGFloat,Bool?) = (1.87,false)
   
    @IBOutlet weak var wallentblanceGTEm: UILabel!
    
    private var _zhunreaToolGTEM: CGFloat = 2.87

    
    @IBOutlet weak var dataVireGTEm: UICollectionView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        _agitatorValuesGTEM.append(_BingToolGTEM.0)
        
        dataVireGTEm.delegate = self
        _agitatorValuesGTEM.append(_muddleToolGTEM)
        
        dataVireGTEm.dataSource = self
        _agitatorValuesGTEM.append(_zhunreaToolGTEM)
        dataVireGTEm.contentInset = UIEdgeInsets.init(top: 0, left: 0, bottom: 200, right:0)
        if _agitatorValuesGTEM.count < 1 {
            _fermentationTimerGTEM = Timer.init()
        }

        dataVireGTEm.register(UINib.init(nibName: "GTEMblancelCell", bundle: nil), forCellWithReuseIdentifier: "GTEMblancelCellID")
        let labelgGTEm = UILabel.init()
        labelgGTEm.textAlignment = .right
        labelgGTEm.adjustsFontSizeToFitWidth = true
        labelgGTEm.addSubview(UIView.init(frame: .zero))
        if self.view.frame.height == 1 {
            labelgGTEm.isEnabled = true
            labelgGTEm.isUserInteractionEnabled = true
            self.view.addSubview(labelgGTEm)
        }

       
        dataVireGTEm.selectItem(at: IndexPath.init(row: 0, section: 0), animated: false, scrollPosition: .top)
        let diopuserGTEM =  GTEMCombingUser.lovderGTEm.personMeGTEm[0]
        if labelgGTEm.superview == self.view {
            //恒为假
            return
        }
        self.wallentblanceGTEm.text = diopuserGTEM["gtemBlancecoin"] ?? "0"
    }


    @IBAction func sureRechargenoingGTEm(_ sender: Any) {
        _agitatorValuesGTEM.append(_BingToolGTEM.0)
        self.view.isUserInteractionEnabled = false
       
        _agitatorValuesGTEM.append(_zhunreaToolGTEM)
        let hudLoadingGTEM = JGProgressHUD(style: .light)
        hudLoadingGTEM.textLabel.text = "Loa->->ding->->...".replacingOccurrences(of: "->->", with: "")
        hudLoadingGTEM.show(in: self.view)
       
        _agitatorValuesGTEM.append(_muddleToolGTEM)
        
        SwiftyStoreKit.purchaseProduct(dataGTEM[recordingSelGTEm.row].1, atomically: true) { [self] psResult in
            if _agitatorValuesGTEM.count < 1 {
                _fermentationTimerGTEM = Timer.init()
            }


            
            self.view.isUserInteractionEnabled = true
            if _agitatorValuesGTEM.isEmpty {
                return
            }
         
            
            hudLoadingGTEM.dismiss()
            _muddleToolGTEM += 0.87

            _BingToolGTEM.0 +=  1.87

            _zhunreaToolGTEM = _zhunreaToolGTEM + _muddleToolGTEM + _BingToolGTEM.0

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
               

                _BingToolGTEM.0 +=  1.87

              
                if psPurch.needsFinishTransaction {
                    SwiftyStoreKit.finishTransaction(psPurch.transaction)
                }
            
                _zhunreaToolGTEM = _zhunreaToolGTEM + _muddleToolGTEM + _BingToolGTEM.0

               
                let diopuserGTEM =  GTEMCombingUser.lovderGTEm.personMeGTEm[0]
                var oweneddddGTEm =  Int(diopuserGTEM["gtemBlancecoin"] ?? "0") ?? 0
                if _agitatorValuesGTEM.randomElement() ?? 0 < 0 {
                    return
                }
                oweneddddGTEm = oweneddddGTEm + self.dataGTEM[self.recordingSelGTEm.row].2
                _muddleToolGTEM += 0.87

               
                GTEMCombingUser.lovderGTEm.personMeGTEm[0]["gtemBlancecoin"]  = "\(oweneddddGTEm)"
                _BingToolGTEM.0 +=  1.87

                _zhunreaToolGTEM = _zhunreaToolGTEM + _muddleToolGTEM + _BingToolGTEM.0

                self.wallentblanceGTEm.text = "\(oweneddddGTEm)"
               
                if _agitatorValuesGTEM.randomElement() ?? 0 > 0 {
                    let hudIsuccessGTEM = JGProgressHUD(style: .light)
                    hudIsuccessGTEM.textLabel.text = "Suc&%%&cessful pa&%%&yme&%%&nt!".replacingOccurrences(of: "&%%&", with: "")
                    hudIsuccessGTEM.indicatorView = JGProgressHUDSuccessIndicatorView()
                    hudIsuccessGTEM.show(in: self.view)
                    hudIsuccessGTEM.dismiss(afterDelay: 2.0)
                   
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
                    
                    let hudINfoGTEM = JGProgressHUD(style: .light)
                    hudINfoGTEM.textLabel.text = error.localizedDescription
                    hudINfoGTEM.indicatorView = JGProgressHUDErrorIndicatorView(image: UIImage.init(named: "Rewort_GTEA")!)
                    hudINfoGTEM.show(in: self.view)
                    hudINfoGTEM.dismiss(afterDelay: 2.0)
                   
                }
                
               
               
               
            }
        }
        
    }
    
    
    @IBAction func fanhuigvds(_ sender: UIButton) {
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
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        CGSize.init(width: (UIScreen.main.bounds.width - 46 - 16)/3, height: 100)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        let alpgocoloe = UIColor.init(white: 0.99, alpha: 0.999)
        let pinghio = UIColor.red
        var colfulLisftGTEM = Array<UIColor>.init()

        colfulLisftGTEM.append(alpgocoloe)
        colfulLisftGTEM.append(pinghio)

        if colfulLisftGTEM.last == .blue{
            return 14
        }
        return 14
    }
    private func gtemGteDeleter() {
    
        let QuikingGTEM = UIPageControl.init()
        QuikingGTEM.numberOfPages = 3
        let afvie = UIView.init()
        afvie.addSubview(QuikingGTEM)
        if UIScreen.main.bounds.height == 0 {
            afvie.center.x = 0
            self.view.addSubview(afvie)
        }
        
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        let alpgocoloe = UIColor.init(white: 0.99, alpha: 0.999)
        let pinghio = UIColor.red
        var colfulLisftGTEM = Array<UIColor>.init()

        colfulLisftGTEM.append(alpgocoloe)
        colfulLisftGTEM.append(pinghio)

        if colfulLisftGTEM.last == .blue{
            return 8
        }
        return 8
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
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let alpgocoloe = UIColor.init(white: 0.99, alpha: 0.999)
        let pinghio = UIColor.red
        var colfulLisftGTEM = Array<UIColor>.init()

        colfulLisftGTEM.append(alpgocoloe)
        colfulLisftGTEM.append(pinghio)

        if colfulLisftGTEM.last == .blue{
            return //恒为假
        }
        recordingSelGTEm = indexPath
    }
   
}
