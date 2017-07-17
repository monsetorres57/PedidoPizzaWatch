//
//  MasaController.swift
//  PedidoPizzaWatch
//
//  Created by Monse on 08/07/17.
//  Copyright © 2017 Monse. All rights reserved.
//
import WatchKit
import Foundation


class MasaController: WKInterfaceController {

    @IBOutlet var masaPicker: WKInterfacePicker!
    var selMasaPizza : String = ""
    var selTamaño : String = ""
    var listMasaPizza: [(String, String)] = [
        ("Masa 1", "Crujiente"),
        ("Masa 2", "Delgada"),
        ("Masa 3", "Gruesa"),
        ("Masa 4", "Queso")]
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        let c = context as! Pizza
        print("Tam Pizza \(c.Tamaño)")
        selTamaño = c.Tamaño
        let pickerItems: [WKPickerItem] = listMasaPizza.map {
            let pickerTam = WKPickerItem()
            pickerTam.caption = $0.0
            pickerTam.title = $0.1
            return pickerTam
        }
        masaPicker.setItems(pickerItems)
        // Configure interface objects here.
    }

    @IBAction func masaPickerSelect(_ value: Int) {
        selMasaPizza = listMasaPizza[value].1
        print("valor masa pizza \(selMasaPizza)")
    }
    
    @IBAction func masaNextPage() {
        let pContext = Pizza(t:selTamaño,m:selMasaPizza,q:"",i:"")
        pushController(withName: "TipoQuesoController", context: pContext)
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
