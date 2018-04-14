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

    override func becomeFirstResponder() -> Bool {
        return true
    }
    
    @IBAction func BotonResponder(_ sender: UIButton) {
        obtenerRespuesta()
    }
    
    func obtenerRespuesta(){
        var cantidadRespuestas: Int = respuestas.count
        var numeroRespuesta: Int = Int(arc4random_uniform(UInt32(cantidadRespuestas)))
        for i in 0..<cantidadRespuestas {
            if numeroRespuesta == i{
                ImagenRespuesta.image = UIImage(named: respuestas[i])
            }
        }
    }

    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        if motion == .motionShake {
            self.obtenerRespuesta()
        }
    }
    
}

