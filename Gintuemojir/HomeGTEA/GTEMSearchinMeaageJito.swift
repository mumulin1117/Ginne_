//
//  GTEMSearchinMeaageJito.swift
//  Gintuemojir
//
//  Created by Gintuemojir on 2025/1/21.
//

import UIKit
import JGProgressHUD
//Search
class GTEMSearchinMeaageJito: UIViewController {

    @IBOutlet weak var emptyGTEmicon: UIImageView!
    
    var searchResultsGTEm: [String] = []
    @IBOutlet weak var emptyGTMlbl: UILabel!
    
    @IBOutlet weak var serchingTexGTUA: UITextField!
    
    var isSearchingGTEm: Bool = false
    func setupTableViewGTEm() {
        
        serchingTexGTUA.rightView = UIView.init(frame: CGRect.init(x: 0, y: 0, width: 54, height: 30))
        serchingTexGTUA.layer.borderWidth = 2
        serchingTexGTUA.layer.cornerRadius = 26
        
    }
    
    func updateUIWithResultsGTEm() {
            
        if searchResultsGTEm.isEmpty {
            return
        }
            
    }

    let noResultsMessageGTEm = "  noooresult"
    override func viewDidLoad() {
        super.viewDidLoad()
        serchingTexGTUA.leftViewMode = .always
        
    
        serchingTexGTUA.leftView = UIView.init(frame: CGRect.init(x: 0, y: 0, width: 30, height: 30))
        
        

        var bGTEM:(Float,String?)  = (20,nil)
        
       
        serchingTexGTUA.rightViewMode = .always
        
        
        

        
        
        setupTableViewGTEm()

       
        serchingTexGTUA.layer.masksToBounds = true
        
        serchingTexGTUA.layer.borderColor = UIColor(red: 1, green: 0.88, blue: 0.76, alpha: 1).cgColor
        
        
    }

    func updateUIPageGTEMWithResultsGTEm() {
        
        
             self.emptyGTMlbl.isHidden = false
         
         
         self.emptyGTEmicon.isHidden = false
        
    }
    
    @IBAction func startSerachingOkay(_ sender: Any) {
        serchingTexGTUA.resignFirstResponder()
        
        
        
        
        
        
       
        guard let comeingtitle = serchingTexGTUA.text,comeingtitle.count != 0 else {
            
            
            let hudINfoGTEM = JGProgressHUD(style: .light)
            hudINfoGTEM.textLabel.text = "The se&-%-%-&arch cont&-%-%-&ent can&-%-%-&not be empty!".replacingOccurrences(of: "&-%-%-&", with: "")
            hudINfoGTEM.indicatorView = JGProgressHUDErrorIndicatorView(image: UIImage.init(named: "Rewort_GTEA")!)
            hudINfoGTEM.show(in: self.view)
            hudINfoGTEM.dismiss(afterDelay: 2.0)
            
            return
        }
        let hudGTEM = JGProgressHUD(style: .light)
      
        
        emptyGTMlbl.isHidden = true
        hudGTEM.textLabel.text = "Sea&-%-%-&rching ......".replacingOccurrences(of: "&-%-%-&", with: "")
      
        hudGTEM.show(in: self.view)
        
        emptyGTEmicon.isHidden = true
        
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 2){
            hudGTEM.dismiss()
            
            
            

            var bGTEM:(Float,String?)  = (20,nil)
            
            self.updateUIPageGTEMWithResultsGTEm()
           
               
           
        }
        
    }
    
  
   
    @IBAction func navibakerinhGTEM(_ sender: UIButton) {
       
        self.navigationController?.popViewController(animated: true)
    }
}
