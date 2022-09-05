//
//  ViewController.swift
//  EggTimer
//
//  Created by MinhThu Vu on 05/09/2022.
//  Copyright © 2022 The App Egg Timer.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var titleLabel: UILabel!
    
    let eggTimes : [String: Int] = ["Soft": 3, "Medium": 4, "Hard": 7] // Type: Dictionary
    var totalTime = 0
    var secondsPassed = 0
    var timer = Timer()
    let seconds = 0.2
    var player: AVAudioPlayer?

    @IBAction func hardnessSelected(_ sender: UIButton) {
        
        // === Sau khi click vào loại trứng sẽ reset và tạo lại bộ hẹn giờ mới. ===
        timer.invalidate()
        
        /*
            - Sử dụng Unwrap (!) để lấy ra giá trị của biến hardness
            - Lấy giá trị hiện tại khi user click vào loại trứng
        */
        let hardness = sender.currentTitle!
        
        // reset progress bar + title + secondsPassed
        progressBar.progress = 0.0
        secondsPassed = 0
        titleLabel.text = hardness
        
        totalTime = eggTimes[hardness]!
        
        /*
            - Timer sẽ kích hoạt khi trứng được click
            - timeInterval: hàm sẽ được call lại sau 1s
            - selector: nhận vào 1 hàm, sau mỗi giây hàm được truyền vào sẽ được gọi và thực hiện nv nào đó.
            - request: cho biết Timer có được lặp lại sau mỗi giây không.
        */
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updateCounter), userInfo: nil, repeats: true)
        
        // === Giảm độ mờ của người gửi (nút được nhấn) xuống một nửa. ===
        sender.alpha = 0.5
        
        // === Mã sẽ thực thi sau 0,2s delay. ===
        DispatchQueue.main.asyncAfter(deadline: .now() + seconds) {
            sender.alpha = 1
        }
    }
    
    @objc func updateCounter() {
        if secondsPassed < totalTime {
            secondsPassed += 1
            progressBar.progress = Float(secondsPassed) / Float(totalTime)
        } else {
            timer.invalidate()
            titleLabel.text = "DONE!"
            
            let url = Bundle.main.url(forResource: "alarm_sound", withExtension: "mp3")
            player = try! AVAudioPlayer(contentsOf: url!)
            player?.play()
        }
    }
}
