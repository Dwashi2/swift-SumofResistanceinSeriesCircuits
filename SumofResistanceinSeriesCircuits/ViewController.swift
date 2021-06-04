//
//  ViewController.swift
//  SumofResistanceinSeriesCircuits
//
//  Created by Daniel Washington Ignacio on 04/06/21.
//


/*
 When resistors are connected together in series, the same current passes through each resistor in the chain and the total resistance, RT, of the circuit must be equal to the sum of all the individual resistors added together. That is:

 RT = R1 + R2 + R3 ...
 Create a function that takes an array of values resistance that are connected in series, and calculates the total resistance of the circuit in ohms. The ohm is the standard unit of electrical resistance in the International System of Units ( SI ).

 Examples

 seriesResistance([1, 5, 6, 3]) ➞ "15.0 ohms"

 seriesResistance([16, 3.5, 6]) ➞ "25.5 ohms"

 seriesResistance([0.5, 0.5]) ➞ "1.0 ohm"
 Notes

 All inputs will be valid.
 Notice the singular ohm for values <= 1.
 This challenge was inspired by Joshua Señoron's Python Sum of Resistance in Parallel Circuits challenge.
 */

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        print(self.seriesResistance([1, 5, 6, 3]))
        print(self.seriesResistance([16, 3.5, 6]))
        print(self.seriesResistance([0.5, 0.5]))
    }
    
    func seriesResistance(_ arr: [Double]) -> String {
        var sum: Double = 0
        for n in arr {
            sum = sum + n
        }
        if sum == 1.0 {
            return "\(sum) ohm"
        }else{
            return "\(sum) ohms"
        }
    }


}

