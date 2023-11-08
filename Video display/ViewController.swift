//
//  ViewController.swift
//  Video display
//
//  Created by Macbook Air 2017 on 8. 11. 2023..
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    let videoView: UIView = {
        let view = UIView()
        return view
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        setVideoView()
        setVideoDisplay()
    }
    
    private func setVideoView() {
        view.addSubview(videoView)
        videoView.frame = CGRect(x: 5,
                                 y: 100,
                                 width: view.frame.size.width - 10,
                                 height: view.frame.size.width - 10)
    }
    
    private func setVideoDisplay() {
        guard let path = Bundle.main.path(forResource: "video", ofType: "mp4") else {
            return
        }
        
        let url = URL(fileURLWithPath: path)
        
        let player = AVPlayer(url: url)
        player.volume = 10
        player.play()
        
        let playerLayer = AVPlayerLayer(player: player)
        playerLayer.frame = videoView.bounds
        playerLayer.videoGravity = .resizeAspectFill
        
        videoView.layer.addSublayer(playerLayer)
    }
}

