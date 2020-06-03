//
//  ViewController.swift
//  PitchPerfect
//
//  Created by On The Way on 03/06/20.
//  Copyright © 2020 Dinulsyah. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var recordingLabel: UILabel!
    @IBOutlet weak var recordButton: UIButton!
    @IBOutlet weak var stopRecordingButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        stopRecordingButton.isEnabled = false
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }

    @IBAction func recordAudio(_ sender: UIButton) {
        recordingLabel.text = "Recording in Progress"
        stopRecordingButton.isEnabled = true
        recordButton.isEnabled = false
    }
    
    @IBAction func stopRecording(_ sender: UIButton) {
        stopRecordingButton.isEnabled = false
        recordButton.isEnabled = true
        recordingLabel.text = "Tap to Record"
    }
}
