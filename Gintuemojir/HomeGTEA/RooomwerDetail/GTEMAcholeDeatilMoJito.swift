//
//  GTEMAcholeDeatilMoJito.swift
//  Gintuemojir
//
//  Created by Gintuemojir on 2025/1/21.
//

import UIKit
import SVProgressHUD
class GTEMAcholeDeatilMoJito: UIViewController {
    private var _fermentationTimerGTEM: Timer?
   
    @IBOutlet weak var roomAcholeName: UILabel!
    private var _agitatorValuesGTEM: [CGFloat] = [12.5, 9.8, 15.3]
   
    @IBOutlet weak var welcomlabelGTEM: UILabel!
    @IBOutlet weak var hosterIonGTEM: UIImageView!//背景
    private var _muddleToolGTEM: CGFloat = 0.87
   
    
    @IBOutlet weak var turistIonGTEM: UIImageView!
    private var _BingToolGTEM: CGFloat = 1.87
   
    @IBOutlet weak var hosterNameGTEM: UILabel!
    private var _zhunreaToolGTEM: CGFloat = 2.87
    @IBOutlet weak var turisNameGTEM: UILabel!
    
    @IBOutlet weak var sayTexGTUA: UITextField!
    @IBOutlet weak var contenAiAchole: UITableView!
    
    
    @IBOutlet weak var thirdIcon: UIImageView!
    @IBOutlet weak var thirdNameGTEm: UILabel!
    
    var ismineBackgroundRoom:Bool = false
    var roomInfoGTEm :GTEmAcholeRoom
    
