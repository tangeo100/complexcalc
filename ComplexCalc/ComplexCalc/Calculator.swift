//
//  Calculator.swift
//  ComplexCalc
//
//  Created by Ted Neward on 10/4/17.
//  Copyright © 2017 Neward & Associates. All rights reserved.
//

import Foundation

// All your work will go in here
class Calculator {
    
    //basic add function
    func add(lhs:Int, rhs:Int) -> Int{
        return lhs + rhs
    }
    
    //cartesian coordinate add function
    func add(lhs:(Int, Int), rhs:(Int, Int)) -> (Int, Int){
        return (lhs.0 + rhs.0, lhs.1 + rhs.1)
    }
    
    //string cartesian corrdinate add function
    func add(lhs:[String:Int], rhs:[String:Int]) -> [String:Int]{
        let x1 = lhs["x"]!
        let x2 = rhs["x"]!
        let y1 = lhs["y"]!
        let y2 = rhs["y"]!
        return ["x": (x1 + x2), "y": (y1 + y2)]
    }
    
    //multiple add function
    func add(_ args:[Int]) -> Int{
        var total:Int = 0
        for i in args{
            total += i
        }
        return total
    }
    
    //basic subtract function
    func subtract(lhs:Int, rhs:Int) -> Int{
        return lhs - rhs
    }
    
    //cartesian coordinate subtract function
    func subtract(lhs:(Int, Int), rhs:(Int, Int)) -> (Int, Int){
        return (lhs.0 - rhs.0, lhs.1 - rhs.1)
    }
    
    //string cartesian coordinate subtract function
    func subtract(lhs:[String:Int], rhs:[String:Int]) -> [String:Int]{
        let x1 = lhs["x"]!
        let x2 = rhs["x"]!
        let y1 = lhs["y"]!
        let y2 = rhs["y"]!
        return ["x": (x1 - x2), "y": (y1 - y2)]
    }

    
    //basic multiply function
    func multiply(lhs:Int, rhs:Int) -> Int{
        return lhs * rhs
    }
    
    //multiple multiply function
    func multiply(_ args:[Int]) -> Int{
        var ans:Int = 1
        for i in args{
            ans *= i
        }
        return ans
    }
    
    //basic divde function
    func divide(lhs:Int, rhs:Int) -> Int?{
        if(rhs == 0){ //check if denominator is 0
            return nil
        }
        return lhs / rhs
    }
    
    //basic count function
    func count(_ args:[Int]) -> Int {
        return args.count
    }
    
    //basic average function
    func avg(_ args:[Int]) -> Int? {
        if(args.count == 0){ //check if the array is empty
            return nil
        }
        var total:Int = 0
        for i in args{
            total += i
        }
        return total/args.count
    }
    
    //operation function
    func mathOp(lhs:Int, rhs:Int, op:(Int, Int) -> Int) -> Int{
        return op(lhs, rhs)
    }
    
    //array operation function
    func mathOp(args:[Int], beg:Int, op:(Int, Int) -> Int) -> Int{
        var check:Bool = true
        var ans:Int = 0
        for i in args{
            if check{
                ans = i
                check = false
            } else {
                ans = op(ans, i)
            }
            
        }
        return ans
    }
}
