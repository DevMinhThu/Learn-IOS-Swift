//
//  ViewController.swift
//  Dicee-App
//
//  Created by MinhThu Vu on 25/08/202.
//  Copyright © 2022 Hanoi App Dicee.
//

import UIKit

class ViewController: UIViewController {
    
    /* === @IBOutlet: giúp tạo liên kết, tham chiếu tới UI element ===
     
        NOTE: có thể hiểu là @IBOutlet: khi thay đổi gì trong code thì sẽ thể hiện lên element đã được liên kết.
     
        - B1: Tạo IBOutlet (Interface Builder) giúp liên kết UI element với code.
            - Giữ Ctrl + chọn element => sau đó kéo vào cửa sổ code.
            - Phạm vi đặt: phía dưới "class ViewController" và phía trên "func viewDidLoad"
        
        - B2: Sau khi đã có IB => sử dụng tên của IB đó để tương tác, thay đổi với element
            - Viết trong hàm "func viewDidLoad".
            - Syntax: tên của IB vừa định nghĩa.thuộc tính tương tác = value
            - WHO.WHAT = VALUE
    */
    
    // === B1: Tạo IB cho element ===
    @IBOutlet weak var diceeImageView1: UIImageView!
    @IBOutlet weak var diceeImageView2: UIImageView!

    // Chạy khi lần đầu ứng dụng hiển thị
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // === B2: Tương tác với các element ===
        // diceeImageView1.image = #imageLiteral(resourceName: "DiceSix")
        // diceeImageView2.image = #imageLiteral(resourceName: "DiceThree")
        // diceeImageView2.alpha = 0.5
    }
    
    /* === Phát hiện tương tác người dùng => tạo liên kết hành động @IBAction ===
     
        NOTE: khi tương tác với các element đã liên kết => sẽ thực thi hành động gì đó đã được thiết kế trong code.
        - Các bước thực hiện tương tự như IBOutlet
        - Lựa chọn event tương ứng với mục đích muốn dùng.
     
    */
    @IBAction func rollButtonPress(_ sender: UIButton) {
        let arrayDicee = [#imageLiteral(resourceName: "DiceOne"), #imageLiteral(resourceName: "DiceTwo"), #imageLiteral(resourceName: "DiceThree"), #imageLiteral(resourceName: "DiceFour"), #imageLiteral(resourceName: "DiceFive"), #imageLiteral(resourceName: "DiceSix")]
        
        diceeImageView1.image = arrayDicee[Int.random(in: 0...5)]
        diceeImageView2.image = arrayDicee[Int.random(in: 0...5)]
    }
    
}

