//
//  ViewController.swift
//  swift-layout
//
//  Created by grachro on 2014/09/06.
//  Copyright (c) 2014年 grachro. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var touchBlocks = TouchBlocks()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        let btn0 = Layout.createSystemTypeBtn("Auto Layout サンプルへ")
        self.touchBlocks.append(btn0) {
            self.presentViewController(AutoLayoutSampleController(), animated: true, completion: nil)
        }
        Layout.regist(btn0, container: self.view)
            .left(40).fromContainerLeft()
        
        
        let btn2 = Layout.createSystemTypeBtn("横に等間隔 サンプルへ")
        self.touchBlocks.append(btn2) {
            self.presentViewController(HorizontalEvenSpaceViewController(), animated: true, completion: nil)
        }
        Layout.regist(btn2, container: self.view)
            .leftIsSame(btn0)

        
        let btn4 = Layout.createSystemTypeBtn("縦に等間隔 サンプルへ")
        self.touchBlocks.append(btn4) {
            self.presentViewController(VerticalEvenSpaceViewController(), animated: true, completion: nil)
        }
        Layout.regist(btn4, container: self.view)
            .leftIsSame(btn0)
        
        
        
        let btn5 = Layout.createSystemTypeBtn("条文形式画面へ")
        self.touchBlocks.append(btn5) {
            self.presentViewController(AgreementViewController(), animated: true, completion: nil)
        }
        Layout.regist(btn5, container: self.view)
            .leftIsSame(btn0)
        
        
        
        Layout.verticalEvenSpaceInCotainer(container: self.view, views: [btn0, btn2 ,btn4,btn5], coverSpace: true)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

}