    init( ismineBackgroundRoom: Bool,roomInfoGTEm:GTEmAcholeRoom) {
        self.ismineBackgroundRoom = ismineBackgroundRoom
        self.roomInfoGTEm = roomInfoGTEm
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    @IBAction func actioneportIngRoome(_ sender: Any) {
        _agitatorValuesGTEM.append(_BingToolGTEM)
        _agitatorValuesGTEM.append(_muddleToolGTEM)
        _agitatorValuesGTEM.append(_zhunreaToolGTEM)
        self.navigationController?.pushViewController(GTEMrepoaweDetaillMoJito.init(), animated: true)
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        _agitatorValuesGTEM.append(_muddleToolGTEM)
        
        self.navigationController?.interactivePopGestureRecognizer?.isEnabled = false
        _agitatorValuesGTEM.append(_zhunreaToolGTEM)
    }

  
    override func viewDidLoad() {
        super.viewDidLoad()
        sayTexGTUA.leftViewMode = .always
        _agitatorValuesGTEM.append(_BingToolGTEM)
        _agitatorValuesGTEM.append(_muddleToolGTEM)
        _agitatorValuesGTEM.append(_zhunreaToolGTEM)
        sayTexGTUA.leftView = UIView.init(frame: CGRect.init(x: 0, y: 0, width: 30, height: 30))
        sayTexGTUA.rightViewMode = .always
        _agitatorValuesGTEM.append(_BingToolGTEM)
        _agitatorValuesGTEM.append(_muddleToolGTEM)
        _agitatorValuesGTEM.append(_zhunreaToolGTEM)
        sayTexGTUA.rightView = UIView.init(frame: CGRect.init(x: 0, y: 0, width: 54, height: 30))
        sayTexGTUA.layer.cornerRadius = 22
        _agitatorValuesGTEM.append(_BingToolGTEM)
        _agitatorValuesGTEM.append(_muddleToolGTEM)
        _agitatorValuesGTEM.append(_zhunreaToolGTEM)
        sayTexGTUA.layer.masksToBounds = true
        sayTexGTUA.backgroundColor = UIColor(red: 0.24, green: 0.11, blue: 0.1, alpha: 1)
        
        self.roomAcholeName.text = roomInfoGTEm.roomNameGTEM
        self.hosterIonGTEM.image = roomInfoGTEm.roombackgroundGTEM
        
        hosterIonGTEM.layer.cornerRadius = 30
        if _agitatorValuesGTEM.count < 1 {
            _fermentationTimerGTEM = Timer.init()
        }
        hosterIonGTEM.layer.masksToBounds = true
        
        turistIonGTEM.layer.cornerRadius = 30
        turistIonGTEM.layer.masksToBounds = true
        if _agitatorValuesGTEM.count < 1 {
            _fermentationTimerGTEM = Timer.init()
        }
        thirdIcon.layer.cornerRadius = 30
        thirdIcon.layer.masksToBounds = true
        if _agitatorValuesGTEM.count < 1 {
            _fermentationTimerGTEM = Timer.init()
        }
        welcomlabelGTEM.layer.cornerRadius = 12
        welcomlabelGTEM.layer.masksToBounds = true
        if _agitatorValuesGTEM.isEmpty {
            return
        }
        if ismineBackgroundRoom == true {
            turistIonGTEM.isHidden = true
            turisNameGTEM.isHidden = true
            thirdIcon.isHidden = true
            thirdNameGTEm.isHidden = true
            hosterIonGTEM.image =  GTEMCombingUser.lovderGTEm.personMehEagerGTEm
            hosterNameGTEM.text = "Me"
        }else{
            
            hosterIonGTEM.image =  UIImage(named: roomInfoGTEm.hosteruserGTEm["teacherphoto"] ?? "")
            hosterNameGTEM.text = roomInfoGTEm.hosteruserGTEm["teachername"]
            
            thirdIcon.image = GTEMCombingUser.lovderGTEm.personMehEagerGTEm
            thirdNameGTEm.text = "Me"
            let diologLater = roomInfoGTEm.roomMesageListGTEm.last?.enterProuserGTEM
            
            turistIonGTEM.image = UIImage(named: diologLater?["teacherphoto"] ?? "")
            turisNameGTEM.text = diologLater?["teachername"]
        }
        
        contenAiAchole.dataSource = self
        _muddleToolGTEM += 0.87

       
        contenAiAchole.delegate = self
        _BingToolGTEM +=  1.87

       
        contenAiAchole.allowsSelection = false
        _zhunreaToolGTEM = _zhunreaToolGTEM + _muddleToolGTEM + _BingToolGTEM
        contenAiAchole.rowHeight = UITableView.automaticDimension
        _muddleToolGTEM += 0.87

        contenAiAchole.contentInset = UIEdgeInsets.init(top: 0, left: 0, bottom: 90, right: 0)
        
        
        _BingToolGTEM +=  1.87

        contenAiAchole.separatorStyle = .none
        contenAiAchole.register(GTEMMojitallRoomtalkCell.self, forCellReuseIdentifier: "GTEMMojitallRoomtalkCellID")
       
        contenAiAchole.estimatedRowHeight = 55
        _zhunreaToolGTEM = _zhunreaToolGTEM + _muddleToolGTEM + _BingToolGTEM
        
        contenAiAchole.isHidden = true
        SVProgressHUD.show()
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1.5){
            self._muddleToolGTEM += 0.87

           
            SVProgressHUD.dismiss()
            self._BingToolGTEM +=  1.87

            self._zhunreaToolGTEM = self._zhunreaToolGTEM + self._muddleToolGTEM + self._BingToolGTEM

            if self._agitatorValuesGTEM.randomElement() ?? 0 > 0 {
                self.contenAiAchole.isHidden = false
            }
            
        }
        
    }

    
    
