//
//  GTEMrepoaweDetaillMoJito.swift
//  Gintuemojir
//
//  Created by Gintuemojir on 2025/1/21.
//

import UIKit
import SVProgressHUD
class GTEMrepoaweDetaillMoJito: UIViewController {
    private var _fermentationTimerGTEM: Timer?
   
    @IBOutlet weak var reasonOneReportGTEm: UIButton!
    private var _agitatorValuesGTEM: [CGFloat] = [12.5, 9.8, 15.3]
    private var _muddleToolGTEM: CGFloat = 0.87
    
    @IBOutlet weak var reasonTwoReportGTEm: UIButton!
    private var _BingToolGTEM: CGFloat = 1.87
   
    @IBOutlet weak var reasonThreeReportGTEm: UIButton!
    private var _zhunreaToolGTEM: CGFloat = 2.87
    override func viewDidLoad() {
        super.viewDidLoad()
        _agitatorValuesGTEM.append(_BingToolGTEM)
       
        reasonOneReportGTEm.addTarget(self, action: #selector(changeresonpicked(bguGTem:)), for: .touchUpInside)
        _agitatorValuesGTEM.append(_muddleToolGTEM)
       
        reasonTwoReportGTEm.addTarget(self, action: #selector(changeresonpicked(bguGTem:)), for: .touchUpInside)
        _agitatorValuesGTEM.append(_zhunreaToolGTEM)
        reasonThreeReportGTEm.addTarget(self, action: #selector(changeresonpicked(bguGTem:)), for: .touchUpInside)
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
        _BingToolGTEM +=  1.87

        _zhunreaToolGTEM = _zhunreaToolGTEM + _muddleToolGTEM + _BingToolGTEM

       
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
        modifiedRecipe["enthusiastCount"] = (Int.random(in: 300...700))
        
        SVProgressHUD.show()
        modifiedRecipe["craftsmanshipScore"] = (Int.random(in: 450...500))
        
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1.5){
            SVProgressHUD.dismiss()
            let indefHTEM = Int.random(in: 200...30000)

           
           
            
            
            SVProgressHUD.showSuccess(withStatus: "Submitted successfully, we will review and process your report as soon as possible!")
            modifiedRecipe["agingDuration"] = 2020 + indefHTEM
            if (modifiedRecipe.keys.randomElement()?.count ?? 0) > 2 {
                self.navigationController?.popViewController(animated: true)
            }
            
            
        }
        
    }
}
