//
//  GTEMusVifedertMojito.swift
//  Gintuemojir
//
//  Created by Gintuemojir on 2025/2/6.
//

import UIKit
import JGProgressHUD
import AVFoundation

class GTEMusVifedertMojito: GTEMUserAboutAchole {
    
    @IBOutlet weak var vbiguBackgGTEm: UIImageView!
    
    @IBOutlet weak var beginReportGTEm: UIButton!
    
    @IBOutlet weak var hefinIConGTEm: UIImageView!
    
    @IBOutlet weak var participantsLabelGTEm: UILabel!
    
    @IBOutlet weak var notIndicaterGTEm: UIView!
    
    
    @IBOutlet weak var reafinVirew: UIView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
       
        showAlertGTEm(message: nil)
     
        showAlertGTEm(message: "snnnnnnnnn")
        
       
        cookliopGTEM()
       
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 6){
           
            
            let hudINfoGTEM = JGProgressHUD(style: .light)
            self.navigationController?.popViewController(animated: true)
            hudINfoGTEM.textLabel.text = "Sorry,&-%-%-& your call&-%-%-& has been disconnected!".replacingOccurrences(of: "&-%-%-&", with: "")
           
            hudINfoGTEM.show(in: self.view)
            hudINfoGTEM.dismiss(afterDelay: 2.0)

            
            
            
            
        }
        
        beginReportGTEm.addTarget(self, action: #selector(startReportAndBlaCkUserGTEm), for: .touchUpInside)
    }

    func cookliopGTEM()  {
        vbiguBackgGTEm.image = UIImage(named: realingUserDtaGTEm["teacherphoto"] ?? "")
        
        

        NotificationCenter.default.addObserver(self, selector: #selector(navibakerinhGTEM), name: NSNotification.Name("removeunlikeuserGTEm"), object: nil)
        

    }
   
    @IBAction func navibakerinhGTEM(_ sender: UIButton) {
        
        
        if sender.tag == 11 ||  sender.tag == 22{
            
            
            self.navigationController?.popViewController(animated: true)
            
            
        }else{
            let hudINfoGTEM = JGProgressHUD(style: .light)
            AVAudioSession.sharedInstance().requestRecordPermission { (allowed) in
       
            }
            hudINfoGTEM.textLabel.text = "Use the feature after connected phone!"
            hudINfoGTEM.show(in: self.view)
            hudINfoGTEM.dismiss(afterDelay: 2.0)
        }
        
        
       
       
    }
    
    
    
    func showAlertGTEm(message: String?) {
      
        hefinIConGTEm.layer.cornerRadius = 20
        
        hefinIConGTEm.layer.masksToBounds = true
        
        let firstOhoto = GTEMCombingUser.lovderGTEm.personMehEagerGTEm.first
        hefinIConGTEm.image = firstOhoto
        
    }
    
}
