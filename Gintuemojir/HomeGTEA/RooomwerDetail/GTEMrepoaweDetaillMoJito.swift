//
//  GTEMrepoaweDetaillMoJito.swift
//  Gintuemojir
//
//  Created by Gintuemojir on 2025/1/21.
//

import UIKit
import JGProgressHUD
class GTEMrepoaweDetaillMoJito: UIViewController {
    
    
    
  
    @IBOutlet weak var reasonOneReportGTEm: UIButton!
    
    
    
    @IBOutlet weak var reasonTwoReportGTEm: UIButton!
    
   
    @IBOutlet weak var reasonThreeReportGTEm: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        

       

        reasonOneReportGTEm.addTarget(self, action: #selector(changeresonpicked(bguGTem:)), for: .touchUpInside)
        


       
        
        
        

        

        

        reasonTwoReportGTEm.addTarget(self, action: #selector(changeresonpicked(bguGTem:)), for: .touchUpInside)
        
        
        

        
        reasonThreeReportGTEm.addTarget(self, action: #selector(changeresonpicked(bguGTem:)), for: .touchUpInside)
    }

    @objc func changeresonpicked(bguGTem:UIButton)  {
        


        
        
        reasonOneReportGTEm.isSelected = false
        

       
        reasonTwoReportGTEm.isSelected = false
        

        
       
        reasonThreeReportGTEm.isSelected = false
        bguGTem.isSelected = true
        
    }
    
    
    @IBAction func navibakerinhGTEM(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }

    @IBAction func givwntReasonNoingtGTEm(_ sender: Any) {
        
        
        
        
        

        


        
        
        let hudLoadingGTEM = JGProgressHUD(style: .light)
        hudLoadingGTEM.textLabel.text = "Loa&-%-%-&ding&-%-%-&...".replacingOccurrences(of: "&-%-%-&", with: "")
        hudLoadingGTEM.show(in: self.view)
        
        
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1.5){
            hudLoadingGTEM.dismiss()
            

           
           

            

           
                let fdgosihunuh = "Submit&-%-%-&ted successfu&-%-%-&lly, we &-%-%-&will review &-%-%-&and process &-%-%-&your report as &-%-%-&soon as possible!".replacingOccurrences(of: "&-%-%-&", with: "")
                
                
                         
                
                
                let hudIsuccessGTEM = JGProgressHUD(style: .light)
                hudIsuccessGTEM.textLabel.text = fdgosihunuh
                hudIsuccessGTEM.indicatorView = JGProgressHUDSuccessIndicatorView()
                hudIsuccessGTEM.show(in: self.view)
                hudIsuccessGTEM.dismiss(afterDelay: 2.0)
               
            
            self.navigationController?.popViewController(animated: true)
            
            
        }
        
    }
}
