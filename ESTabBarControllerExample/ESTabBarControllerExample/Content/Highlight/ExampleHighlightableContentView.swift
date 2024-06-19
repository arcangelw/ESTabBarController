//
//  ExampleHighlightableContentView.swift
//  ESTabBarControllerExample
//
//  Created by lihao on 2017/2/9.
//  Copyright © 2018年 Egg Swift. All rights reserved.
//

import UIKit

class ExampleHighlightableContentView: ExampleBackgroundContentView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        let transform = CGAffineTransform.identity
        imageView.transform = transform.scaledBy(x: 1.15, y: 1.15)

    }
    
    public required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func highlightAnimation(animated: Bool, completion: (() -> ())?) {
        UIView.animate(withDuration: 0.2, animations: {
            let transform = self.imageView.transform.scaledBy(x: 0.8, y: 0.8)
            self.imageView.transform = transform
        }, completion: { _ in completion?()})
    }
    
    override func dehighlightAnimation(animated: Bool, completion: (() -> ())?) {
        UIView.animate(withDuration: 0.2, animations: {
            let transform = CGAffineTransform.identity
            self.imageView.transform = transform.scaledBy(x: 1.15, y: 1.15)
        }, completion: { _ in completion?()})
    }
    
}
