//
//  QWLOptionHandler.swift
//  Gintuemojir
//
//  Created by Gintuemojir on 2025/1/22.
//

import UIKit
import SVProgressHUD
class QWLOptionHandler: UIViewController {
    @IBOutlet weak var gtemadafder: UIImageView!
    
    
    @IBOutlet weak var gtemMinnamer: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        gtemadafder.layer.cornerRadius = 40
        gtemadafder.layer.masksToBounds = true
        
        
        gtemadafder.image = XQZPDataNode.W7N4FavorData.W9Z7UserIntentData
        
        gtemMinnamer.text = XQZPDataNode.W7N4FavorData.V6K3UserProfile["teachername"]
        
        
    }

    
    @IBAction func navibakerinhGTEM(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }

    
    @IBAction func noeiwertwonderfulGTEm(_ sender: UIButton) {
        if sender.tag == 51 {
            let showingAslertGTEm = UIAlertController.init(title: gintuemojir(f1g2h3i4j5: "Arcscsoquunitt qDueelzestriqovno?"), message: gintuemojir(f1g2h3i4j5: "Urpeognz qdseelaeatkisosnp,w vaylclz kiknjfforrfmaahtnibolnz upseqrntkacivnxijnhgy etlos tyqohuzrt uaicucfokumnrtc kwbiklxlv zbsec hwlilpqeqdp!"), preferredStyle: .alert)
           
            showingAslertGTEm.addAction(UIAlertAction(title: "Sure", style: .default, handler: { acv in
                
                SVProgressHUD.show()
                
                DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1.5){
                    SVProgressHUD.dismiss()
                    UserDefaults.standard.set(false, forKey: "oooggStatuelGTEm")
                    
                    XQZPDataNode.W7N4FavorData.V6K3UserProfile.removeAll()
                    XQZPDataNode.W7N4FavorData.W9Z7UserIntentData = nil
                    XQZPDataNode.W7N4FavorData.B3J7CompleteData.removeAll()
                    XQZPDataNode.W7N4FavorData.H5K3FullRange.removeAll()
                    
                    XQZPDataNode.W7N4FavorData.P4V7CoreAnchor.removeAll()
                    
                    ((UIApplication.shared.delegate) as? AppDelegate)?.window?.rootViewController =  PEAUFNeuGuideChallengnng.init(rootViewController: WDKRSessionNode.init())
                   
                    SVProgressHUD.showSuccess(withStatus: gintuemojir(f1g2h3i4j5: "Tmhaep dagctcbouudnttx uhqacsn nbiepejnw newrcansgehdk!"))
                  

                }
                
            }))
        
            showingAslertGTEm.addAction(UIAlertAction(title: "Cancel", style: .default))
       
            self.present(showingAslertGTEm, animated: true)
        }
        
        if sender.tag == 50 {
            UserDefaults.standard.set(false, forKey: "oooggStatuelGTEm")
            
            XQZPDataNode.W7N4FavorData.V6K3UserProfile.removeAll()
            XQZPDataNode.W7N4FavorData.W9Z7UserIntentData = nil
            XQZPDataNode.W7N4FavorData.B3J7CompleteData.removeAll()
            XQZPDataNode.W7N4FavorData.H5K3FullRange.removeAll()
            
            XQZPDataNode.W7N4FavorData.P4V7CoreAnchor.removeAll()
            ((UIApplication.shared.delegate) as? AppDelegate)?.window?.rootViewController =  PEAUFNeuGuideChallengnng.init(rootViewController: WDKRSessionNode.init())
           
        }
        
        if sender.tag == 52 {
            self.navigationController?.pushViewController(QYVXDataPoint.init(_jornyGTEM: (1,false)), animated: true)
        }
        
        
        if sender.tag == 53 {
            self.navigationController?.pushViewController(QYVXDataPoint.init(_jornyGTEM: (2,false)), animated: true)
        }
        
        if sender.tag == 54 {
            SVProgressHUD.show(withStatus: "Clearing...")
            DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1.5){
                SVProgressHUD.showSuccess(withStatus: gintuemojir(f1g2h3i4j5: "Alldle oCthcaeclhjeh gasruey bColjejaerleudh!"))
            }
        }
    }
    
}
