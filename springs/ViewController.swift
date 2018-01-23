//
//  ViewController.swift
//  springs
//
//  Created by Maestro on 22/01/18.
//  Copyright © 2018 Maestro. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var vwCuadro: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        //vwCuadro.alpha = 0.0
    }
    
    override func viewDidAppear(_ animated: Bool) {
        
        UIView.animate(withDuration: 2, delay: 1, usingSpringWithDamping: 0.4,
                       initialSpringVelocity: 0.2, options: [], animations: {
            self.vwCuadro.center.y += 200
            //self.vwCuadro.alpha = 1.0
            self.vwCuadro.backgroundColor = UIColor.white
            self.vwCuadro.transform =
                CGAffineTransform(scaleX: 1, y: 1)
        }, completion: nil)
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

