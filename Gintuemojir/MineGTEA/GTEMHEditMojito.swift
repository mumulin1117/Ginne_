//
//  GTEMHEditMojito.swift
//  Gintuemojir
//
//  Created by Gintuemojir on 2025/2/7.
//

import UIKit
import SVProgressHUD

class GTEMHEditMojito: UIViewController , UIImagePickerControllerDelegate & UINavigationControllerDelegate{
    @IBOutlet weak var gtemMinHeader: UIImageView!
    
    @IBOutlet weak var enterefTEGTEm: UITextField!
    
    @IBOutlet weak var gtemMinnamer: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        gtemMinHeader.layer.cornerRadius = 60
        gtemMinHeader.layer.masksToBounds = true
        
        
        gtemMinHeader.image = GTEMCombingUser.lovderGTEm.personMehEagerGTEm
        
        enterefTEGTEm.text = GTEMCombingUser.lovderGTEm.personMeGTEm["teachername"]
    }

    @IBAction func navibakerinhGTEM(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }

    @IBAction func takeinusettFakiGTEm(_ sender: UIButton) {
        if UIImagePickerController.isSourceTypeAvailable(.camera) == false{
            SVProgressHUD.showInfo(withStatus: "The current device does not support taking photos")
            
            return
        }
        let camretaPick = UIImagePickerController()
        camretaPick.delegate = self
       
            
        camretaPick.sourceType = .camera
        
        self.present(camretaPick, animated: true, completion: nil)
        
    }
    
    @IBAction func surecHangeGTEm(_ sender: Any) {
        
        guard let iconjkGTEm = enterefTEGTEm.text,
              iconjkGTEm.count != 0 else {
            SVProgressHUD.showInfo(withStatus: "Change name cant not be empty!")
            
            return
        }
        
        SVProgressHUD.show()
        GTEMCombingUser.lovderGTEm.personMeGTEm["teachername"] = iconjkGTEm
        
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1.5){
            
            GTEMCombingUser.lovderGTEm.personMehEagerGTEm = self.gtemMinHeader.image
            SVProgressHUD.showSuccess(withStatus: "Change info successed!")
            
            self.navigationController?.popViewController(animated: true)
        }
    }
    
    
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        
        
        if let image : UIImage = info[UIImagePickerController.InfoKey.originalImage] as? UIImage{
           
            DispatchQueue.main.async(execute: DispatchWorkItem(block: {
               
                self.gtemMinHeader.image = image
            }))
        }
       
        self.dismiss(animated: true, completion: nil)
        
    }
}
