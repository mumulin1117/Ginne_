//
//  GTEMAcholeDeatilMoJito.swift
//  Gintuemojir
//
//  Created by Gintuemojir on 2025/1/21.
//

import UIKit
import JGProgressHUD
class GTEMAcholeDeatilMoJito: UIViewController {
    let maxMessageLengthGTEm = 250
   
    @IBOutlet weak var roomAcholeName: UILabel!
    let welcomeMessageGTEm = "Welcome to the Cocktail Chat Room!"
   
    @IBOutlet weak var welcomlabelGTEM: UILabel!
    @IBOutlet weak var hosterIonGTEM: UIImageView!//背景
    
    var messagesGTEm: [String] = []
    
    @IBOutlet weak var turistIonGTEM: UIImageView!
    var currentUserNameGTEm: String?
   
    @IBOutlet weak var hosterNameGTEM: UILabel!
    var isUserLoggedInGTEm: Bool = true
    @IBOutlet weak var turisNameGTEM: UILabel!
    
    @IBOutlet weak var sayTexGTUA: UITextField!
    @IBOutlet weak var contenAiAchole: UITableView!
    var chatInputTextGTEm: String = ""
    
    @IBOutlet weak var thirdIcon: UIImageView!
    @IBOutlet weak var thirdNameGTEm: UILabel!
    var participantsCountGTEm: Int = 0
    private  var ismineBackgroundRoom:Bool = false
    private  var roomInfoGTEm :GTEmAcholeFangjian
    
    private var ijiuGTERER:Int
    
    init( ismineBackgroundRoom: Bool,roomInfoGTEm:(Int,GTEmAcholeFangjian)) {
        self.ismineBackgroundRoom = ismineBackgroundRoom
        self.roomInfoGTEm = roomInfoGTEm.1
        ijiuGTERER = roomInfoGTEm.0
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init GTEMloa&-%-%-&ing werrouu")
    }
    
    @IBAction func actioneportIngRoome(_ sender: Any) {
        
        
        
        self.navigationController?.pushViewController(GTEMrepoaweDetaillMoJito.init(), animated: true)
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        
        self.navigationController?.interactivePopGestureRecognizer?.isEnabled = false
        
    }
    func displayGTEMMessages() {
        sayTexGTUA.rightViewMode = .always
        sayTexGTUA.layer.cornerRadius = 22
        welcomlabelGTEM.layer.masksToBounds = true
        
        
        turistIonGTEM.layer.masksToBounds = true
        thirdIcon.layer.masksToBounds = true
        sayTexGTUA.layer.masksToBounds = true
    }
  
