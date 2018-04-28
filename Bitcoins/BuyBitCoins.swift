//
//  BuyBitCoins.swift
//  Bitcoins
//
//  Created by Inger Montenegro on 4/27/18.
//  Copyright © 2018 Inger Montenegro. All rights reserved.
//

import Foundation
import UIKit

class BuyBitCoins: UIViewController{
    @IBOutlet weak var txtMoney: UITextField!
    @IBOutlet weak var txtBitCoins: UITextField!
    
    override func viewDidLoad() {
     super.viewDidLoad()
        txtMoney.text = "100"
        txtBitCoins.text  = "5"
    }
    
    @IBAction func cmdBuyBitCoins(_ sender: Any) {
    navigateToMainInterface()
    }
    
    private func navigateToMainInterface(){
     let mainStoryboard = UIStoryboard(name: "Main", bundle: Bundle.main)
        guard let mainNavigationVC =  mainStoryboard.instantiateViewController(withIdentifier: "MainNavigationController") as? MainNavigationController else {
        return
    }
        
//        print(mainNavigationVC.topViewController)
//        print(mainNavigationVC.viewControllers)
        
        if let mainVC = mainNavigationVC.topViewController as? ViewController {
            mainVC.MyMoney =  txtMoney.text
            mainVC.MyBitCoins = txtBitCoins.text
        }
        present(mainNavigationVC, animated: true, completion: nil)
    
}
}
