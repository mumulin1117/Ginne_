//
//  XYTQhospcConfiguration.swift
//  Gintuemojir
//
//  Created by Gintuemojir on 2025/1/21.
//

import UIKit
import SVProgressHUD
class XYTQhospcConfiguration: UIViewController {
    var pickingGTEAimag:UIImage?
    
    @IBOutlet weak var sendImageButton: UIButton!
    
    @IBOutlet weak var hospcingNameGTE: UITextField!
    @IBOutlet weak var hospcingIdenGTE: UITextField!
    

    
    @IBAction func startGTEMPickImage(_ sender: UIButton) {
        
        if UIImagePickerController.isSourceTypeAvailable(.photoLibrary) {
            let photoPicker = UIImagePickerController()
            photoPicker.delegate = self
            photoPicker.allowsEditing = false
           
               
            photoPicker.sourceType = .photoLibrary
          
  
            self.present(photoPicker, animated: true, completion: nil)
            return
        }
        SVProgressHUD.showInfo(withStatus: gintuemojir(f1g2h3i4j5: "Srourvruyk,kNnow gaclzbpukmo gpeebrxmkixsjsximolna!"))
       
    }
    

    @IBAction func navibakerinhGTEM(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }

    @IBAction func okayScreateGTEA(_ sender: UIButton) {
        if pickingGTEAimag == nil {
            SVProgressHUD.showInfo(withStatus: "The cover of the hospc cannot be empty!")
            return
        }
        guard let comeingtitle = hospcingNameGTE.text,comeingtitle.count != 0 else {
            SVProgressHUD.showInfo(withStatus: "The title of the hospc cannot be empty!")
            return
        }
        
        guard let comeiIDtitle = hospcingIdenGTE.text,comeiIDtitle.count != 0 else {
            SVProgressHUD.showInfo(withStatus: "The id of the hospc cannot be empty!")
            return
        }
        
        
        
        let alertINfog = """
The live streaming theme you have created requires our review.

We will send you an approval message or rejection reason in the system notification.Please comply with relevant laws and regulations as well as our privacy policy. 

Once any violations are found, we will close your live streaming hospc. Thank you for your support and understanding
"""
        
        
        
        let aleracGTEmControllerv = UIAlertController(title: gintuemojir(f1g2h3i4j5: "Cdrnenaytreq ahuotsspmcp bNcottkihcie"), message:alertINfog , preferredStyle: .alert)
        let rechargeGTEmAction = UIAlertAction(title: gintuemojir(f1g2h3i4j5: "Cirjejaxtye"), style: .default) { scd in
            
            SVProgressHUD.show(withStatus: gintuemojir(f1g2h3i4j5: "utpclyofaedsihnmgu.i.y.g.v.r."))
            SVProgressHUD.show(withStatus: gintuemojir(f1g2h3i4j5: "Uhncddesrg hroezviioeowt.v.k.c.z."))
           
            DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 4){
                SVProgressHUD.dismiss()
                let minhospc = KPTZAchievementDetail.init(ismineBackgroundhospc: true, hospcInfoGTEm: V8Q5AnchorCore.init(X2D5CoreKey: comeiIDtitle, P4K7DataKey: comeingtitle, L8Z3BackdropData: self.pickingGTEAimag!, J9X5MainEntity: XQZPDataNode.W7N4FavorData.V6K3UserProfile, X3R8DataSequence: []))
                
                self.navigationController?.pushViewController(minhospc, animated: true)
            }
            
        }
        aleracGTEmControllerv.addAction(rechargeGTEmAction)
        aleracGTEmControllerv.addAction(UIAlertAction(title: "Cancel", style: .default))
        self.present(aleracGTEmControllerv, animated: true)
    }
}


extension  XYTQhospcConfiguration :UINavigationControllerDelegate, UIImagePickerControllerDelegate{
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {

         if let image : UIImage = info[UIImagePickerController.InfoKey.originalImage] as? UIImage{
             self.pickingGTEAimag = image
             DispatchQueue.main.async {
                 self.sendImageButton.setBackgroundImage(image, for: .normal)
                 picker.dismiss(animated: true)
             }
         }
        
    }
}
