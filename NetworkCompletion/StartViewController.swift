//
//  StartViewController.swift
//  NetworkCompletion
//
//  Created by IrvingHuang on 2019/12/26.
//  Copyright © 2019 Irving Huang. All rights reserved.
//

import UIKit

class StartViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func buttonPressed(_ sender: UIButton) {
        let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "PortalViewController") as? PortalViewController
        
        vc?.downloadData(completeClosure: { (detailVC) in
            self.navigationController?.pushViewController(detailVC, animated: true)
        })
    }
    

}
