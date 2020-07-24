//
//  OrderViewController.swift
//  BMICalcOLLA
//
//  Created by Vincent Lin on 07/24/2020.
//  Copyright © 2020 Vincent Lin. All rights reserved.
//

import UIKit

class OrderViewController: UIViewController {

    let bowlArray = [#imageLiteral(resourceName: "Montreal Chicken"),#imageLiteral(resourceName: "Lime Pork Tender"),#imageLiteral(resourceName: "Chicken Tender"),#imageLiteral(resourceName: "Herb Beef"),#imageLiteral(resourceName: "Meat Ball"),#imageLiteral(resourceName: "Angus Steak"),#imageLiteral(resourceName: "Golden Egg Tofu"),]
    let menuArray = ["蒙特婁雞 Montreal Chicken",
                     "香檸嫩豬 Lime Pork Tender",
                     "嫩焙雞腿 Chicken Tender",
                     "香料牛腹 Herb Beef",
                     "義式肉丸 Meat Ball",
                     "安格斯牛 Angus Steak",
                     "金磚豆腐 Golden Egg Tofu",]
    let detailArray = ["低溫烹調, 將豐富的⾁汁完整保留, 撒上進⼝蒙特婁香料調味, 搭配當季新鮮配菜, 淋上OLLA獨家調製醬料, 好吃得拌法, 就要醬吃。",
                       "厚切0.15公分的新鮮豬⾁, 煎熟後浸泡在南洋風味的檸檬的醬汁裡, ⾁質軟嫩, 搭配當季新鮮配菜, 淋上 OLLA 獨家調製醬料, 好吃得拌法, 就要醬吃。",
                       "嚴選雞腿⾁, 帶⽪塊塊煎到⾦黃焦香, 搭配當季新鮮配菜, 淋上 OLLA 獨家調製醬料, 好吃得拌法, 就要醬吃。",
                       "精選油花豐富的⽜腹⾁, 並與墨⻄哥跟印度的香料調和, ⾼溫乾煎, 搭配當季新鮮配菜, 淋上OLLA獨家調製醬料, 好吃得拌法, 就要醬吃。",
                       "特調香料混合⽜, 豬⼿⼯的⾁丸, ⼝感Q彈, 搭配當季新鮮配菜, 淋上 OLLA 獨家調製醬料, 好吃得拌法, 就要醬吃。",
                       "嚴選美國進⼝⽜⾁, 獨特料理完整保留⾁質細緻, 搭配當季新鮮配菜, 淋上 OLLA 獨家調製醬料, 好吃得拌法, 就要醬吃。",
                       "外層⾦黃香酥的雞蛋⾖腐, 入⼝軟嫩香滑, 搭配當季新鮮配菜, 淋上 OLLA 獨家調製醬料, 好吃得拌法, 就要醬吃。",]
    
    @IBOutlet weak var bowlImageView: UIImageView!
    @IBOutlet weak var menuLabel: UILabel!
    @IBOutlet weak var detailTextView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func todayButtonPressed(_ sender: Any) {
    
        let today = Int.random(in: 0...6)
        
        bowlImageView.image = bowlArray[today]
        menuLabel.text = menuArray[today]
        detailTextView.text = detailArray[today]
        
    }
    
    
    @IBAction func orderButtonPressed(_ sender: UIButton) {
    
        guard let url = URL(string: "https://www.ubereats.com/tw/taipei/food-delivery/olla-%E5%85%89%E5%BE%A9%E5%BA%97/UaGm02vaSlOWZIzRIqrspw") else { return }
        UIApplication.shared.open(url)
    
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
