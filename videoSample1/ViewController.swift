//
//  ViewController.swift
//  videoSample1
//
//  Created by AFFIXUS IMAC1 on 7/24/18.
//  Copyright © 2018 AFFIXUS IMAC1. All rights reserved.
//

import UIKit
import AVKit
import AVFoundation
import Foundation

class ViewController: UIViewController {
    
    var videoPlayer = AVPlayer()
    var avPlayerViewController = AVPlayerViewController()
    
    @IBOutlet weak var vwMain: UIView!
    @IBOutlet weak var avPlayerView: UIView!
    var tapGesture = UITapGestureRecognizer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
//
//        self.playVideo(url: videoURL!)
        
//        guard let movieURL = URL(string: "http://clips.vorwaerts-gmbh.de/big_buck_bunny.mp4")
//            else { return }
        let videoURL = URL(string: "http://clips.vorwaerts-gmbh.de/big_buck_bunny.mp4")
        videoPlayer = AVPlayer(url: videoURL!)
        avPlayerViewController.player = videoPlayer
        avPlayerViewController.view.frame = avPlayerView.bounds
        self.addChildViewController(avPlayerViewController)
        avPlayerView.addSubview(avPlayerViewController.view)
        avPlayerViewController.didMove(toParentViewController: self)
        videoPlayer.play()
        
    }
    
//    override func viewDidAppear(_ animated: Bool) {
//        let videoURL = URL(string: "http://clips.vorwaerts-gmbh.de/big_buck_bunny.mp4")
//
//        self.playVideo(url: videoURL!)
//    }
    
    func playVideo(url: URL) {
        self.videoPlayer = AVPlayer(url: url)
        self.avPlayerViewController = AVPlayerViewController()
        self.avPlayerViewController.player = self.videoPlayer
        avPlayerViewController.view.frame = avPlayerView.frame
        
        avPlayerViewController.view.autoresizingMask = [.flexibleWidth, .flexibleHeight]

        self.addChildViewController(avPlayerViewController)
        self.view.addSubview((avPlayerViewController.view)!)
        videoPlayer.play()
        
    }

}