    override func viewDidLoad() {
        super.viewDidLoad()
        sayTexGTUA.leftViewMode = .always
        
        
        
        sayTexGTUA.leftView = UIView.init(frame: CGRect.init(x: 0, y: 0, width: 30, height: 30))
       
        
        displayGTEMMessages()
        
        sayTexGTUA.rightView = UIView.init(frame: CGRect.init(x: 0, y: 0, width: 54, height: 30))
       
        sayTexGTUA.backgroundColor = UIColor(red: 0.24, green: 0.11, blue: 0.1, alpha: 1)
        
        self.roomAcholeName.text = roomInfoGTEm.fangjainNameGTEM
        self.hosterIonGTEM.image = roomInfoGTEm.roombackgroundGTEM
        
        gaomasktlayerHGTEM()
       
        if ismineBackgroundRoom == true {
            turistIonGTEM.isHidden = true
            turisNameGTEM.isHidden = true
            thirdIcon.isHidden = true
            thirdNameGTEm.isHidden = true
            hosterIonGTEM.image =  GTEMCombingUser.lovderGTEm.personMehEagerGTEm.first
            hosterNameGTEM.text = "M&-%-%-&e".replacingOccurrences(of: "&-%-%-&", with: "")
        }else{
            
            hosterIonGTEM.image =  UIImage(named: roomInfoGTEm.hosteruserGTEm["teacherphoto"] ?? "")
            hosterNameGTEM.text = roomInfoGTEm.hosteruserGTEm["teachername"]
            
            thirdIcon.image = GTEMCombingUser.lovderGTEm.personMehEagerGTEm.first
            thirdNameGTEm.text = "M&-%-%-&e".replacingOccurrences(of: "&-%-%-&", with: "")
            let diologLater = roomInfoGTEm.roomMesageListGTEm.last?.enterProuserGTEM
            
            turistIonGTEM.image = UIImage(named: diologLater?["teacherphoto"] ?? "")
            turisNameGTEM.text = diologLater?["teachername"]
        }
        
        contenAiAchole.dataSource = self
        

       
        contenAiAchole.delegate = self
        

        sureGTEMlogoutUser()
        
       
        contenAiAchole.estimatedRowHeight = 55
        contenAiAchole.isHidden = true
        let hudLoadingGTEM = JGProgressHUD(style: .light)
        hudLoadingGTEM.textLabel.text = "Loa&-%-%-&ding&-%-%-&...".replacingOccurrences(of: "&-%-%-&", with: "")
        hudLoadingGTEM.show(in: self.view)
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1.5){
           
            hudLoadingGTEM.dismiss()
            
            self.contenAiAchole.isHidden = false
            
        }
        
    }
    func sureGTEMlogoutUser() {
        contenAiAchole.allowsSelection = false
      
        contenAiAchole.rowHeight = UITableView.automaticDimension
        

        if isUserLoggedInGTEm {
            currentUserNameGTEm = nil
            isUserLoggedInGTEm = true
            participantsCountGTEm -= 1
            
        }
        
      
        contenAiAchole.contentInset = UIEdgeInsets.init(top: 0, left: 0, bottom: 90, right: 0)
        
        
        

        contenAiAchole.separatorStyle = .none
        contenAiAchole.register(GTEMMojitallRoomtalkCell.self, forCellReuseIdentifier: "GTEMMojitallRoomtalkCellID")
        
    }
    
    
    @IBAction func navibakerinhGTEM(_ sender: UIButton) {
        
        
        if isUserLoggedInGTEm {
            currentUserNameGTEm = nil
            isUserLoggedInGTEm = true
            participantsCountGTEm -= 1
            
        }
        if ismineBackgroundRoom {
            
             
            

            let aleGTEMrt = UIAlertController(title: "De&-%-%-&stroy &-%-%-&the room?".replacingOccurrences(of: "&-%-%-&", with: ""), message: "After the cre&-%-%-&ator lea&-%-%-&ves the&-%-%-& room, the&-%-%-& room &-%-%-&information &-%-%-&will be destroyed", preferredStyle:.alert)
            
            

            
            aleGTEMrt.addAction(UIAlertAction(title: "S&-%-%-&ure".replacingOccurrences(of: "&-%-%-&", with: ""), style: .default, handler: { UIAlertAction in
                
                self.navigationController?.popToRootViewController(animated: true)
                
            }))
           
            aleGTEMrt.addAction(UIAlertAction.init(title: "En&-%-%-&d Act&-%-%-&ion".replacingOccurrences(of: "&-%-%-&", with: ""), style: .default))
            
            self.present(aleGTEMrt, animated: true)
           
            return
        }
        self.navigationController?.popViewController(animated: true)
    }
    
    
    @IBAction func stargerSendGTEU(_ sender: Any) {
       
        sayTexGTUA.resignFirstResponder()
        
        
        guard isUserLoggedInGTEm == true else {
     
            return
        }
        
     
        if let conted = sayTexGTUA.text, conted.count != 0 {
            
            guard conted.count <= maxMessageLengthGTEm else {
                let hudLoadingGTEM = JGProgressHUD(style: .light)
                hudLoadingGTEM.textLabel.text = "Message exceeds maximum length.".replacingOccurrences(of: "&-%-%-&", with: "")
                hudLoadingGTEM.show(in: self.view)
                hudLoadingGTEM.dismiss(afterDelay: 2)
                return
            }
           
            
            messagesGTEm.append("\(currentUserNameGTEm ?? "Anonymous"): \(conted)")
         

           
            let diologdata = ("isme", GTEMCombingUser.lovderGTEm.personMeGTEm[0],conted)
            
            
            roomInfoGTEm.roomMesageListGTEm.append(diologdata)
            sayTexGTUA.text = nil

            
           
            
            let hudLoadingGTEM = JGProgressHUD(style: .light)
            hudLoadingGTEM.textLabel.text = "Loa&-%-%-&ding&-%-%-&...".replacingOccurrences(of: "&-%-%-&", with: "")
            sayTexGTUA.resignFirstResponder()
            hudLoadingGTEM.show(in: self.view)
            
            
            
            
            DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1.0){
                hudLoadingGTEM.dismiss()
                
                self.isUserLoggedInGTEm = true

                self.contenAiAchole.reloadData()
                
            }
            return
            
        }
       
        
        let hudINfoGTEM = JGProgressHUD(style: .light)
        
        hudINfoGTEM.textLabel.text = "S&-%-%-&orry,yo&-%-%-&u can&-%-%-&not send &-%-%-&an empty me&-%-%-&ssage!".replacingOccurrences(of: "&-%-%-&", with: "")
        self.isUserLoggedInGTEm = true
        hudINfoGTEM.show(in: self.view)
        self.isUserLoggedInGTEm = true
        hudINfoGTEM.dismiss(afterDelay: 2.0)
           
      
    }
    func loginGTEMUser(name: String) {
        // Method to log in the user
        currentUserNameGTEm = name
        isUserLoggedInGTEm = true
        participantsCountGTEm += 1
       
        
    }
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        displayFangjainGTEMMessages()
        self.navigationController?.interactivePopGestureRecognizer?.isEnabled = true
        for(i, item) in GTEMCombingUser.lovderGTEm.ancholeRoomGTEm.1.enumerated() {
            self.isUserLoggedInGTEm = true
            if  item.fangjainIDGTEM == self.roomInfoGTEm.fangjainIDGTEM {
                self.isUserLoggedInGTEm = true
                GTEMCombingUser.lovderGTEm.ancholeRoomGTEm.1[i] = self.roomInfoGTEm
                
            }
        }
    }
}


