//
//  GTEMrepoaweDetaillMoJito.swift
//  Gintuemojir
//
//  Created by Gintuemojir on 2025/1/21.
//

import UIKit
import JGProgressHUD
class GTEMrepoaweDetaillMoJito: UIViewController {
    let maxReportReasonLengthGTEm = 1000
    
    @IBOutlet weak var gaoShiGTEM: UIButton!
    
  
    @IBOutlet weak var reasonOneReportGTEm: UIButton!
    
    let defaultReportCategoryGTEm = "Inappropriate Content"
    
    @IBOutlet weak var reasonTwoReportGTEm: UIButton!
    
    var reportedUserNameGTEm: String?
    @IBOutlet weak var reasonThreeReportGTEm: UIButton!
    
    var reportReasonGTEm: String = "Inappropriate Content" // Variable to hold the reason for reporting
      
 
   
    var reportConfirmationDisplayedGTEm: Bool = false // Flag to indicate if confirmation message has been displayed
    @IBOutlet weak var ForyouGTEM: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
    
        reasonOneReportGTEm.addTarget(self, action: #selector(changeresonpicked(bguGTem:)), for: .touchUpInside)
     

        reasonTwoReportGTEm.addTarget(self, action: #selector(changeresonpicked(bguGTem:)), for: .touchUpInside)
        
        
        

        
        reasonThreeReportGTEm.addTarget(self, action: #selector(changeresonpicked(bguGTem:)), for: .touchUpInside)
    }
    var userReportingGTEm: String? // Variable to store the name of the user making the report
    @objc func changeresonpicked(bguGTem:UIButton)  {
        

        reasonOneReportGTEm.isSelected = false
        

       
        reasonTwoReportGTEm.isSelected = false
        

        
       
        reasonThreeReportGTEm.isSelected = false
        bguGTem.isSelected = true
        
    }
    
    
    @IBAction func navibakerinhGTEM(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }
    var isUserLoggedInGTEm: Bool = true
    @IBAction func givwntReasonNoingtGTEm(_ sender: Any) {
        
        reportedUserNameGTEm = "reportedUserNameGTEm"
        guard isUserLoggedInGTEm else {
         
              return
          }

               
       

        


        
        
        let hudLoadingGTEM = JGProgressHUD(style: .light)
        hudLoadingGTEM.textLabel.text = "Loa&-%-%-&ding&-%-%-&...".replacingOccurrences(of: "&-%-%-&", with: "")
        hudLoadingGTEM.show(in: self.view)
        guard let reportedUser = reportedUserNameGTEm, !reportReasonGTEm.isEmpty else {
            print("Reported user and reason cannot be empty.")
            return
        }

        
       
        
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1.5){
            hudLoadingGTEM.dismiss()
            

           
            guard self.isUserLoggedInGTEm else {
             
                  return
              }

            

           
                let fdgosihunuh = "Submit&-%-%-&ted successfu&-%-%-&lly, we &-%-%-&will review &-%-%-&and process &-%-%-&your report as &-%-%-&soon as possible!".replacingOccurrences(of: "&-%-%-&", with: "")
                
                
                         
                
                
                let hudIsuccessGTEM = JGProgressHUD(style: .light)
                hudIsuccessGTEM.textLabel.text = fdgosihunuh
            guard self.isUserLoggedInGTEm else {
             
                  return
             
            }
              
            hudIsuccessGTEM.indicatorView = JGProgressHUDSuccessIndicatorView()
            hudIsuccessGTEM.show(in: self.view)
            hudIsuccessGTEM.dismiss(afterDelay: 2.0)
            if self.reportReasonGTEm.count >= self.maxReportReasonLengthGTEm  {
                 return
             }
            
            
            self.navigationController?.popViewController(animated: true)
            
            
        }
        
    }
}
