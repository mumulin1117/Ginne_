//
//  GTEMAiChateCell.swift
//  Gintuemojir
//
//  Created by Gintuemojir on 2025/2/6.
//

import UIKit

class GTEMAiChateCell: UITableViewCell {
   
    let gtemSayieVuew = UILabel.init()
    let gtemIconhreader = UIImageView()
    
    private let dioloagbackGTEm = UIView.init()
    
    var getrmWhoismine:Bool = true {
        didSet{
           
            if getrmWhoismine == true {
                dioloagbackGTEm.backgroundColor = UIColor(red: 1, green: 0.88, blue: 0.76, alpha: 1)
                
                gtemSayieVuew.snp.remakeConstraints { make in
                    make.bottom.equalToSuperview().inset(12 + 26)
                    make.top.equalToSuperview().inset(12 + 16)
                   
                    make.right.equalToSuperview().inset(12 + 36 + 12)
                    make.width.greaterThanOrEqualTo(80)
                    make.width.lessThanOrEqualTo(273)
                }
               
                dioloagbackGTEm.snp.remakeConstraints { make in
                    make.right.equalToSuperview().inset(12 + 36 + 12)
                    make.left.equalTo(gtemSayieVuew.snp.left).offset(-18)
                    make.top.bottom.equalToSuperview().inset(16)
                  
                }
                gtemIconhreader.snp.remakeConstraints { make in
                    make.right.equalToSuperview().inset(12)
                    make.top.equalTo(dioloagbackGTEm)
                    make.width.height.equalTo(36)
                }
                return
            }
            dioloagbackGTEm.backgroundColor =  UIColor(red: 0.96, green: 0.75, blue: 0.01, alpha: 1)
            gtemSayieVuew.snp.remakeConstraints { make in
                make.bottom.equalToSuperview().inset(12 + 26)
                make.top.equalToSuperview().inset(12 + 16)
               
                make.left.equalToSuperview().inset(12 + 36 + 12)
                make.width.greaterThanOrEqualTo(80)
                make.width.lessThanOrEqualTo(273)
                
                
                
            }
           
                dioloagbackGTEm.snp.remakeConstraints { make in
                    make.left.equalToSuperview().inset(12 + 36 + 12)
                    make.right.equalTo(gtemSayieVuew.snp.right).offset(18)
                    make.top.bottom.equalToSuperview().inset(16)
                  
                }
                
           
                
                gtemIconhreader.snp.remakeConstraints { make in
                    make.left.equalToSuperview().inset(12)
                    make.top.equalTo(dioloagbackGTEm)
                    make.width.height.equalTo(36)
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
