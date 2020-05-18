//
//  ViewController.swift
//  AdressBookListDemo
//
//  Created by 明孔 on 2019/11/5.
//  Copyright © 2019 明孔. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

     var cycleScrollView:WRCycleScrollView?
       
       override func viewDidLoad()
       {
           super.viewDidLoad()
           view.backgroundColor = UIColor.white
           self.title = "网络URL"
           
           let height = 520 * kScreenWidth / 1080.0
           let frame = CGRect(x: 0, y: 150, width: kScreenWidth, height: height)
           let serverImages = ["http://t8.baidu.com/it/u=198337120,441348595&fm=79&app=86&f=JPEG?w=1280&h=732",
                               "http://t7.baidu.com/it/u=2252647854,281320446&fm=79&app=86&f=JPEG?w=5092&h=2723",
                               "http://t9.baidu.com/it/u=4241966675,2405819829&fm=79&app=86&f=JPEG?w=1280&h=854",
                               "http://t8.baidu.com/it/u=2983382668,1612769941&fm=79&app=86&f=JPEG?w=1280&h=854",
                               "http://t8.baidu.com/it/u=2857883419,1187496708&fm=79&app=86&f=JPEG?w=1280&h=763"]
           cycleScrollView = WRCycleScrollView(frame: frame, type: .SERVER, imgs: serverImages)
           view.addSubview(cycleScrollView!)
           cycleScrollView?.delegate = self
       }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self .present(AddressbookController.init(), animated: true, completion: nil)
    }
}
extension ViewController: WRCycleScrollViewDelegate
{
    /// 点击图片事件
    func cycleScrollViewDidSelect(at index:Int, cycleScrollView:WRCycleScrollView)
    {
        print("点击了第\(index+1)个图片")
    }
    /// 图片滚动事件
    func cycleScrollViewDidScroll(to index:Int, cycleScrollView:WRCycleScrollView)
    {
        print("滚动到了第\(index+1)个图片")
    }
}

