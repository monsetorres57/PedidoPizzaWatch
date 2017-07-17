//
//  QuesoController.swift
//  PedidoPizzaWatch
//
//  Created by Monse on 10/07/17.
//  Copyright © 2017 Monse. All rights reserved.
//
import WatchKit
import Foundation

class QuesoController: WKInterfaceController {
    @IBOutlet var quesoPicker: WKInterfacePicker!
    var quesoPizza : String = ""
    var tamPizza : String = ""
    var masaPizza : String = ""
    
    var listQuesoPizza: [(String, String)] = [
        ("Manchego", "Manchego"),
        ("Parmesano", "Parmesano"),
        ("Oaxaca", "Oaxaca"),
        ("Panela", "Panela")]
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        let cPizza = context as! Pizza
        tamPizza = cPizza.Tamaño
        masaPizza = cPizza.Masa
        
        //print("Masa \(tipoMasa)")
        let pickerItems: [WKPickerItem] = listQuesoPizza.map {
            let pickerTam = WKPickerItem()
            pickerTam.caption = $0.0
            pickerTam.title = $0.1
            return pickerTam
        }
        quesoPicker.setItems(pickerItems)
        // Configure interface objects here.
    }
    
    @IBAction func selectQuesoPizza(_ value: Int) {
        quesoPizza = listQuesoPizza[value].1
        print("valor queso pizza \(quesoPizza)")
    }
    
    @IBAction func nextPage() {
        let pContext = Pizza(t:tamPizza,m:masaPizza,q:quesoPizza,i:"")
        pushController(withName: "IngController", context: pContext)
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
