//
//  Pizza.swift
//  PedidoPizzaWatch
//
//  Created by Monse on 15/07/17.
//  Copyright © 2017 Monse. All rights reserved.
//

import WatchKit

class Pizza: NSObject {
        var Tamaño:String="";
        var Masa:String=""
        var Queso:String="";
        var Ingredientes: String="";
        
        init(t:String,m:String,q:String,i:String){
            Tamaño = t
            Masa = m
            Queso = q
            Ingredientes = i
        }

}
