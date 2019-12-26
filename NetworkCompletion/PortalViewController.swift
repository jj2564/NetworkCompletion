//
//  PortalViewController.swift
//  NetworkCompletion
//
//  Created by IrvingHuang on 2019/12/26.
//  Copyright © 2019 Irving Huang. All rights reserved.
//

import UIKit

class PortalViewController: UIViewController {

    @IBOutlet weak var eventLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    func downloadData(completeClosure:((UIViewController)->Void)? = nil) {
        let req = ApiRequest(method: .post)
        ApiManager.request(from: req) {
            [weak self]
            (result) in
            
            guard let self = self else { return }
            
            switch result {
            case .success(_):
//                self?.eventLabel.text = "Success"
                self.eventLabel.text = "Success"
                guard let detailVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "ArrivedViewController") as? ArrivedViewController else { return }
                
                if let handler = completeClosure {
                    handler(detailVC)
                }
                break
            case .failure(_):
//                self?.eventLabel.text = "Failure"
                self.eventLabel.text = "Failure"
                break
            }
        }
    }

}
