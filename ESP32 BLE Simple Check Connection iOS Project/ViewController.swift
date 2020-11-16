//
//  ViewController.swift
//  ESP32 BLE Simple Check Connection
//
//  Created by Geoffry Gambling on 11/16/20.
//  Copyright © 2020 Geoffry Gambling. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var simpleBluetoothIO: SimpleBluetoothIO!
    
    @IBOutlet weak var ledButtonOne: UIButton!
    
    @IBOutlet weak var ledButtonTwo: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
       
        simpleBluetoothIO = SimpleBluetoothIO(serviceUUID: "4fafc201-1fb5-459e-8fcc-c5c9c331914b", delegate: self as? SimpleBluetoothIODelegate)
    }
    
    @IBAction func ledButtonOneDown(_ sender: UIButton) {
        simpleBluetoothIO.writeValue(value:49)
    }
    
    @IBAction func ledButtonOneUp(_ sender: UIButton) {
        simpleBluetoothIO.writeValue(value: 77)
    }
    
    @IBAction func ledButtonTwoDown(_ sender: UIButton) {
        simpleBluetoothIO.writeValueTwo(value:49)
    }
    
    
    @IBAction func ledButtonTwoUp(_ sender: UIButton) {
        simpleBluetoothIO.writeValueTwo(value: 77)
        
    }
    
}

