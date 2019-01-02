//
//  ViewController.swift
//  LargeTitle
//
//  Created by Nayem BJIT on 1/2/19.
//  Copyright © 2019 BJIT Ltd. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        navigationController?.navigationBar.prefersLargeTitles = true

        let button = UIButton(type: .custom)
        button.setTitle("Show Detail", for: .normal)
        button.addTarget(self, action: #selector(showDetailButtonTapped(_:)), for: .touchUpInside)
        button.setTitleColor(.blue, for: .normal)

        tableView.backgroundView = button
        tableView.tableFooterView = UIView()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @objc func showDetailButtonTapped(_ sender: UIButton) {
        performSegue(withIdentifier: "ToDetail", sender: self)
    }

}

