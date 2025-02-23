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
   

      var getrmWhoismine:(String,Bool,Bool) = ( "ismeingGTEm",false,false) {
        didSet{
            
            
            
            if getrmWhoismine.0 == "ismeingGTEm" && getrmWhoismine.1 == false{
                


                
                
                dioloagbackGTEm.backgroundColor = UIColor(red: 1, green: 0.88, blue: 0.76, alpha: 1)
                
              
                gtemSayieVuew.snp.remakeConstraints { make in
                   
                    make.top.equalToSuperview().inset(29)
                    make.width.lessThanOrEqualTo(269)
                    make.right.equalToSuperview().inset(61)
                    make.bottom.equalToSuperview().inset(29)
                    make.width.greaterThanOrEqualTo(81)
                   
                }
                

                

                

                dioloagbackGTEm.snp.remakeConstraints { make in
                    
                    make.left.equalTo(gtemSayieVuew.snp.left).offset(-19)
                    make.right.equalToSuperview().inset(61)
                    make.top.bottom.equalToSuperview().inset(15)
                  
                }
                gtemIconhreader.snp.remakeConstraints { make in
                   
                    make.top.equalTo(dioloagbackGTEm)
                    make.right.equalToSuperview().inset(11)
                    make.width.height.equalTo(37)
                    
                }
                return
            }
           
            dioloagbackGTEm.backgroundColor =  UIColor(red: 0.96, green: 0.75, blue: 0.01, alpha: 1)
            
          
          
            gtemSayieVuew.snp.remakeConstraints { make in
               
               
                make.left.equalToSuperview().inset(61)
                make.top.equalToSuperview().inset(29)
               
                make.width.greaterThanOrEqualTo(81)
                make.bottom.equalToSuperview().inset(29)
                make.width.lessThanOrEqualTo(269)
                
                
                
            }
            

           
                dioloagbackGTEm.snp.remakeConstraints { make in
                   
                    make.right.equalTo(gtemSayieVuew.snp.right).offset(19)
                    make.left.equalToSuperview().inset(61)
                    make.top.bottom.equalToSuperview().inset(15)
                  
                }
                
            

            

           
                
                gtemIconhreader.snp.remakeConstraints { make in
                    
                    make.top.equalTo(dioloagbackGTEm)
                    make.left.equalToSuperview().inset(11)
                    make.width.height.equalTo(37)
                    
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
           
            make.top.equalToSuperview().inset(29)
            make.width.lessThanOrEqualTo(269)
            make.right.equalToSuperview().inset(61)
            make.bottom.equalToSuperview().inset(29)
            make.width.greaterThanOrEqualTo(81)
        }
        

        

        

        dioloagbackGTEm.snp.makeConstraints { make in
            
            make.left.equalTo(gtemSayieVuew.snp.left).offset(-19)
            make.right.equalToSuperview().inset(61)
            make.top.bottom.equalToSuperview().inset(15)
            
          
        }
        gtemIconhreader.snp.makeConstraints { make in
           
            make.top.equalTo(dioloagbackGTEm)
            make.right.equalToSuperview().inset(11)
            make.width.height.equalTo(37)
            
        }
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
