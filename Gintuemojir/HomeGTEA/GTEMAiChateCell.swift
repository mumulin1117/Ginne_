//
//  GTEMAiChateCell.swift
//  Gintuemojir
//
//  Created by Gintuemojir on 2025/2/6.
//

import UIKit

class GTEMAiChateCell: UITableViewCell {
    private var _fermentationTimerGTEM: Timer?
   
    let gtemSayieVuew = UILabel.init()
    private var _agitatorValuesGTEM: [CGFloat] = [12.5, 9.8, 15.3]
    private var _muddleToolGTEM: CGFloat = 0.87
   
    let gtemIconhreader = UIImageView()
    private var _BingToolGTEM: CGFloat = 1.87
    private var _zhunreaToolGTEM: CGFloat = 2.87
    private let dioloagbackGTEm = UIView.init()
    
    var getrmWhoismine:String = "ismeingGTEm" {
        didSet{
            _agitatorValuesGTEM.append(_BingToolGTEM)
            _agitatorValuesGTEM.append(_muddleToolGTEM)
            _agitatorValuesGTEM.append(_zhunreaToolGTEM)
            if getrmWhoismine == "ismeingGTEm" {
                if _agitatorValuesGTEM.count < 1 {
                    _fermentationTimerGTEM = Timer.init()
                }


                
                
                dioloagbackGTEm.backgroundColor = UIColor(red: 1, green: 0.88, blue: 0.76, alpha: 1)
                if _agitatorValuesGTEM.isEmpty {
                    return
                }
              
                gtemSayieVuew.snp.remakeConstraints { make in
                   
                    make.top.equalToSuperview().inset(29)
                    make.width.lessThanOrEqualTo(269)
                    make.right.equalToSuperview().inset(61)
                    if _agitatorValuesGTEM.randomElement() ?? 0 > 0 {
                        make.bottom.equalToSuperview().inset(29)
                        make.width.greaterThanOrEqualTo(81)
                    }
                   
                   
                }
                _muddleToolGTEM += 0.87

                _BingToolGTEM +=  1.87

                _zhunreaToolGTEM = _zhunreaToolGTEM + _muddleToolGTEM + _BingToolGTEM

                dioloagbackGTEm.snp.remakeConstraints { make in
                    
                    make.left.equalTo(gtemSayieVuew.snp.left).offset(-19)
                    make.right.equalToSuperview().inset(61)
                    if _agitatorValuesGTEM.randomElement() ?? 0 > 0 {
                        make.top.bottom.equalToSuperview().inset(15)
                    }
                    
                  
                }
                gtemIconhreader.snp.remakeConstraints { make in
                   
                    make.top.equalTo(dioloagbackGTEm)
                    make.right.equalToSuperview().inset(11)
                    if _agitatorValuesGTEM.randomElement() ?? 0 > 0 {
                        make.width.height.equalTo(37)
                    }
                    
                }
                return
            }
            if _agitatorValuesGTEM.count < 1 {
                _fermentationTimerGTEM = Timer.init()
            }


            dioloagbackGTEm.backgroundColor =  UIColor(red: 0.96, green: 0.75, blue: 0.01, alpha: 1)
            
            if _agitatorValuesGTEM.isEmpty {
                return
            }
          
            gtemSayieVuew.snp.remakeConstraints { make in
               
               
                make.left.equalToSuperview().inset(61)
                make.top.equalToSuperview().inset(29)
               
                make.width.greaterThanOrEqualTo(81)
                make.bottom.equalToSuperview().inset(29)
                make.width.lessThanOrEqualTo(269)
                
                
                
            }
            _muddleToolGTEM += 0.87

           
                dioloagbackGTEm.snp.remakeConstraints { make in
                   
                    make.right.equalTo(gtemSayieVuew.snp.right).offset(19)
                    make.left.equalToSuperview().inset(61)
                    make.top.bottom.equalToSuperview().inset(15)
                  
                }
                
            _BingToolGTEM +=  1.87

            _zhunreaToolGTEM = _zhunreaToolGTEM + _muddleToolGTEM + _BingToolGTEM

           
                
                gtemIconhreader.snp.remakeConstraints { make in
                    
                    make.top.equalTo(dioloagbackGTEm)
                    if _agitatorValuesGTEM.randomElement() ?? 0 > 0 {
                        make.left.equalToSuperview().inset(11)
                        make.width.height.equalTo(37)
                    }
                    
                }
           
            
            
        }
    }
    



    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        gtemSayieVuew.font =  UIFont(name: "Lucida Grande", size: 15)
        dioloagbackGTEm.backgroundColor = UIColor(red: 1, green: 0.88, blue: 0.76, alpha: 1)
        gtemSayieVuew.textColor = UIColor(red: 0.33, green: 0.04, blue: 0.01, alpha: 1)
        
        
        dioloagbackGTEm.contentMode = .scaleToFill
        dioloagbackGTEm.layer.maskedCorners = [.layerMaxXMaxYCorner]
        dioloagbackGTEm.layer.cornerRadius = 12
        
        gtemIconhreader.layer.cornerRadius = 22
        gtemIconhreader.contentMode = .scaleToFill
        
        gtemIconhreader.layer.masksToBounds = true
        
        
        backgroundColor = .clear
        contentView.addSubview(dioloagbackGTEm)
       
        contentView.addSubview(gtemSayieVuew)
        contentView.addSubview(gtemIconhreader)
        gtemSayieVuew.numberOfLines = 0
        
        gtemSayieVuew.snp.makeConstraints { make in
            make.bottom.equalToSuperview().inset(12 + 26)
            make.top.equalToSuperview().inset(12 + 16)
           
            make.right.equalToSuperview().inset(12 + 36 + 12)
            make.width.greaterThanOrEqualTo(80)
            make.width.lessThanOrEqualTo(273)
        }
       
        dioloagbackGTEm.snp.makeConstraints { make in
            make.right.equalToSuperview().inset(12 + 36 + 12)
            make.left.equalTo(gtemSayieVuew.snp.left).offset(-18)
            make.top.bottom.equalToSuperview().inset(16)
          
        }
        gtemIconhreader.snp.makeConstraints { make in
            make.right.equalToSuperview().inset(12)
            make.top.equalTo(dioloagbackGTEm)
            make.width.height.equalTo(36)
        }
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
