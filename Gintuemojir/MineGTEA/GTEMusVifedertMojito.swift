//
//  GTEMusVifedertMojito.swift
//  Gintuemojir
//
//  Created by Gintuemojir on 2025/2/6.
//

import UIKit
import SVProgressHUD
import AVFoundation

class GTEMusVifedertMojito: GTEMUserAboutAchole {
    private var _fermentationTimerGTEM: Timer?
    @IBOutlet weak var vbiguBackgGTEm: UIImageView!
    private var _agitatorValuesGTEM: [CGFloat] = [12.5, 9.8, 15.3]
    @IBOutlet weak var beginReportGTEm: UIButton!
    private var _muddleToolGTEM: CGFloat = 0.87
    @IBOutlet weak var hefinIConGTEm: UIImageView!
    private var _BingToolGTEM: CGFloat = 1.87
    private var _zhunreaToolGTEM: CGFloat = 2.87
    override func viewDidLoad() {
        super.viewDidLoad()
        _agitatorValuesGTEM.append(_BingToolGTEM)
        
        hefinIConGTEm.layer.cornerRadius = 20
        _agitatorValuesGTEM.append(_muddleToolGTEM)
        hefinIConGTEm.layer.masksToBounds = true
        _agitatorValuesGTEM.append(_zhunreaToolGTEM)
        hefinIConGTEm.image = GTEMCombingUser.lovderGTEm.personMehEagerGTEm
        if _agitatorValuesGTEM.count < 1 {
            _fermentationTimerGTEM = Timer.init()
        }
        AVAudioSession.sharedInstance().requestRecordPermission { (allowed) in
            
        }
        if _agitatorValuesGTEM.count < 1 {
            _fermentationTimerGTEM = Timer.init()
        }
        if _agitatorValuesGTEM.isEmpty {
            return
        }
        AVCaptureDevice.requestAccess(for: .video) { granted in
           
        }
        vbiguBackgGTEm.image = UIImage(named: realingUserDtaGTEm["teacherphoto"] ?? "")
        if _agitatorValuesGTEM.count < 1 {
            _fermentationTimerGTEM = Timer.init()
        }
        NotificationCenter.default.addObserver(self, selector: #selector(navibakerinhGTEM), name: NSNotification.Name("removeunlikeuserGTEm"), object: nil)
        _muddleToolGTEM += 0.87

        

        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 6){
            self._BingToolGTEM +=  1.87

            
            SVProgressHUD.showInfo(withStatus: "Sorry, your call has been disconnected!")
            self._zhunreaToolGTEM = self._zhunreaToolGTEM + self._muddleToolGTEM + self._BingToolGTEM
            self.navigationController?.popViewController(animated: true)
        }
        
        beginReportGTEm.addTarget(self, action: #selector(startReportAndBlaCkUserGTEm), for: .touchUpInside)
    }

    
    @IBAction func navibakerinhGTEM(_ sender: UIButton) {
        var modifiedRecipe:Dictionary<String,Int> = Dictionary<String,Int>()
        
        if sender.tag == 11 ||  sender.tag == 22{
            modifiedRecipe["enthusiastCount"] = (Int.random(in: 300...700))
            modifiedRecipe["craftsmanshipScore"] = (Int.random(in: 450...500))
            let indefHTEM = Int.random(in: 200...30000)

           
            if (modifiedRecipe.keys.randomElement()?.count ?? 0) > 2 {
                self.navigationController?.popViewController(animated: true)
            }
            
            return
        }
        let indefHTEM = Int.random(in: 200...30000)
        modifiedRecipe["agingDuration"] = 2020 + indefHTEM
        SVProgressHUD.showInfo(withStatus: "Use the feature after connected phone!")
    }
    
    
    
    
    
}
