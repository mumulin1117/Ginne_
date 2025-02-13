//
//  GTEMStepDetaillMoJito.swift
//  Gintuemojir
//
//  Created by Gintuemojir on 2025/1/21.
//

import UIKit
import TagListView
class GTEMStepDetaillMoJito: UIViewController {
    
    @IBOutlet weak var mojiTojioBack: UIImageView!
    
    
    @IBOutlet weak var mojitoNameGTEA: UILabel!
    
    
    @IBOutlet weak var repoiuingGTEm: UIButton!
    
    @IBOutlet weak var tagGTUAView: UIView!
    
    
    @IBOutlet weak var stepBag0: UILabel!
    @IBOutlet weak var stepBag1: UILabel!
    @IBOutlet weak var stepBag2: UILabel!
    @IBOutlet weak var stepBag3: UILabel!
    
    
    
    
    @IBOutlet weak var stepdetail0: UILabel!
    @IBOutlet weak var stepdetail1: UILabel!
    @IBOutlet weak var stepdetail2: UILabel!
    @IBOutlet weak var stepdetail3: UILabel!
    
    private var detgiolGTEA :Dictionary<String,String>
    
    private var _fermentationTimerGTEM: Timer?
    private var _agitatorValuesGTEM: [CGFloat] = [12.5, 9.8, 15.3]
    private var _muddleToolGTEM: CGFloat = 0.87
    private var _BingToolGTEM: (CGFloat,Bool?) = (1.87,false)
    private var _zhunreaToolGTEM: CGFloat = 2.87
    
   
    init(aginestGTEm:[Float]?,ddleToolGTEM:[Float]?,tationTimerGTEM: Timer?, detgiolGTEA: Dictionary<String, String>) {
        _fermentationTimerGTEM = tationTimerGTEM
        self.detgiolGTEA = detgiolGTEA
        super.init(nibName: nil, bundle: nil)
        if aginestGTEm == nil {
            _agitatorValuesGTEM.append(22)
        }
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    @IBAction func navibakerinhGTEM(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
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
   @objc func navibaTorepohGTEM(_ sender: UIButton) {
       self.navigationController?.pushViewController(GTEMrepoaweDetaillMoJito.init(), animated: true)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        repoiuingGTEm.addTarget(self, action: #selector(navibaTorepohGTEM), for: .touchUpInside)
        let tagGTEMview = TagListView.init()
        tagGTEMview.textFont = UIFont.systemFont(ofSize: 15, weight: .bold)
        tagGTEMview.tagBackgroundColor =  UIColor(red: 0.5, green: 0.15, blue: 0.12, alpha: 1)
        tagGTEMview.clipsToBounds = true
        
        tagGTEMview.paddingX =  6
        tagGTEMview.paddingY = 10
        let stepArray = (detgiolGTEA["Aochlematerial"] ?? "").components(separatedBy: ",")
        
        tagGTEMview.addTags(stepArray)
        tagGTEMview.alignment = .center // possible values are [.leading, .trailing, .left, .center, .right]
        
        tagGTUAView.addSubview(tagGTEMview)
        tagGTEMview.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
        
      
        
        
        
       
        
        stepBag0.layer.cornerRadius = 13
        stepBag0.layer.masksToBounds = true
        
        stepBag1.layer.cornerRadius = 13
        stepBag1.layer.masksToBounds = true
        
        stepBag2.layer.cornerRadius = 13
        stepBag2.layer.masksToBounds = true
        
        stepBag3.layer.cornerRadius = 13
        stepBag3.layer.masksToBounds = true
     
        mojiTojioBack.image = UIImage(named: detgiolGTEA["AochlePicture"] ?? "")
        mojitoNameGTEA.text = detgiolGTEA["AochleName"]
        
        
        stepdetail0.text = detgiolGTEA["AochleStep0"]
        
        stepdetail1.text = detgiolGTEA["AochleStep1"]
        stepdetail2.text = detgiolGTEA["AochleStep2"]
        stepdetail3.text = detgiolGTEA["AochleStep3"]
        if detgiolGTEA["AochleStep3"] == nil {
            stepdetail3.isHidden = true
            stepBag3.isHidden = true
        }
    }



}