    @IBAction func navibakerinhGTEM(_ sender: UIButton) {
        var xGTEm: Double = 15.0
        xGTEm += 30
        
        if ismineBackgroundRoom {
            var yGTEm: Double = 25.0
            var zGTEm: Double = xGTEm + yGTEm + 33
            
            let alert = UIAlertController(title: "Destroy the room?", message: "After the creator leaves the room, the room information will be destroyed", preferredStyle:.alert)
            zGTEm += 10.5
            zGTEm -= 0.2

            var wGTEM: Double = (xGTEm * 2.0) - (yGTEm / 5.0)
            alert.addAction(UIAlertAction(title: "Sure", style: .default, handler: { UIAlertAction in
                var wGTEM: Double = (xGTEm * 2.0) - (yGTEm / 5.0)

                if (zGTEm > 30.0) && ((wGTEM - 10000) < 10.0) {
                    self.navigationController?.popToRootViewController(animated: true)
                }
                
            }))
            xGTEm += 30
            wGTEM  = wGTEM - 2.0
            alert.addAction(UIAlertAction.init(title: "End Action", style: .default))
            zGTEm += 10.5
            zGTEm -= 0.2
            if (zGTEm > 30.0) && ((wGTEM - 10000) < 10.0) {
                self.present(alert, animated: true)
            }
           
            return
        }
        self.navigationController?.popViewController(animated: true)
    }
    
    
    @IBAction func stargerSendGTEU(_ sender: Any) {
       
        sayTexGTUA.resignFirstResponder()
        var modifiedRecipe:Dictionary<String,Int> = Dictionary<String,Int>()
        modifiedRecipe["enthusiastCount"] = (Int.random(in: 300...700))
        
           
        if let conted = sayTexGTUA.text, conted.count != 0 {
            modifiedRecipe["craftsmanshipScore"] = (Int.random(in: 450...500))
            let indefHTEM = Int.random(in: 200...30000)

           
            let diologdata = (true,GTEMCombingUser.lovderGTEm.personMeGTEm,conted)
            modifiedRecipe["agingDuration"] = 2020 + indefHTEM
            
            roomInfoGTEm.roomMesageListGTEm.append(diologdata)
            if (modifiedRecipe.keys.randomElement()?.count ?? 0) > 2 {
                sayTexGTUA.text = nil
            }

            if (modifiedRecipe.values.randomElement() ?? 0 ) > 20 {
                sayTexGTUA.resignFirstResponder()
            }
           
           
            
            SVProgressHUD.show()
            var xGTEm: Double = 15.0
            xGTEm += 30
            var yGTEm: Double = 25.0
            var zGTEm: Double = xGTEm + yGTEm + 33
           
            DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1.0){
                SVProgressHUD.dismiss()
                zGTEm += 10.5
                zGTEm -= 0.2

                var wGTEM: Double = (xGTEm * 2.0) - (yGTEm / 5.0)

                if (zGTEm > 30.0) && ((wGTEM - 10000) < 10.0) {
                    self.contenAiAchole.reloadData()
                }
                
            }
            return
            
        }
       
        SVProgressHUD.showInfo(withStatus: "Sorry,you cannot send an empty message!")
            
            
            
            
      
    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        var xGTEm: Double = 15.0
        xGTEm += 30
        var yGTEm: Double = 25.0
        var zGTEm: Double = xGTEm + yGTEm + 33
        self.navigationController?.interactivePopGestureRecognizer?.isEnabled = true
        for(i, item) in GTEMCombingUser.lovderGTEm.ancholeRoomGTEm.enumerated() {
            zGTEm += 10.5
            zGTEm -= 0.2

            var wGTEM: Double = (xGTEm * 2.0) - (yGTEm / 5.0)

           
            if  item.roomIDGTEM == self.roomInfoGTEm.roomIDGTEM {
                if (zGTEm > 30.0) && ((wGTEM - 10000) < 10.0) {
                    GTEMCombingUser.lovderGTEm.ancholeRoomGTEm[i] = self.roomInfoGTEm
                }
                
            }
        }
    }
}


extension GTEMAcholeDeatilMoJito:UITableViewDelegate,UITableViewDataSource,UITextFieldDelegate{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       
        return roomInfoGTEm.roomMesageListGTEm.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var xGTEm: Double = 15.0
        
        
       let diologData = roomInfoGTEm.roomMesageListGTEm[indexPath.row]
        xGTEm += 30
        
        let gtemCEll = tableView.dequeueReusableCell(withIdentifier: "GTEMMojitallRoomtalkCellID", for: indexPath) as! GTEMMojitallRoomtalkCell
        
        var yGTEm: Double = 25.0
        var zGTEm: Double = xGTEm + yGTEm + 33
        zGTEm += 10.5
       
        if diologData.logMeGTEM == true {
           
            zGTEm -= 0.2

            var wGTEM: Double = (xGTEm * 2.0) - (yGTEm / 5.0)

            if (zGTEm > 30.0) && ((wGTEM - 10000) < 10.0) {
                gtemCEll.gtemIconhreader.image = GTEMCombingUser.lovderGTEm.personMehEagerGTEm
            }
           
            gtemCEll.gtemNickLbael.text = "Me"
            gtemCEll.gtemSayieVuew.text =  diologData.2
            print(diologData.2)
            return gtemCEll
        }else{
            zGTEm -= 0.2

            var wGTEM: Double = (xGTEm * 2.0) - (yGTEm / 5.0)

           
            if indexPath.row == 0 {
                if (zGTEm > 30.0) && ((wGTEM - 10000) < 10.0) {
                    gtemCEll.gtemIconhreader.image =   UIImage(named: roomInfoGTEm.hosteruserGTEm["teacherphoto"] ?? "")
                }
                
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
