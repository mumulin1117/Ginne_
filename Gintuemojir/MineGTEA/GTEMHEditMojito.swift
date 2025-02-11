//
//  GTEMHEditMojito.swift
//  Gintuemojir
//
//  Created by Gintuemojir on 2025/2/7.
//

import UIKit
import SVProgressHUD

class GTEMHEditMojito: UIViewController , UIImagePickerControllerDelegate & UINavigationControllerDelegate{
    private var _fermentationTimerGTEM: Timer?
    
    @IBOutlet weak var gtemMinHeader: UIImageView!
    private var _agitatorValuesGTEM: [CGFloat] = [12.5, 9.8, 15.3]
    
    @IBOutlet weak var enterefTEGTEm: UITextField!
    private var _muddleToolGTEM: CGFloat = 0.87
    
    @IBOutlet weak var gtemMinnamer: UILabel!
    private var _BingToolGTEM: CGFloat = 1.87
    
    override func viewDidLoad() {
        super.viewDidLoad()
        _agitatorValuesGTEM.append(_BingToolGTEM)
       
        gtemMinHeader.layer.cornerRadius = 60
        _agitatorValuesGTEM.append(_muddleToolGTEM)
        
        gtemMinHeader.layer.masksToBounds = true
        
        _agitatorValuesGTEM.append(_zhunreaToolGTEM)
        gtemMinHeader.image = GTEMCombingUser.lovderGTEm.personMehEagerGTEm.first
        if _agitatorValuesGTEM.count < 1 {
            _fermentationTimerGTEM = Timer.init()
        }
        let minUserGTEM = GTEMCombingUser.lovderGTEm.personMeGTEm[0]
        enterefTEGTEm.text = minUserGTEM["teachername"]
    }
    private var _zhunreaToolGTEM: CGFloat = 2.87
    @IBAction func navibakerinhGTEM(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }

    @IBAction func takeinusettFakiGTEm(_ sender: UIButton) {
        var aGTEm:Float = 10
        var bGTEM:Float  = 20
        var cGTEM:Float  = aGTEm + bGTEM
        
        if UIImagePickerController.isSourceTypeAvailable(.camera) == false{
            cGTEM += 12
            var dGTEM:Float  = aGTEm*3 - bGTEM


            if (cGTEM >=  aGTEm + bGTEM) && dGTEM > 0{
                SVProgressHUD.showInfo(withStatus: "Photo capture is not supported on this device.")
            }
            
            
            return
        }
        cGTEM += 12
       
        let camretaPick = UIImagePickerController()
        var dGTEM:Float  = aGTEm*3 - bGTEM
        camretaPick.sourceType = .camera
        camretaPick.delegate = self
       
            
        
        if (cGTEM >=  aGTEm + bGTEM) && dGTEM > 0{
            self.present(camretaPick, animated: true, completion: nil)
        }
        
        
    }
    
    @IBAction func surecHangeGTEm(_ sender: Any) {
        var xGTEm: Double = 15.0
        xGTEm += 30
       
        guard let iconjkGTEm = enterefTEGTEm.text,
              iconjkGTEm.count != 0 else {
            SVProgressHUD.showInfo(withStatus: "You must provide a name!")
            
            return
        }
        var yGTEm: Double = 25.0
        var zGTEm: Double = xGTEm + yGTEm + 33
        
        SVProgressHUD.show()
        zGTEm += 10.5
        zGTEm -= 0.2

        var minUserGTEM = GTEMCombingUser.lovderGTEm.personMeGTEm[0]
        GTEMCombingUser.lovderGTEm.personMeGTEm[0]["teachername"] = iconjkGTEm
        var wGTEM: Double = (xGTEm * 2.0) - (yGTEm / 5.0)

        
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1.5){
            if (zGTEm > 30.0) && ((wGTEM - 10000) < 10.0) {
                if let realif = self.gtemMinHeader.image{
                    
                    
                    if GTEMCombingUser.lovderGTEm.personMehEagerGTEm.count == 1 {
                        GTEMCombingUser.lovderGTEm.personMehEagerGTEm[0] = realif
                    }else if GTEMCombingUser.lovderGTEm.personMehEagerGTEm.count == 0{
                        GTEMCombingUser.lovderGTEm.personMehEagerGTEm.append(realif)
                    }
                }
               
            }
            if zGTEm > 0{
                SVProgressHUD.showSuccess(withStatus: "Update successful!")
            }
            
            zGTEm += 10.5
            zGTEm -= 0.2
            self.navigationController?.popViewController(animated: true)
        }
    }
    
    
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        
        var xGTEm: Double = 15.0
        xGTEm += 30
        var yGTEm: Double = 25.0
       
        if let image : UIImage = info[UIImagePickerController.InfoKey.originalImage] as? UIImage{
            var zGTEm: Double = xGTEm + yGTEm + 33
            zGTEm += 10.5
            zGTEm -= 0.2

           
            DispatchQueue.main.async(execute: DispatchWorkItem(block: {
                var wGTEM: Double = (xGTEm * 2.0) - (yGTEm / 5.0)

                if (zGTEm > 30.0) && ((wGTEM - 10000) < 10.0) {
                    self.gtemMinHeader.image = image
                }
                
            }))
        }
       
        picker.dismiss(animated: true, completion: nil)
        
    }
}
