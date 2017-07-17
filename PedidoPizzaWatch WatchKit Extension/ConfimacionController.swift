//
//  ConfimacionController.swift
//  PedidoPizzaWatch
//
//  Created by Monse on 16/07/17.
//  Copyright © 2017 Monse. All rights reserved.
//

import WatchKit
import Foundation


class ConfimacionController: WKInterfaceController {

    @IBOutlet var Orden: WKInterfaceLabel!
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
         let cPizza = context as! Pizza
        if(cPizza.Ingredientes != ""){
         Orden.setText(cPizza.Masa + " "+cPizza.Tamaño+" "+cPizza.Queso+" "+cPizza.Ingredientes)
        }else{
            Orden.setText("Debe seleccionar los ingredientes")
        }
        
        // Configure interface objects here.
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}
