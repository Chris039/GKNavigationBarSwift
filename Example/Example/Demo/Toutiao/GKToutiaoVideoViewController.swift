//
//  GKToutiaoVideoViewController.swift
//  GKNavigationBarSwift
//
//  Created by QuintGao on 2020/4/5.
//  Copyright © 2020 QuintGao. All rights reserved.
//

import UIKit
import GKNavigationBarSwift

class GKToutiaoVideoViewController: GKTabBaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        self.gk_navBackgroundImage = UIImage(named: "video_nav")
        
        let pageImage = UIImageView(frame: CGRect(x: 0, y: GK_STATUSBAR_NAVBAR_HEIGHT, width: GK_SCREEN_WIDTH, height: GK_SCREEN_HEIGHT - GK_STATUSBAR_NAVBAR_HEIGHT - GK_TABBAR_HEIGHT))
        pageImage.image = UIImage(named: "micro_page")
        self.view.addSubview(pageImage)
        pageImage.isUserInteractionEnabled = true
        pageImage.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(pageAction)))
    }

    @objc func pageAction() {
        let detailVC = GKToutiaoDetailViewController()
        detailVC.hidesBottomBarWhenPushed = true
        self.navigationController?.pushViewController(detailVC, animated: true)
    }

}
