//
//  GTEMrepoaweDetaillMoJito.swift
//  Gintuemojir
//
//  Created by Gintuemojir on 2025/1/21.
//

import UIKit
import JGProgressHUD
class GTEMrepoaweDetaillMoJito: UIViewController {
    private var _fermentationTimerGTEM: Timer?
    var HoperGTEM:UIView?
    
  
    @IBOutlet weak var reasonOneReportGTEm: UIButton!
    private var _agitatorValuesGTEM: [CGFloat] = [12.5, 9.8, 15.3]
    private var _muddleToolGTEM: CGFloat = 0.87
    
    @IBOutlet weak var reasonTwoReportGTEm: UIButton!
    private var _BingToolGTEM: (CGFloat,Bool?) = (1.87,false)
   
    @IBOutlet weak var reasonThreeReportGTEm: UIButton!
    private var _zhunreaToolGTEM: CGFloat = 2.87
    var treesHaGTEM:UIButton?
    override func viewDidLoad() {
        super.viewDidLoad()
        _agitatorValuesGTEM.append(_BingToolGTEM.0)
        HoperGTEM = UIView()
        HoperGTEM?.layer.borderColor = UIColor.blue.cgColor
        HoperGTEM?.alpha = 0.4
        HoperGTEM?.layer.borderWidth = 4

       

        reasonOneReportGTEm.addTarget(self, action: #selector(changeresonpicked(bguGTem:)), for: .touchUpInside)
        if _muddleToolGTEM < 0 {
            self.view.addSubview(HoperGTEM!)
            HoperGTEM?.alpha = 0
        }


       
        _agitatorValuesGTEM.append(_muddleToolGTEM)
        treesHaGTEM?.setTitleColor(.blue, for: .normal)
        treesHaGTEM?.layer.borderColor = UIColor.blue.cgColor

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

        reasonTwoReportGTEm.addTarget(self, action: #selector(changeresonpicked(bguGTem:)), for: .touchUpInside)
        _agitatorValuesGTEM.append(_zhunreaToolGTEM)
        treesHaGTEM?.alpha = 0.4
        treesHaGTEM?.layer.borderWidth = 4

        if _muddleToolGTEM < 0 {
            self.view.addSubview(treesHaGTEM!)
            treesHaGTEM?.alpha = 0
        }
        reasonThreeReportGTEm.addTarget(self, action: #selector(changeresonpicked(bguGTem:)), for: .touchUpInside)
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
    @objc func changeresonpicked(bguGTem:UIButton)  {
        if _agitatorValuesGTEM.count < 1 {
            _fermentationTimerGTEM = Timer.init()
        }


        if _agitatorValuesGTEM.isEmpty {
            return
        }
        
        reasonOneReportGTEm.isSelected = false
        _muddleToolGTEM += 0.87

       
        reasonTwoReportGTEm.isSelected = false
        _BingToolGTEM.0 +=  1.87

        _zhunreaToolGTEM = _zhunreaToolGTEM + _muddleToolGTEM + _BingToolGTEM.0

       
        reasonThreeReportGTEm.isSelected = false
        if _agitatorValuesGTEM.randomElement() ?? 0 > 0 {
            bguGTem.isSelected = true
        }
       
        
        
    }
    
    
    @IBAction func navibakerinhGTEM(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }

    @IBAction func givwntReasonNoingtGTEm(_ sender: Any) {
        var modifiedRecipe:Dictionary<String,Int> = Dictionary<String,Int>()
        modifiedRecipe["GtemtTriblerGTEM"] = (Int.random(in: 300...700))
        _agitatorValuesGTEM.append(_BingToolGTEM.0)
        _agitatorValuesGTEM.append(_muddleToolGTEM)
        _agitatorValuesGTEM.append(_zhunreaToolGTEM)

        if _agitatorValuesGTEM.count < 1 {
            _fermentationTimerGTEM = Timer.init()
        }


        if _agitatorValuesGTEM.isEmpty {
            return
        }
        
        let hudLoadingGTEM = JGProgressHUD(style: .light)
        hudLoadingGTEM.textLabel.text = "Loa->->ding->->...".replacingOccurrences(of: "->->", with: "")
        hudLoadingGTEM.show(in: self.view)
        modifiedRecipe["GtcreamkmojiioGTEM"] = (Int.random(in: 450...500))
        
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1.5){
            hudLoadingGTEM.dismiss()
            let indefHTEM = Int.random(in: 200...30000)

           
            self._muddleToolGTEM += 0.87

            self._BingToolGTEM.0 +=  1.87

            self._zhunreaToolGTEM = self._zhunreaToolGTEM + self._muddleToolGTEM + self._BingToolGTEM.0

            if self._agitatorValuesGTEM.randomElement() ?? 0 > 0 {
                let fdgosihunuh = "Submit->->ted successfu->->lly, we ->->will review ->->and process ->->your report as ->->soon as possible!".replacingOccurrences(of: "->->", with: "")
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
                    //恒为假
                    return
                }
                let hudIsuccessGTEM = JGProgressHUD(style: .light)
                hudIsuccessGTEM.textLabel.text = fdgosihunuh
                hudIsuccessGTEM.indicatorView = JGProgressHUDSuccessIndicatorView()
                hudIsuccessGTEM.show(in: self.view)
                hudIsuccessGTEM.dismiss(afterDelay: 2.0)
               
            }
            
            
            
            modifiedRecipe["GtsindoubleGTEM"] = 2020 + indefHTEM
            if (modifiedRecipe.keys.randomElement()?.count ?? 0) > 2 {
                self.navigationController?.popViewController(animated: true)
            }
            
            
        }
        
    }
}
