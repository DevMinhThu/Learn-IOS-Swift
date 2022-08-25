//
//  ViewController.swift
//  Dicee-App
//
//  Created by MinhThu Vu on 25/08/2022.
//  Copyright © 2022 HaNoi.
//

import UIKit

class ViewController: UIViewController {
    
    /* IBOutlet giúp ta tham chiếu đến UI element (IB: Interface Builder)
     - B1: Tạo IB để liên kết + tham chiếu với UI element
        - Chọn element + giữ Ctrl kéo vào cửa sổ code. (Vị trí nằm dưới ViewController và bên trên function viewDidLoad)
     - B2: Tương tác với UI element đã tạo ở B1.
        - Syntax: WHO.WhAT_property = VALUE
     
        - Cái gì tương tác.tương tác với thuộc tính nào = giá trị thay đổi.
     
        - Code được viết trong viewDidLoad (là khi màn hình lần đầu được load lên)
    */
    
    // === B1 ===
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // === B2 ===
        // WHO        .WHAT  = VALUE
        diceImageView1.image = #imageLiteral(resourceName: "DiceSix")
        diceImageView2.image = #imageLiteral(resourceName: "DiceThree")
        diceImageView1.alpha = 0.5
    }


}

