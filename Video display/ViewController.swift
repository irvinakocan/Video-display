//
//  ViewController.swift
//  Video display
//
//  Created by Macbook Air 2017 on 8. 11. 2023..
//

import UIKit

class ViewController: UIViewController {
    
    let videoView: UIView = {
        let view = UIView()
        return view
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        setVideoView()
    }
    
    private func setVideoView() {
        view.addSubview(videoView)
        videoView.frame = CGRect(x: 5,
                                 y: 100,
                                 width: view.frame.size.width - 10,
                                 height: view.frame.size.width - 10)
        videoView.backgroundColor = .blue
    }
}

