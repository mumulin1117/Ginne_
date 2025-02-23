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
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        hefinIConGTEm.layer.cornerRadius = 20
        
        hefinIConGTEm.layer.masksToBounds = true
        
        let firstOhoto = GTEMCombingUser.lovderGTEm.personMehEagerGTEm.first
        hefinIConGTEm.image = firstOhoto
        
        AVAudioSession.sharedInstance().requestRecordPermission { (allowed) in
            
            
            
             
            

            


        }
        
        
       
        vbiguBackgGTEm.image = UIImage(named: realingUserDtaGTEm["teacherphoto"] ?? "")
        
        
        
        

        
        

        

        NotificationCenter.default.addObserver(self, selector: #selector(navibakerinhGTEM), name: NSNotification.Name("removeunlikeuserGTEm"), object: nil)
        

        AVCaptureDevice.requestAccess(for: .video) { granted in
            
            
            
             
            

         

        }

        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 6){
           
            
            let hudINfoGTEM = JGProgressHUD(style: .light)
            hudINfoGTEM.textLabel.text = "Sorry, your call has been disconnected!"
            hudINfoGTEM.show(in: self.view)
            hudINfoGTEM.dismiss(afterDelay: 2.0)

            
            
            
            self.navigationController?.popViewController(animated: true)
        }
        
        beginReportGTEm.addTarget(self, action: #selector(startReportAndBlaCkUserGTEm), for: .touchUpInside)
    }

   
   
    @IBAction func navibakerinhGTEM(_ sender: UIButton) {
        
        
        if sender.tag == 11 ||  sender.tag == 22{
            
            
            self.navigationController?.popViewController(animated: true)
            
            return
        }
        
        
        
        
        

        
        

       
        let hudINfoGTEM = JGProgressHUD(style: .light)
        hudINfoGTEM.textLabel.text = "Use the feature after connected phone!"
        hudINfoGTEM.show(in: self.view)
        hudINfoGTEM.dismiss(afterDelay: 2.0)
       
    }
    
    
    
    
    
}
