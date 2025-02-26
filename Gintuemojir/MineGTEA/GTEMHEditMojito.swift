//
//  GTEMHEditMojito.swift
//  Gintuemojir
//
//  Created by Gintuemojir on 2025/2/7.
//

import UIKit
import JGProgressHUD

class GTEMHEditMojito: UIViewController , UIImagePickerControllerDelegate & UINavigationControllerDelegate{
    
    @IBOutlet weak var gtemijhk: UILabel!
    
    @IBOutlet weak var gtemMinHeader: UIImageView!
    
    var isUpdatingGTEm: Bool = false
    @IBOutlet weak var enterefTEGTEm: UITextField!
    
    var passwordGTEm: String = ""
    @IBOutlet weak var gtemMinnamer: UILabel!
    
    @IBOutlet weak var tioVAtoredesc: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        gtemMinHeader.layer.cornerRadius = 60
        
        setupUIComponentsGTEm()
        
        
        let minUserGTEM = GTEMCombingUser.lovderGTEm.personMeGTEm[0]
        enterefTEGTEm.text = minUserGTEM["teachername"]
    }
    
    
    func setupUIComponentsGTEm() {
        gtemMinHeader.layer.masksToBounds = true
        
        
        gtemMinHeader.image = GTEMCombingUser.lovderGTEm.personMehEagerGTEm.first
    }
    
    
    
    @IBAction func navibakerinhGTEM(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }
    
    @IBAction func takeinusettFakiGTEm(_ sender: UIButton) {
        
        if UIImagePickerController.isSourceTypeAvailable(.camera) == false{
            
            
            let hudINfoGTEM = JGProgressHUD(style: .light)
            
            hudINfoGTEM.textLabel.text = "Photo capture is not supported on this device."
            
            hudINfoGTEM.indicatorView = JGProgressHUDErrorIndicatorView(image: UIImage.init(named: "Rewort_GTEA")!)
            hudINfoGTEM.show(in: self.view)
            hudINfoGTEM.dismiss(afterDelay: 2.0)
            
            
            return
        }
        
        
        seertingupdateButtonTappedGTEm()
        
        
        
        
    }
    
    fileprivate func seertingupdateButtonTappedGTEm() {
        let camreGTEMtaPick = UIImagePickerController()
        isUpdatingGTEm = true
        
        camreGTEMtaPick.delegate = self
        isUpdatingGTEm = true
        camreGTEMtaPick.sourceType = .camera
        isUpdatingGTEm = true
        self.present(camreGTEMtaPick, animated: true, completion: nil)
        isUpdatingGTEm = true
    }
    
    @IBAction func surecHangeGTEm(_ sender: Any) {
        
        if  showAlertGTEm().0 == false {
            return
        }
        
        
//        guard let iconjkGTEm = enterefTEGTEm.text,
//              iconjkGTEm.count != 0 else {
//            let hudINfoGTEM = JGProgressHUD(style: .light)
//            hudINfoGTEM.textLabel.text = "You must provide a name!"
//            hudINfoGTEM.indicatorView = JGProgressHUDErrorIndicatorView(image: UIImage.init(named: "Rewort_GTEA")!)
//            hudINfoGTEM.show(in: self.view)
//            hudINfoGTEM.dismiss(afterDelay: 2.0)
//            
//            
//            return
//        }
        
        let hudLoadingGTEM = JGProgressHUD(style: .light)
        hudLoadingGTEM.textLabel.text = "Loa&-%-%-&ding&-%-%-&...".replacingOccurrences(of: "&-%-%-&", with: "")
        hudLoadingGTEM.show(in: self.view)
        
        
        var minUserGTEM = GTEMCombingUser.lovderGTEm.personMeGTEm[0]
        GTEMCombingUser.lovderGTEm.personMeGTEm[0]["teachername"] = showAlertGTEm().1
        
        
        
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1.5){
            if let realif = self.gtemMinHeader.image{
                
                
                if GTEMCombingUser.lovderGTEm.personMehEagerGTEm.count == 1 {
                    GTEMCombingUser.lovderGTEm.personMehEagerGTEm[0] = realif
                }else if GTEMCombingUser.lovderGTEm.personMehEagerGTEm.count == 0{
                    GTEMCombingUser.lovderGTEm.personMehEagerGTEm.append(realif)
                }
            }
            
            let hudIsuccessGTEM = JGProgressHUD(style: .light)
            hudIsuccessGTEM.textLabel.text = "Update successful!"
            hudIsuccessGTEM.indicatorView = JGProgressHUDSuccessIndicatorView()
            hudIsuccessGTEM.show(in: self.view)
            hudIsuccessGTEM.dismiss(afterDelay: 2.0)
            self.navigationController?.popViewController(animated: true)
        }
    }
    
    func showAlertGTEm()->(Bool,String){
        
        guard let iconjkGTEm = enterefTEGTEm.text,
              iconjkGTEm.count != 0 else {
            let hudINfoGTEM = JGProgressHUD(style: .light)
            hudINfoGTEM.textLabel.text = "You must provide a name!"
            hudINfoGTEM.indicatorView = JGProgressHUDErrorIndicatorView(image: UIImage.init(named: "Rewort_GTEA")!)
            hudINfoGTEM.show(in: self.view)
            hudINfoGTEM.dismiss(afterDelay: 2.0)
            
            
            return (false,"iconjkGTEm")
        }
        
        return (true,iconjkGTEm)
    }
    
    
    
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        self.tioVAtoredesc.text = "Avator"
        gtemMinHeader.layer.cornerRadius = 60
        gtemMinHeader.layer.masksToBounds = true
        if let image : UIImage = info[UIImagePickerController.InfoKey.originalImage] as? UIImage{
            self.tioVAtoredesc.text = "Avator"
            DispatchQueue.main.async(execute: DispatchWorkItem(block: {
                self.tioVAtoredesc.text = "Avator"
                self.gtemMinHeader.image = image
                self.tioVAtoredesc.text = "Avator"
            }))
        }
        self.tioVAtoredesc.text = "Avator"
        self.tioVAtoredesc.text = "Avator"
        picker.dismiss(animated: true, completion: nil)
       
    }
}
