//
//  ViewController.swift
//  BolaMagica
//
//  Created by Jonathan Varela on 4/14/18.
//  Copyright © 2018 Jonathan Varela. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var respuestas: [String] = ["ball1","ball2","ball3","ball4","ball5"]
    
    @IBOutlet weak var ImagenRespuesta: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func BotonResponder(_ sender: UIButton) {
        obtenerRespuesta()
    }
    
    // 5 respuestas
    func obtenerRespuesta(){
        var numeroRespuesta: Int = Int(arc4random_uniform(5))
        for i in 0..<respuestas.count {
            if numeroRespuesta == i{
                ImagenRespuesta.image = UIImage(named: respuestas[i])
            }
        }
    }

}

