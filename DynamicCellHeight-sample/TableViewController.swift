//
//  TableViewController.swift
//  DynamicCellHeight-sample
//
//  Created by Tsunemasa Hachiya on 2018/01/16.
//  Copyright © 2018年 Tsunemasa Hachiya. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {

    let textAry = [
        "すでに世界で最も先進的なモバイルオペレーティングシステムであるiOSに、iOS 11が新たな基準を打ち立てます。iPhoneは一段と優れたものになり、iPadはかつてないほどの能力を手に入れます。",
        "さらにこれからはどちらのデバイスにも、ゲームやアプリケーションの拡張現実のための驚くような可能性が広がります。",
        "iOS 11の登場で、iPhoneとiPadがこれまで以上にパワフルで、パーソナルで、賢いデバイスになりました。",
        "仕事をするのにも、遊ぶのにも、学ぶのにもパワフルな方法であり続けてきたiPadが、iOS 11の登場により、かつてないほどいきいきと動き出します。iOS 11の新しい機能と能力を使えば、より多くのことをよりすばやく簡単にこなせるようになり、iPadでの体験が一段とパワフルでパーソナルなものになります。あなたがいつかやりたいと思っていることを、できる日がやってきました。"
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.estimatedRowHeight = 150
        tableView.rowHeight = UITableViewAutomaticDimension
        tableView.tableFooterView = UIView()
    }
    
    @IBOutlet weak var headerView: UIView!
    @IBOutlet weak var headerDescLabel: UILabel!
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        headerDescLabel.text = "仕事をするのにも、遊ぶのにも、学ぶのにもパワフルな方法であり続けてきたiPadが、iOS 11の登場により、かつてないほどいきいきと動き出します。iOS 11の新しい機能と能力を使えば、より多くのことをよりすばやく簡単にこなせるようになり、iPadでの体験が一段とパワフルでパーソナルなものになります。あなたがいつかやりたいと思っていることを、できる日がやってきました。"
        
        let size = headerView.systemLayoutSizeFitting(UILayoutFittingCompressedSize)
        headerView.frame.size = size
        tableView.tableHeaderView = headerView
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return textAry.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "custCell", for: indexPath) as! CustTableViewCell
        cell.custLabel.text = textAry[indexPath.row]

        return cell
    }

}
