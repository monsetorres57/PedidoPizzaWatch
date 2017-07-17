//
//  InterfaceController.swift
//  PedidoPizzaWatch WatchKit Extension
//
//  Created by Monse on 21/03/17.
//  Copyright © 2017 Monse. All rights reserved.
//

import WatchKit
import Foundation

class InterfaceController: WKInterfaceController {

    @IBOutlet var sigButton: WKInterfaceButton!
    @IBOutlet var tamPizzaPicker: WKInterfacePicker!
    var selTamPizza = ""
    @IBOutlet var tamPizza: WKInterfacePicker!
    var listTamPizza: [(String, String)] = [
    ("Tam 1", "Chica"),
    ("Tam 2", "Mediana"),
    ("Tam 3", "Grande"),
    ("Tam 4", "Extragrande")]
    
    @IBAction func nextPage() {
       let pContex = Pizza(t: selTamPizza, m:"", q:"",i:"")
       pushController(withName: "TipoMasaController", context: pContex)
    }
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        let pickerItems: [WKPickerItem] = listTamPizza.map {
            let pickerTam = WKPickerItem()
            pickerTam.caption = $0.0
            pickerTam.title = $0.1
            return pickerTam
        }
        tamPizzaPicker.setItems(pickerItems)
        // Configure interface objects here.
    }
    @IBAction func tamPizzaPickerChange(_ value: Int) {
        selTamPizza = listTamPizza[value].1
        print("valor pizza \(selTamPizza)")
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
