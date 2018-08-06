//
//  ViewController.swift
//  iamrich
//
//  Created by Arturo Guzman on 04/08/18.
//  Copyright © 2018 Arturo Guzman. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //Propertys
    
    @IBOutlet var labelTitle: UILabel!
    
    @IBOutlet var imageViewDiamont: UIImageView!
    
    @IBOutlet var buttonPush: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    //Methods
    @IBAction func buttonPressed(_ sender: UIButton) {
       // self.labelTitle.text = "He pulsado el botón"
        
       // self.labelTitle.textColor = UIColor.green
        // self.labelTitle.font = UIFont.systemFont(ofSize: 24.0)
        
        let controller = UIAlertController(title: "I am rich", message: """
         I am Rich,
         I deserve it.
         I am good.
         Healthy and succesfull
         """, preferredStyle: .actionSheet)
        
        let action = UIAlertAction(title: "Aceptar", style: .default) { (action) in
            print("He pulsado el boton de Aceptar")
        }
        controller.addAction(action)
        
        let action2 = UIAlertAction(title: "Borrar", style: .destructive, handler: {(action2) in
            print("He pulsado el boton de Borrar")
        })
        controller.addAction(action2)
        
        let action3 = UIAlertAction(title: "Cancelar", style: .cancel){_ in
         print("He pulsado el botón de Cancelar")
        }
        controller.addAction(action3)
        
        self.show(controller, sender: nil)
        
    }
    
}

