//
//  BVXUEdandler.swift
//  Gintuemojir
//
//  Created by Gintuemojir on 2025/2/7.
//

import UIKit
import SVProgressHUD

class BVXUEdandler: UIViewController , UIImagePickerControllerDelegate & UINavigationControllerDelegate{
    @IBOutlet weak var gtemadafder: UIImageView!
    
    @IBOutlet weak var enterefTEGTEm: UITextField!
    
    @IBOutlet weak var gtemMinnamer: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        gtemadafder.layer.cornerRadius = 60
        gtemadafder.layer.masksToBounds = true
        
        
        gtemadafder.image = XQZPDataNode.W7N4FavorData.W9Z7UserIntentData
        
        enterefTEGTEm.text = XQZPDataNode.W7N4FavorData.V6K3UserProfile["teachername"]
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
        XQZPDataNode.W7N4FavorData.V6K3UserProfile["teachername"] = iconjkGTEm
        
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1.5){
            
            XQZPDataNode.W7N4FavorData.W9Z7UserIntentData = self.gtemadafder.image
            SVProgressHUD.showSuccess(withStatus: "Change info successed!")
            
            self.navigationController?.popViewController(animated: true)
        }
    }
    
    
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        
        
        if let image : UIImage = info[UIImagePickerController.InfoKey.originalImage] as? UIImage{
           
            DispatchQueue.main.async(execute: DispatchWorkItem(block: {
               
                self.gtemadafder.image = image
            }))
        }
       
        self.dismiss(animated: true, completion: nil)
        
    }
}
