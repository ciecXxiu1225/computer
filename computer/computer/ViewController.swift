//
//  ViewController.swift
//  computer
//
//  Created by 20151104700 on 2019/1/4.
//  Copyright © 2019 CiecXxiu1225. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    var first:String=""
    var second:String=""
    var fh="#"
    var point:String=""
    
    @IBOutlet weak var input: UITextField!
    
    @IBAction func one(_ sender: Any) {
        input.text=input.text!+"1"
    }
    @IBAction func two(_ sender: Any) {
        input.text=input.text!+"2"
    }
    @IBAction func zero(_ sender: Any) {
        input.text=input.text!+"0"
    }
    @IBAction func three(_ sender: Any) {
        input.text=input.text!+"3"
    }
    @IBAction func four(_ sender: Any) {
        input.text=input.text!+"4"
    }
    @IBAction func five(_ sender: Any) {
        input.text=input.text!+"5"
    }
    @IBAction func six(_ sender: Any) {
        input.text=input.text!+"6"
    }
    @IBAction func seven(_ sender: Any) {
        input.text=input.text!+"7"
    }
    @IBAction func eight(_ sender: Any) {
        input.text=input.text!+"8"
    }
    @IBAction func nine(_ sender: Any) {
        input.text=input.text!+"9"
    }
    @IBAction func and(_ sender: Any) {
        first = input.text!
        input.text=""
        fh="+"
    }
    @IBAction func less(_ sender: Any) {
        first = input.text!
        input.text=""
        fh="-"
    }
    @IBAction func double(_ sender: Any) {
        first = input.text!
        input.text=""
        fh="*"
    }
    @IBAction func division(_ sender: Any) {
        first = input.text!
        input.text=""
        fh="/"
    }
    @IBAction func AC(_ sender: Any) {
        input.text=""
        point=""
        fh=""
    }
    @IBAction func point(_ sender: Any) {
        if(input.text!.contains("."))
        {
            input.text=input.text
        }
        else{
            point="."
            input.text=input.text!+"."
        }
    }
    @IBAction func `is`(_ sender: Any) {
        if(point == "."){
            switch fh{
            case"+":
                var temp:Float
                temp=Float(first)!+Float(input.text!)!
                input.text="\(temp)"
            case"-":
                var temp:Float
                temp=Float(first)!-Float(input.text!)!
                input.text="\(temp)"
            case"*":
                var temp:Float
                temp=Float(first)!*Float(input.text!)!
                input.text="\(temp)"
            case"/":
                var temp:Float
                if(input.text == "0")
                {
                    input.text="error"
                }
                else{
                    temp=Float(first)!/Float(input.text!)!
                    input.text="\(temp)"
                }
                
            case"AC":
                input.text=""
                point=""
                fh=""
            default:
                input.text=input.text
            }
        }
        else{
            switch fh{
            case"+":
                var temp:Int
                temp=Int(first)!+Int(input.text!)!
                input.text="\(temp)"
            case"-":
                var temp:Int
                temp=Int(first)!-Int(input.text!)!
                input.text="\(temp)"
            case"*":
                var temp:Int
                temp=Int(first)!*Int(input.text!)!
                input.text="\(temp)"
            case"/":
                var temp:Float
                if(input.text == "0")
                {
                    input.text="error"
                }
                else{
                    temp=Float(first)!/Float(input.text!)!
                    input.text="\(temp)"
                }
            case"AC":
                input.text=""
                point=""
                fh=""
            default:
                input.text=input.text
            }
        }
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
