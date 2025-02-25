//
//  GTEMAcholeDeatilMoJito.swift
//  Gintuemojir
//
//  Created by Gintuemojir on 2025/1/21.
//

import UIKit
import JGProgressHUD
class GTEMAcholeDeatilMoJito: UIViewController {
    
   
    @IBOutlet weak var roomAcholeName: UILabel!
    
   
    @IBOutlet weak var welcomlabelGTEM: UILabel!
    @IBOutlet weak var hosterIonGTEM: UIImageView!//背景
    
   
    
    @IBOutlet weak var turistIonGTEM: UIImageView!
    
   
    @IBOutlet weak var hosterNameGTEM: UILabel!
    
    @IBOutlet weak var turisNameGTEM: UILabel!
    
    @IBOutlet weak var sayTexGTUA: UITextField!
    @IBOutlet weak var contenAiAchole: UITableView!
    
    
    @IBOutlet weak var thirdIcon: UIImageView!
    @IBOutlet weak var thirdNameGTEm: UILabel!
    
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
        fatalError("init(coder:) has not been implemented")
    }
    
    @IBAction func actioneportIngRoome(_ sender: Any) {
        
        
        
        self.navigationController?.pushViewController(GTEMrepoaweDetaillMoJito.init(), animated: true)
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        
        self.navigationController?.interactivePopGestureRecognizer?.isEnabled = false
        
    }

  
    override func viewDidLoad() {
        super.viewDidLoad()
        sayTexGTUA.leftViewMode = .always
        
        
        
        sayTexGTUA.leftView = UIView.init(frame: CGRect.init(x: 0, y: 0, width: 30, height: 30))
        sayTexGTUA.rightViewMode = .always
        
        
        
        sayTexGTUA.rightView = UIView.init(frame: CGRect.init(x: 0, y: 0, width: 54, height: 30))
        sayTexGTUA.layer.cornerRadius = 22
        
        
        
        sayTexGTUA.layer.masksToBounds = true
        sayTexGTUA.backgroundColor = UIColor(red: 0.24, green: 0.11, blue: 0.1, alpha: 1)
        
        self.roomAcholeName.text = roomInfoGTEm.fangjainNameGTEM
        self.hosterIonGTEM.image = roomInfoGTEm.roombackgroundGTEM
        
        hosterIonGTEM.layer.cornerRadius = 30
        
        hosterIonGTEM.layer.masksToBounds = true
        
        turistIonGTEM.layer.cornerRadius = 30
        turistIonGTEM.layer.masksToBounds = true
        
        thirdIcon.layer.cornerRadius = 30
        thirdIcon.layer.masksToBounds = true
        
        welcomlabelGTEM.layer.cornerRadius = 12
        welcomlabelGTEM.layer.masksToBounds = true
        
        if ismineBackgroundRoom == true {
            turistIonGTEM.isHidden = true
            turisNameGTEM.isHidden = true
            thirdIcon.isHidden = true
            thirdNameGTEm.isHidden = true
            hosterIonGTEM.image =  GTEMCombingUser.lovderGTEm.personMehEagerGTEm.first
            hosterNameGTEM.text = "Me"
        }else{
            
            hosterIonGTEM.image =  UIImage(named: roomInfoGTEm.hosteruserGTEm["teacherphoto"] ?? "")
            hosterNameGTEM.text = roomInfoGTEm.hosteruserGTEm["teachername"]
            
            thirdIcon.image = GTEMCombingUser.lovderGTEm.personMehEagerGTEm.first
            thirdNameGTEm.text = "Me"
            let diologLater = roomInfoGTEm.roomMesageListGTEm.last?.enterProuserGTEM
            
            turistIonGTEM.image = UIImage(named: diologLater?["teacherphoto"] ?? "")
            turisNameGTEM.text = diologLater?["teachername"]
        }
        
        contenAiAchole.dataSource = self
        

       
        contenAiAchole.delegate = self
        

       
        contenAiAchole.allowsSelection = false
      
        contenAiAchole.rowHeight = UITableView.automaticDimension
        

        contenAiAchole.contentInset = UIEdgeInsets.init(top: 0, left: 0, bottom: 90, right: 0)
        
        
        

        contenAiAchole.separatorStyle = .none
        contenAiAchole.register(GTEMMojitallRoomtalkCell.self, forCellReuseIdentifier: "GTEMMojitallRoomtalkCellID")
       
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

    
    
    @IBAction func navibakerinhGTEM(_ sender: UIButton) {
        
        
        
        if ismineBackgroundRoom {
            
             
            

            let alert = UIAlertController(title: "Destroy the room?".replacingOccurrences(of: "&-%-%-&", with: ""), message: "After the creator leaves the room, the room information will be destroyed", preferredStyle:.alert)
            
            

            
            alert.addAction(UIAlertAction(title: "Sure", style: .default, handler: { UIAlertAction in
                
                self.navigationController?.popToRootViewController(animated: true)
                
            }))
           
            alert.addAction(UIAlertAction.init(title: "End Action", style: .default))
            
            self.present(alert, animated: true)
           
            return
        }
        self.navigationController?.popViewController(animated: true)
    }
    
    
    @IBAction func stargerSendGTEU(_ sender: Any) {
       
        sayTexGTUA.resignFirstResponder()
        
        
        
           
        if let conted = sayTexGTUA.text, conted.count != 0 {
            
            

           
            let diologdata = ("isme", GTEMCombingUser.lovderGTEm.personMeGTEm[0],conted)
            
            
            roomInfoGTEm.roomMesageListGTEm.append(diologdata)
            sayTexGTUA.text = nil

            sayTexGTUA.resignFirstResponder()
           
            
            let hudLoadingGTEM = JGProgressHUD(style: .light)
            hudLoadingGTEM.textLabel.text = "Loa&-%-%-&ding&-%-%-&...".replacingOccurrences(of: "&-%-%-&", with: "")
            hudLoadingGTEM.show(in: self.view)
            
            
            
            
            DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1.0){
                hudLoadingGTEM.dismiss()
                
                

                self.contenAiAchole.reloadData()
                
            }
            return
            
        }
       
        
        let hudINfoGTEM = JGProgressHUD(style: .light)
        hudINfoGTEM.textLabel.text = "Sorry,you cannot send an empty message!"
        hudINfoGTEM.show(in: self.view)
        hudINfoGTEM.dismiss(afterDelay: 2.0)
           
      
    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        
        self.navigationController?.interactivePopGestureRecognizer?.isEnabled = true
        for(i, item) in GTEMCombingUser.lovderGTEm.ancholeRoomGTEm.1.enumerated() {
            
            

            

           
            if  item.fangjainIDGTEM == self.roomInfoGTEm.fangjainIDGTEM {
                GTEMCombingUser.lovderGTEm.ancholeRoomGTEm.1[i] = self.roomInfoGTEm
                
            }
        }
    }
}


extension GTEMAcholeDeatilMoJito:UITableViewDelegate,UITableViewDataSource,UITextFieldDelegate{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       
        return roomInfoGTEm.roomMesageListGTEm.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        
        
       let diologData = roomInfoGTEm.roomMesageListGTEm[indexPath.row]
        
        
        let gtemCEll = tableView.dequeueReusableCell(withIdentifier: "GTEMMojitallRoomtalkCellID", for: indexPath) as! GTEMMojitallRoomtalkCell
        
        
        
        
       
        if diologData.logMeGTEM == "isme" {
           
            

            
            gtemCEll.gtemIconhreader.image = GTEMCombingUser.lovderGTEm.personMehEagerGTEm.first
           
            gtemCEll.gtemNickLbael.text = "Me"
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
    
}
