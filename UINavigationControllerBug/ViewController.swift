//
//  ViewController.swift
//  UINavigationControllerBug
//
//  Created by Grzegorz Krukowski on 19/05/2017.
//
//

import UIKit

class ViewController: UIViewController {
    @IBAction func bugMe(_ sender: Any) {
        let vc2 = SecondViewController()
        self.navigationController?.pushViewController(vc2, animated: true)
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.1) {
            let popped = self.navigationController?.popToRootViewController(animated: true)
            print(popped?.count, "Should be 1")
            print(self.navigationController?.viewControllers.count, "Should be 1")
        }
    }
}