extension GTEMAcholeDeatilMoJito:UITableViewDelegate,UITableViewDataSource,UITextFieldDelegate{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       
        return roomInfoGTEm.roomMesageListGTEm.count
    }
    
    
    func displayFangjainGTEMMessages() {
           
        messagesGTEm.removeAll()
      
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        
        
       let diologData = roomInfoGTEm.roomMesageListGTEm[indexPath.row]
        
        
        let gtemCEll = tableView.dequeueReusableCell(withIdentifier: "GTEMMojitallRoomtalkCellID", for: indexPath) as! GTEMMojitallRoomtalkCell
        
        
        
        
       
        if diologData.logMeGTEM == ("is&-%-%-&me".replacingOccurrences(of: "&-%-%-&", with: "")) {
           
            

            
            gtemCEll.gtemIconhreader.image = GTEMCombingUser.lovderGTEm.personMehEagerGTEm.first
           
            gtemCEll.gtemNickLbael.text = "M&-%-%-&e".replacingOccurrences(of: "&-%-%-&", with: "")
            gtemCEll.gtemSayieVuew.text =  diologData.2
            print(diologData.2)
            return gtemCEll
        }else{
            

            

           
            if indexPath.row == 0 {
                gtemCEll.gtemIconhreader.image =   UIImage(named: roomInfoGTEm.hosteruserGTEm["teacherphoto"] ?? "")
                
                gtemCEll.gtemNickLbael.text = roomInfoGTEm.hosteruserGTEm["teachername"]
            }
            
            if indexPath.row == 1 {
                let diologLater = roomInfoGTEm.roomMesageListGTEm[1].enterProuserGTEM
                gtemCEll.gtemIconhreader.image =   UIImage(named: diologLater["teacherphoto"] ?? "")
                gtemCEll.gtemNickLbael.text = diologLater["teachername"]
            }
            
            gtemCEll.gtemSayieVuew.text =  diologData.2
            
        }
        
       
       
        return gtemCEll
    }
    
    
    func gaomasktlayerHGTEM() {
        hosterIonGTEM.layer.cornerRadius = 30
        
        hosterIonGTEM.layer.masksToBounds = true
        
        turistIonGTEM.layer.cornerRadius = 30
        
        thirdIcon.layer.cornerRadius = 30
        
        
        welcomlabelGTEM.layer.cornerRadius = 12
    }
}
