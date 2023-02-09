//
//  ViewController.swift
//  Calculator
//
//  Created by まちだこうたろう on 2023/02/01.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var label: UILabel!
    
    var number1: Int = 0
    var number2: Int = 0
    var number3: Int = 0
    
    var ope: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func select0(){
        number1 = number1*10
        label.text = String(number1)
    }
    
    @IBAction func select1(){
        number1 = number1*10 + 1
        label.text = String(number1)
    }
    
    @IBAction func select2(){
        number1 = number1*10 + 2
        label.text = String(number1)
    }
    
    @IBAction func select3(){
        number1 = number1*10 + 3
        label.text = String(number1)
    }
    
    @IBAction func select4(){
        number1 = number1*10 + 4
        label.text = String(number1)
    }
    
    @IBAction func select5(){
        number1 = number1*10 + 5
        label.text = String(number1)
    }
    
    @IBAction func select6(){
        number1 = number1*10 + 6
        label.text = String(number1)
    }
    
    @IBAction func select7(){
        number1 = number1*10 + 7
        label.text = String(number1)
    }
    
    @IBAction func select8(){
        number1 = number1*10 + 8
        label.text = String(number1)
    }
    
    @IBAction func select9(){
        number1 = number1*10 + 9
        label.text = String(number1)
    }
    
    @IBAction func plus(){
        number2 = number1
        number1 = 0
        ope = 1
    }
    
    @IBAction func minus(){
        number2 = number1
        number1 = 0
        ope = 2
    }
    
    @IBAction func multiplication(){
        number2 = number1
        number1 = 0
        ope = 3
    }
    
    @IBAction func division(){
        number2 = number1
        number1 = 0
        ope = 4
    }
    
    @IBAction func equal(){
        if ope == 1{
            //プラスのとき
            number3 = number2 + number1
        }
        if ope == 2{
            //マイナスのとき
            number3 = number2 - number1
        }
        if ope == 3{
            //掛け算のとき
            number3 = number2 * number1
        }
        if ope == 4{
            //割り算のとき
            number3 = number2 / number1
        }
        
        label.textColor = UIColor.black
        
        if number3 > 10 {
            label.textColor = UIColor.red
        }
        
        if number3 < -10 {
            label.textColor = UIColor.blue
        }
        
        label.text = String(number3)
    }
    
    @IBAction func clear(){
        number1 = 0
        number2 = 0
        number3 = 0
        ope = 0
        label.textColor = UIColor.black
        label.text = String(0)
    }

}

