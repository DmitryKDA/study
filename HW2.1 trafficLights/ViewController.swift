//
//  ViewController.swift
//  HW2.1 trafficLights
//
//  Created by Дмитрий Крутько on 3.01.21.
//

import UIKit

enum TrafficLights {
    case red, yellow, green
}

class ViewController: UIViewController {
    
    @IBOutlet weak var redView: UIImageView!
    @IBOutlet weak var yellowView: UIImageView!
    @IBOutlet weak var greenView: UIImageView!
    @IBOutlet weak var switchButtonOutlet: UIButton!
    
    var trafficLights = TrafficLights.green
    
    var lightsIsOn: CGFloat = 1
    var lightsIsOff: CGFloat = 0.3
    
    override func viewDidLoad() {
        super.viewDidLoad()
        redView.backgroundColor = UIColor.red
        yellowView.backgroundColor = UIColor.orange
        greenView.backgroundColor = UIColor.green
        redView.alpha = lightsIsOff
        yellowView.alpha = lightsIsOff
        greenView.alpha = lightsIsOff
        
        
        redView.layer.cornerRadius = redView.frame.height / 2
        yellowView.layer.cornerRadius = yellowView.frame.height / 2
        greenView.layer.cornerRadius = greenView.frame.height / 2
    }
  
    func switchTrafficLights (){
        switch trafficLights {
        case .green:
            redView.alpha = lightsIsOn
            greenView.alpha = lightsIsOff
            trafficLights = .red
        case .red:
            yellowView.alpha = lightsIsOn
            redView.alpha = lightsIsOff
            trafficLights = .yellow
        case .yellow:
            greenView.alpha = lightsIsOn
            yellowView.alpha = lightsIsOff
            trafficLights = .green
        }
    }
    
    @IBAction func switchButton(_ sender: UIButton) {
        switchButtonOutlet.setTitle("Next", for: .normal)
        switchTrafficLights()
    }
}




