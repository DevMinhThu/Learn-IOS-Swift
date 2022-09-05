//
//  ViewController.swift
//  EggTimer
//
//  Created by MinhThu Vu on 05/09/2022.
//  Copyright © 2022 The App Egg Timer.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var titleLabel: UILabel!
    
    let eggTimes : [String: Int] = ["Soft": 3, "Medium": 4, "Hard": 7]
    
    var secondsRemaining = 60
    
    var timer = Timer()
    
    let seconds = 0.2

    @IBAction func hardnessSelected(_ sender: UIButton) {
        
        // === Sau khi click vào loại trứng sẽ reset và tạo lại bộ hẹn giờ mới. ===
        timer.invalidate()
        
        /*
            - Sử dụng Unwrap (!) để lấy ra giá trị của biến hardness
            - Lấy giá trị hiện tại khi user click vào loại trứng
        */
        let hardness = sender.currentTitle!
        
        secondsRemaining = eggTimes[hardness]!
        
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
        if secondsRemaining > 0 {
            print("\(secondsRemaining) seconds.")
            secondsRemaining -= 1
        } else {
            timer.invalidate()
            titleLabel.text = "DONE!"
        }
    }
    
}
