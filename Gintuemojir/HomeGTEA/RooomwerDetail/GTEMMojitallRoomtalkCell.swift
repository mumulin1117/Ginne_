//
//  GTEMMojitallRoomtalkCell.swift
//  Gintuemojir
//
//  Created by Gintuemojir on 2025/2/5.
//

import UIKit

class GTEMMojitallRoomtalkCell: UITableViewCell {
    
   
    let gtemIconhreader = UIImageView.init()
    
    
  
    let gtemSayieVuew = UILabel.init()
    
   
    private let dioloagbackGTEm = UIView.init()
    
    
    
    let gtemNickLbael = UILabel.init()
    func setReportDetails(userName: String, reason: String) {
        contentView.addSubview(gtemIconhreader)
        

        
      
        contentView.addSubview(dioloagbackGTEm)
        

        contentView.addSubview(gtemNickLbael)
        

        
        contentView.addSubview(gtemSayieVuew)
     
        
    }

   
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        
        gtemIconhreader.layer.cornerRadius = 20
        gtemIconhreader.layer.masksToBounds = true
        
        
        gtemNickLbael.textColor = UIColor.black
        gtemNickLbael.font = UIFont.systemFont(ofSize: 15, weight:.semibold)
        

        

        

        
        gtemSayieVuew.textColor = UIColor(red: 0.33, green: 0.04, blue: 0.01, alpha: 1)
        
        
       
        gtemSayieVuew.font = UIFont(name: "Lucida Grande", size: 15)
        

       
        gtemSayieVuew.numberOfLines = 0
        backgroundColor = .clear
        

        
        dioloagbackGTEm.backgroundColor = UIColor(red: 1, green: 0.88, blue: 0.76, alpha: 1)
        

       
        dioloagbackGTEm.layer.cornerRadius = 12
        dioloagbackGTEm.layer.maskedCorners = [.layerMaxXMinYCorner,.layerMinXMaxYCorner,.layerMinXMaxYCorner]
        
       
        
        setReportDetails(userName: "String", reason: "String")

        
        

        

        gtemIconhreader.snp.makeConstraints { make in
            make.leading.equalToSuperview().inset(12)
            make.width.height.equalTo(40)
            make.top.equalToSuperview().offset(10)
            
        }
        

        

        
        gtemNickLbael.snp.makeConstraints { make in
            make.top.equalTo(gtemIconhreader).offset(7)
            make.leading.equalTo(gtemIconhreader.snp.trailing).offset(23)
           
            make.height.equalTo(16)
            make.width.greaterThanOrEqualTo(60)
        }
        clearReportGTEMFields()
       
        
        
        displayReporGTEMtStatus()
        
    }
    
    
   
    func displayReporGTEMtStatus() {
        dioloagbackGTEm.snp.makeConstraints { make in
            make.left.equalTo(gtemIconhreader.snp.right).offset(11)
            make.top.equalTo(gtemIconhreader)
            make.bottom.equalTo(gtemSayieVuew.snp.bottom).offset(7)
            make.right.equalTo(gtemSayieVuew).offset(15)
        }
      
    }
  
    func clearReportGTEMFields() {
        gtemSayieVuew.snp.makeConstraints { make in
            make.left.equalTo(gtemNickLbael)
            
            make.top.equalTo(gtemNickLbael.snp.bottom).offset(6)
            make.bottom.equalToSuperview().offset(-17)
            make.width.lessThanOrEqualTo(250)
            make.width.greaterThanOrEqualTo(60)
        }
       }
    required init?(coder: NSCoder) {
        fatalError("init GTEMloa&-%-%-&ing werrouu")
    }
    
}
