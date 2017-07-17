//
//  IngredientesController.swift
//  PedidoPizzaWatch
//
//  Created by Monse on 16/07/17.
//  Copyright © 2017 Monse. All rights reserved.
//

import WatchKit
import Foundation


class IngredientesController: WKInterfaceController {
    var ingredientes : String = ""
    var masa : String = ""
    var tamaño : String = ""
    var queso : String = ""
    @IBOutlet var Jm: WKInterfaceSwitch!
    @IBOutlet var Ch: WKInterfaceSwitch!
    @IBOutlet var An: WKInterfaceSwitch!
    @IBOutlet var Sal: WKInterfaceSwitch!
    @IBOutlet var Cres: WKInterfaceSwitch!
    @IBOutlet var Sh: WKInterfaceSwitch!
    @IBAction func champi(_ value: Bool) {
        if(value==true){
       
            ingredientes += "Champiñones "
            print(ingredientes)
           
        }
    }
    @IBAction func Jamon(_ value: Bool) {
        if(value==true){
            ingredientes += "Jamon "
            print(ingredientes)
        }
    }
    @IBAction func anchoas(_ value: Bool) {
        if(value==true){
            ingredientes += "Anchoas "
             print(ingredientes)
        }
    }
    @IBAction func Salami(_ value: Bool) {
        if(value==true){
            ingredientes += "Salami "
             print(ingredientes)

        }
    }
    @IBAction func Salchichas(_ value: Bool) {
        if(value==true){
            ingredientes+="Salchichas "
             print(ingredientes)
        }
    }

    @IBAction func CarneRes(_ value: Bool) {
        if(value==true){
            ingredientes+="Carne de Res "
             print(ingredientes)
        }
    }
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        let c = context as! Pizza
        masa = c.Masa
        tamaño = c.Tamaño
        queso = c.Queso
        Jm.setOn(false)
        Ch.setOn(false)
        An.setOn(false)
        Sal.setOn(false)
        Sh.setOn(false)
        Cres.setOn(false)
        // Configure interface objects here.
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    @IBAction func nextPage() {
        let pContext = Pizza(t:tamaño,m:masa,q:queso,i:ingredientes)
        pushController(withName: "ConfirmaController", context: pContext)
    }
    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}
