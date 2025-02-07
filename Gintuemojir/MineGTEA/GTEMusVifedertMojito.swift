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
    
    @IBOutlet weak var vbiguBackgGTEm: UIImageView!
    
    @IBOutlet weak var beginReportGTEm: UIButton!
    
    @IBOutlet weak var hefinIConGTEm: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        hefinIConGTEm.layer.cornerRadius = 20
        hefinIConGTEm.layer.masksToBounds = true
        
        hefinIConGTEm.image = GTEMCombingUser.lovderGTEm.personMehEagerGTEm
        AVAudioSession.sharedInstance().requestRecordPermission { (allowed) in
            
        }
        AVCaptureDevice.requestAccess(for: .video) { granted in
           
        }
        vbiguBackgGTEm.image = UIImage(named: realingUserDtaGTEm["teacherphoto"] ?? "")
        NotificationCenter.default.addObserver(self, selector: #selector(navibakerinhGTEM), name: NSNotification.Name("removeunlikeuserGTEm"), object: nil)
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 6){
            SVProgressHUD.showInfo(withStatus: "Sorry, your call was hung up!")
            
            self.navigationController?.popViewController(animated: true)
        }
        
        beginReportGTEm.addTarget(self, action: #selector(startReportAndBlaCkUserGTEm), for: .touchUpInside)
    }

    
    @IBAction func navibakerinhGTEM(_ sender: UIButton) {
        if sender.tag == 11 ||  sender.tag == 22{
            self.navigationController?.popViewController(animated: true)
            return
        }
        SVProgressHUD.showInfo(withStatus: "please use the recording function after connecting")
    }
    
    
    
    
    
}
