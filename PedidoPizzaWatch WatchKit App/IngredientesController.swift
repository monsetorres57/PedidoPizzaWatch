//
//  IngredientesController.swift
//  PedidoPizzaWatch
//
//  Created by Monse on 15/07/17.
//  Copyright © 2017 Monse. All rights reserved.
//

import WatchKit
import Foundation


class IngredientesController: WKInterfaceController {

    @IBOutlet var Jamon: WKInterfaceSwitch!
    @IBOutlet var Peperoni: WKInterfaceSwitch!
    @IBOutlet var Vegetales: WKInterfaceSwitch!
    @IBOutlet var Res: WKInterfaceSwitch!
    @IBOutlet var Salchicha: WKInterfaceSwitch!
    @IBOutlet var Pina: WKInterfaceSwitch!
    @IBOutlet var Anchoas: WKInterfaceSwitch!
    var ingredientes : String = ""
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        //let cPizza = context as! Pizza
        // Configure interface objects here.
    }
    @IBAction func valJamon(_ value: Bool) {
        if(value == true){
            print("Valor verdadero Jamon")
            ingredientes += "Jamon"
        }
    }

    @IBAction func sigNextPage() {
        
        
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
