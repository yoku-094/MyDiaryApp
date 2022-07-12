//
//  DiaryDetailListViewController.swift
//  MyDiaryApp
//
//  Created by Yu Okushima on 2022/07/12.
//

import UIKit

class DiaryDetailListViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var TableView: UITableView!
    
    //テスト用配列fruitsを設定
    let demo = ["2022年 7月", "2022年 8月", "2022年 9月", "2022年 10月", "2022年 11月"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    // メモリ警告用メソッド
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // TableViewに表示するセルの数
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return demo.count
    }
    
    // 各セルの生成（一覧表示）
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        // セルの取得（表示したいTable View CellのIdentifierの値を指定）
        let cell: UITableViewCell = tableView.dequeueReusableCell(withIdentifier: "diaryDetailListCell", for: indexPath)
        
        // セルに表示する値の設定
        cell.textLabel!.text = demo[indexPath.row]
        
        return cell
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
