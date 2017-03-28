//
//  ViewController.swift
//  Colorific
//
//  Created by Franco Maximiliano DAlessio Ocampo on 28/9/16.
//  Copyright © 2016 Franco DAlessio. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var Boton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //Boton.backgroundColor = UIColor.gray
        Boton.layer.cornerRadius = 5
        Boton.layer.borderWidth = 1
        Boton.layer.borderColor = UIColor.black.cgColor
        Boton.alpha = 0
        UIView.animate(withDuration: 5.0, animations:
        {
            self.Boton.alpha = 1.0
        })
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func changeColor(_ sender: AnyObject) {
        chcol();
    }
    
    func chcol()
    {
        let r = CGFloat(arc4random() % 255)
        let g = CGFloat(arc4random() % 255)
        let b = CGFloat(arc4random() % 255)
        let color = UIColor(red: (r/255.0),
                            green: (g/255.0),
                            blue: (b/255.0),
                            alpha: 1.0)
        view.backgroundColor = color    }
    
    override var prefersStatusBarHidden: Bool {
        get {
            return true
        }  
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        chcol()
    }
    
    
    
    
    

}

