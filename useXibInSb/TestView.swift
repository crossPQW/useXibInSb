//
//  TestView.swift
//  useXibInSb
//
//  Created by 黄少华 on 15/12/28.
//  Copyright © 2015年 黄少华. All rights reserved.
//

import UIKit

class TestView: UIView {

    var view:UIView!
    
    

    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setup()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        setup()
    }
    
    
    func setup(){
        
        let bundle = NSBundle(forClass: self.dynamicType)
        let nib    = UINib(nibName: "TestView", bundle: bundle)
        
        view = nib.instantiateWithOwner(self, options: nil)[0] as! UIView
        
        view.frame = bounds
                
        addSubview(view)
        
        
    }
}
