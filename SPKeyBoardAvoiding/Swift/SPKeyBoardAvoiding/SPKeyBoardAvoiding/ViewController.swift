//
//  AppDelegate.swift
//  NavigationDrawer
//
//  Created by Sowrirajan Sugumaran on 12/11/17.
//  Copyright © 2017 Sowrirajan Sugumaran. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    @IBOutlet weak var scrollView: SPKeyBoardAvoiding!

    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.navigationBar.barTintColor = UIColor.groupTableViewBackground
        self.navigationController?.navigationBar.prefersLargeTitles = true
        self.title = "Registration"
        self.navigationItem.largeTitleDisplayMode = .automatic
        navigationController?.navigationBar.largeTitleTextAttributes = [NSAttributedStringKey.foregroundColor: UIColor.darkText,
                                                                        NSAttributedStringKey.font: UIFont(name: "KohinoorDevanagari-Semibold", size: 40)!]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        // Reset the scrollview content offset
        self.scrollView.setContentOffset(CGPoint.zero, animated: true)
        self.view.endEditing(true)
        return true
    }
}
