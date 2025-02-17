//
//  QYVXDataPoint.swift
//  Gintuemojir
//
//  Created by Gintuemojir on 2025/1/17.
//

import UIKit

class QYVXDataPoint: UIViewController {
    
    static var boolkSholkd:Bool = false
    
    @IBOutlet weak var gtemTisder: UILabel!
    
    
    @IBOutlet weak var inputerkoGTEm: UITextView!
    
    
    
    @IBOutlet weak var cananlBakGTEm: UIButton!
    @IBOutlet weak var agreeBakGTEm: UIButton!
    
    
    @IBOutlet weak var peerieeBakGTEm: UIButton!
    
    
    @IBOutlet weak var peetermeBakGTEm: UIButton!
    
    var jornyGTEM:(Int,Bool)
    init(_jornyGTEM: (Int,Bool)) {
        self.jornyGTEM = _jornyGTEM
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        cananlBakGTEm.addTarget(self, action: #selector(shuldCancelGTEkGtray), for: .touchUpInside)
        agreeBakGTEm.addTarget(self, action: #selector(shuldAgreeGTEkGtray), for: .touchUpInside)
        peerieeBakGTEm.addTarget(self, action: #selector(peerieeBakGTEmGTEkGtray), for: .touchUpInside)
        peetermeBakGTEm.addTarget(self, action: #selector(peetermeBakGTEmGTEkGtray), for: .touchUpInside)
        
        if jornyGTEM.0 == 0 {
            gtemTisder.text = "Ginne App ELUA"
            inputerkoGTEm.text =     """

1. Acceptance of Terms

By downloading, installing, or using the Ginne mobile application (the "App"), you agree to be bound by these End User License Agreement (EULA) terms and all applicable laws. If you do not agree to these terms, do not install or use the App.

2. License Grant

Ginne grants you a limited, non-exclusive, non-transferable license to use the App for personal, non-commercial purposes on your compatible devices. This license does not allow you to redistribute or sell the App or any part of it.

3. User Obligations

You agree not to:

Use the App for any unlawful purpose or in violation of any local, state, national, or international law.
Attempt to gain unauthorized access to the App or its related systems or networks.
Post any content that is defamatory, obscene, abusive, or otherwise objectionable.
4. Subscription Services

The App may offer subscription services that grant access to premium content, features, and functionalities. By subscribing, you agree to pay all applicable fees. Subscription fees are non-refundable unless otherwise stated.

5. Termination

Ginne reserves the right to terminate or suspend your access to the App at any time for any reason, including if you breach these terms. Upon termination, your right to use the App will cease immediately.

6. Disclaimer of Warranties

The App is provided "as is" and "as available" without warranties of any kind. Ginne does not guarantee the accuracy or reliability of content or any results obtained from using the App.

7. Limitation of Liability

To the fullest extent permitted by law, Ginne shall not be liable for any indirect, incidental, consequential, or punitive damages arising from your use of the App.

8. Changes to Terms

Ginne may modify these terms at any time. You are responsible for reviewing these terms periodically. Your continued use of the App after any changes constitutes acceptance of the new terms.

9. Governing Law

These terms shall be governed by the laws of [Your State/Country], without regard to its conflict of law principles.

10. Contact Information

For questions regarding this EULA, please contact us at [Ginne99826@gmail.com].

"""
        }
        
        if jornyGTEM.0 == 1 {
            self.peerieeBakGTEm.isHidden = true
            self.peetermeBakGTEm.isHidden = true
            
            
            gtemTisder.text = "Ginne App Privacy Policy"
            inputerkoGTEm.text = """

     At Ginne, we are committed to protecting your privacy. This Privacy Policy outlines how we collect, use, disclose, and safeguard your information when you use our mobile application (the "App"). By using the App, you agree to the collection and use of information in accordance with this policy.

     1. Information We Collect

     1.1 Personal Information

     When you create an account or interact with the App, we may collect personal information, including but not limited to:
     Name
     Email address
     Payment information (if applicable)
     Profile picture (optional)
     
     1.2 Usage Data

     We may also collect usage data automatically, which includes information such as:

     Device type
     Operating system
     Browser type
     Pages visited within the App
     Time and date of visits
     Duration of each visit
     
     1.3 Cookies and Tracking Technologies

     We may use cookies and similar tracking technologies to monitor activity on our App and store certain information. Cookies are files with a small amount of data that may include an anonymous unique identifier. You can instruct your browser to refuse all cookies or to indicate when a cookie is being sent. However, if you do not accept cookies, you may not be able to use some portions of our Service.

     2. How We Use Your Information

     We may use the information we collect for various purposes, including to:

     Provide, maintain, and improve our App and its services
     Create and manage your account
     Process transactions and send you related information
     Communicate with you regarding your account or transactions
     Respond to your comments, questions, and requests
     Send you updates, newsletters, and promotional materials (if you opt-in)
     Conduct research and analysis to understand user behavior
     Monitor usage of the App and detect technical issues
     3. Disclosure of Your Information

     3.1 Legal Requirements

     We may disclose your personal information in the good faith belief that such action is necessary to:

     Comply with a legal obligation
     Protect and defend the rights or property of Ginne
     Prevent or investigate possible wrongdoing in connection with the App
     Protect the personal safety of users of the App or the public
     Protect against legal liability
     3.2 Third-Party Service Providers

     We may employ third-party companies and individuals to facilitate our App ("Service Providers"), provide the App on our behalf, perform App-related services, or assist us in analyzing how our App is used. These third parties have access to your personal information only to perform these tasks on our behalf and are obligated not to disclose or use it for any other purpose.

     4. Data Security

     The security of your data is important to us, but remember that no method of transmission over the Internet or method of electronic storage is 100% secure. While we strive to use commercially acceptable means to protect your personal information, we cannot guarantee its absolute security.

     5. Your Rights

     Depending on your location, you may have certain rights regarding your personal information, including:

     The right to access, update, or delete the information we have on you.
     The right to request a copy of your personal information.
     The right to withdraw consent for processing your personal information.
     The right to object to or restrict the processing of your information.
     To exercise these rights, please contact us at [Insert Contact Email].

     6. Changes to This Privacy Policy

     We may update our Privacy Policy from time to time. We will notify you of any changes by posting the new Privacy Policy on this page with a new effective date. You are advised to review this Privacy Policy periodically for any changes. Changes to this Privacy Policy are effective when they are posted on this page.

     7. Contact Us

     If you have any questions about this Privacy Policy, please contact us:

     Email: [Ginne99826@gmail.com]
     By using the Ginne App, you acknowledge that you have read this Privacy Policy and agree to its terms.            

"""
        }
        
        if jornyGTEM.0 == 2 {
            self.peerieeBakGTEm.isHidden = true
            self.peetermeBakGTEm.isHidden = true
           
            gtemTisder.text = "Ginne App Terms of Service"
            inputerkoGTEm.text = """
            Effective Date: [2025-2-1]

            Welcome to Ginne! By accessing or using our App, you agree to comply with and be bound by these Terms of Service. Please read them carefully.

            1. Use of the App

            You must be at least 18 years old to use the App. By using the App, you represent that you meet this age requirement.

            2. Account Security

            You are responsible for maintaining the confidentiality of your account information, including your password. You agree to notify us immediately of any unauthorized use of your account.

            3. Content Ownership

            All content made available through the App, including but not limited to videos, images, and text, is owned by Ginne or its licensors. You may not use, reproduce, or distribute this content without written permission.

            4. User-Generated Content

            You are solely responsible for any content you post or share within the App. By posting content, you grant Ginne a worldwide, royalty-free, and non-exclusive license to use, reproduce, and distribute that content.

            5. Prohibited Activities

            You agree not to engage in activities that could harm the App or other users, including but not limited to spamming, hacking, or distributing malware.

            6. Dispute Resolution

            Any disputes arising from or relating to these Terms of Service shall be resolved through binding arbitration in accordance with the rules of [Arbitration Organization].

            7. Changes to Terms

            Ginne reserves the right to modify these Terms of Service at any time. Your continued use of the App after any changes constitutes acceptance of the new terms.
            
            """
        }
    }

   
    @objc func shuldCancelGTEkGtray()  {
        if jornyGTEM.0 == 0 {
            QYVXDataPoint.boolkSholkd = false
        }
        self.navigationController?.popViewController(animated: true)
    }
    
    @objc func shuldAgreeGTEkGtray()  {
        if jornyGTEM.0 == 0 {
            QYVXDataPoint.boolkSholkd = true
        }
        self.navigationController?.popViewController(animated: true)
    }
    
    @objc func peerieeBakGTEmGTEkGtray()  {
        self.navigationController?.pushViewController(QYVXDataPoint.init(_jornyGTEM: (1,false)), animated: true)
    }
    
    @objc func peetermeBakGTEmGTEkGtray()  {
        self.navigationController?.pushViewController(QYVXDataPoint.init(_jornyGTEM: (2,false)), animated: true)
    }
    
 

    
    
    @IBAction func navibakerinhGTEM(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }
    
    
    
    
    
    
}
