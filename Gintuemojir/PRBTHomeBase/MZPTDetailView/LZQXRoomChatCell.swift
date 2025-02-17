//
//  LZQXhospcChatCell.swift
//  Gintuemojir
//
//  Created by Gintuemojir on 2025/2/5.
//

import UIKit

class LZQXhospcChatCell: UITableViewCell {
  
    let iconDisplayHeader = UIImageView.init()
    let userNicknameLabel = UILabel.init()
    let gteadagaVuew = UILabel.init()
    
    private let dioloagbackGTEm = UIView.init()
    
 
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        iconDisplayHeader.layer.cornerRadius = 20
        iconDisplayHeader.layer.masksToBounds = true
        userNicknameLabel.textColor = UIColor.black
        userNicknameLabel.font = UIFont.systemFont(ofSize: 15, weight:.semibold)
        
        gteadagaVuew.textColor = UIColor(red: 0.33, green: 0.04, blue: 0.01, alpha: 1)
        gteadagaVuew.font = UIFont(name: "Lucida Grande", size: 15)
        gteadagaVuew.numberOfLines = 0
        backgroundColor = .clear
        
        dioloagbackGTEm.backgroundColor = UIColor(red: 1, green: 0.88, blue: 0.76, alpha: 1)
        dioloagbackGTEm.layer.cornerRadius = 12
        dioloagbackGTEm.layer.maskedCorners = [.layerMaxXMinYCorner,.layerMinXMaxYCorner,.layerMinXMaxYCorner]
        
        contentView.addSubview(iconDisplayHeader)
        contentView.addSubview(dioloagbackGTEm)
       
        contentView.addSubview(userNicknameLabel)
        contentView.addSubview(gteadagaVuew)
     
        iconDisplayHeader.snp.makeConstraints { make in
            make.leading.equalToSuperview().inset(12)
            make.width.height.equalTo(40)
            make.top.equalToSuperview().offset(10)
            
        }
        
        userNicknameLabel.snp.makeConstraints { make in
            make.top.equalTo(iconDisplayHeader).offset(7)
            make.leading.equalTo(iconDisplayHeader.snp.trailing).offset(23)
            make.height.equalTo(16)
            make.width.greaterThanOrEqualTo(60)
        }
        
        gteadagaVuew.snp.makeConstraints { make in
            make.left.equalTo(userNicknameLabel)
            make.top.equalTo(userNicknameLabel.snp.bottom).offset(6)
            make.bottom.equalToSuperview().offset(-17)
           
            make.width.lessThanOrEqualTo(250)
            make.width.greaterThanOrEqualTo(60)
        }
        
        
  
        dioloagbackGTEm.snp.makeConstraints { make in
            make.left.equalTo(iconDisplayHeader.snp.right).offset(11)
            make.top.equalTo(iconDisplayHeader)
            make.bottom.equalTo(gteadagaVuew.snp.bottom).offset(7)
            make.right.equalTo(gteadagaVuew).offset(15)
        }
    }
    
    
   
    
  
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
