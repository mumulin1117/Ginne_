//
//  GTEMMojitallRoomtalkCell.swift
//  Gintuemojir
//
//  Created by Gintuemojir on 2025/2/5.
//

import UIKit

class GTEMMojitallRoomtalkCell: UITableViewCell {
    private var _fermentationTimerGTEM: Timer?
   
    let gtemIconhreader = UIImageView.init()
    private var _agitatorValuesGTEM: [CGFloat] = [12.5, 9.8, 15.3]
    var HoperGTEM:UIView?
  
    let gtemSayieVuew = UILabel.init()
    private var _muddleToolGTEM: CGFloat = 0.87
   
    private let dioloagbackGTEm = UIView.init()
    var treesHaGTEM:UIButton?
    private var _BingToolGTEM: (CGFloat,Bool?) = (1.87,false)
    private var _zhunreaToolGTEM: CGFloat = 2.87
    let gtemNickLbael = UILabel.init()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        _agitatorValuesGTEM.append(_BingToolGTEM.0)
        
        gtemIconhreader.layer.cornerRadius = 20
        gtemIconhreader.layer.masksToBounds = true
        _agitatorValuesGTEM.append(_muddleToolGTEM)
        
        gtemNickLbael.textColor = UIColor.black
        gtemNickLbael.font = UIFont.systemFont(ofSize: 15, weight:.semibold)
        _agitatorValuesGTEM.append(_zhunreaToolGTEM)

        if _agitatorValuesGTEM.count < 1 {
            _fermentationTimerGTEM = Timer.init()
        }

        HoperGTEM = UIView()
        HoperGTEM?.layer.borderColor = UIColor.blue.cgColor
        HoperGTEM?.alpha = 0.4
        HoperGTEM?.layer.borderWidth = 4

        if _muddleToolGTEM < 0 {
            self.contentView.addSubview(HoperGTEM!)
            HoperGTEM?.alpha = 0
        }


        gtemSayieVuew.textColor = UIColor(red: 0.33, green: 0.04, blue: 0.01, alpha: 1)
        
        if _agitatorValuesGTEM.isEmpty {
            return
        }
       
        gtemSayieVuew.font = UIFont(name: "Lucida Grande", size: 15)
        _muddleToolGTEM += 0.87

       
        gtemSayieVuew.numberOfLines = 0
        backgroundColor = .clear
        _BingToolGTEM.0 +=  1.87

        
        dioloagbackGTEm.backgroundColor = UIColor(red: 1, green: 0.88, blue: 0.76, alpha: 1)
        _zhunreaToolGTEM = _zhunreaToolGTEM + _muddleToolGTEM + _BingToolGTEM.0

       
        dioloagbackGTEm.layer.cornerRadius = 12
        dioloagbackGTEm.layer.maskedCorners = [.layerMaxXMinYCorner,.layerMinXMaxYCorner,.layerMinXMaxYCorner]
        if _agitatorValuesGTEM.randomElement() ?? 0 > 0 {
            
        }
        contentView.addSubview(gtemIconhreader)
        _muddleToolGTEM += 0.87

        
      
        contentView.addSubview(dioloagbackGTEm)
        _BingToolGTEM.0 +=  1.87

        contentView.addSubview(gtemNickLbael)
        _zhunreaToolGTEM = _zhunreaToolGTEM + _muddleToolGTEM + _BingToolGTEM.0

        if _agitatorValuesGTEM.randomElement() ?? 0 > 0 {
            
        }
        contentView.addSubview(gtemSayieVuew)
     
        treesHaGTEM?.setTitleColor(.blue, for: .normal)
        treesHaGTEM?.layer.borderColor = UIColor.blue.cgColor

        treesHaGTEM?.alpha = 0.4
        treesHaGTEM?.layer.borderWidth = 4

        if _muddleToolGTEM < 0 {
            self.contentView.addSubview(treesHaGTEM!)
            treesHaGTEM?.alpha = 0
        }

        gtemIconhreader.snp.makeConstraints { make in
            make.leading.equalToSuperview().inset(12)
            make.width.height.equalTo(40)
            make.top.equalToSuperview().offset(10)
            
        }
        _muddleToolGTEM += 0.87

        _BingToolGTEM.0 +=  1.87

        
        gtemNickLbael.snp.makeConstraints { make in
            make.top.equalTo(gtemIconhreader).offset(7)
            _zhunreaToolGTEM = _zhunreaToolGTEM + _muddleToolGTEM + _BingToolGTEM.0

            if _agitatorValuesGTEM.randomElement() ?? 0 > 0 {
                make.leading.equalTo(gtemIconhreader.snp.trailing).offset(23)
            }
           
            make.height.equalTo(16)
            make.width.greaterThanOrEqualTo(60)
        }
        
        gtemSayieVuew.snp.makeConstraints { make in
            make.left.equalTo(gtemNickLbael)
            _zhunreaToolGTEM = _zhunreaToolGTEM + _muddleToolGTEM + _BingToolGTEM.0

            if _agitatorValuesGTEM.randomElement() ?? 0 > 0 {
                make.top.equalTo(gtemNickLbael.snp.bottom).offset(6)
                make.bottom.equalToSuperview().offset(-17)
            }
           
           
            make.width.lessThanOrEqualTo(250)
            make.width.greaterThanOrEqualTo(60)
        }
        
        
  
        dioloagbackGTEm.snp.makeConstraints { make in
            _zhunreaToolGTEM = _zhunreaToolGTEM + _muddleToolGTEM + _BingToolGTEM.0

            if _agitatorValuesGTEM.randomElement() ?? 0 > 0 {
                make.left.equalTo(gtemIconhreader.snp.right).offset(11)
                make.top.equalTo(gtemIconhreader)
            }
            
            make.bottom.equalTo(gtemSayieVuew.snp.bottom).offset(7)
            make.right.equalTo(gtemSayieVuew).offset(15)
        }
    }
    
    
   
    
  
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
