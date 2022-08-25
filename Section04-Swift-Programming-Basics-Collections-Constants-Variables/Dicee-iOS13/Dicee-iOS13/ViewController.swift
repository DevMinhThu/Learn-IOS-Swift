//
//  ViewController.swift
//  Dicee-App
//
//  Created by MinhThu Vu on 25/08/202.
//  Copyright © 2022 Hanoi App Dicee.
//

import UIKit

class ViewController: UIViewController {
    
    /* === Tham chiếu tới UI element ===
        - B1: Tạo IB (Interface Builder) giúp liên kết UI element với code.
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
        diceeImageView1.image = #imageLiteral(resourceName: "DiceSix")
        diceeImageView2.image = #imageLiteral(resourceName: "DiceThree")
        diceeImageView2.alpha = 0.5
    }


}

