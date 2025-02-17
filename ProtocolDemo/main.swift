//
//  main.swift
//  ProtocolDemo by Angela Yu
//
//  Created by Muhammad Talal on 2025-02-15.
//

//A protocol that can be adopted by any class or struct, requiring them to implement the `fly()` method. Only types that conform to the `CanFly` protocol will be able to perform the `fly()` action.

protocol CanFly {
    func fly()
}

class Bird {
    
    var isFemale = true
    
    func doc() {
        //after writing my protocol I can now delete my fly() and use it from the protocol.
            
        //    func fly() {
        //        print("The bird would flap it's wings to lift off and then fly in the sky")
        //    }
    }
    
    func layEgg() {
        if isFemale {
            print("This bird can lay eggs")
        }
    }
    
}

class Eagle: Bird, CanFly {
    
    func fly() {
        print("Eagle can fly by flapping it's wings")
    }
    
    
    func soar() {
        print("The bird can soar at high speeds")
    }
    
}


class Penguin: Bird {
    
    func findRock() {
        print("This bird can find a special rock for it's soulmate")
    }
    
}


struct Airplane: CanFly {
    func fly() {
        print("Airplane can fly using it's massive engines, which can range from 1 to 4")
    }
    
    
}

struct FlyingMuseum {
    func flyingExibit(flyingObject: CanFly) {
        print("This object conforms to the CanFly protocol")
    }
}


let myBird = Bird()
let myEagle = Eagle()
let myPenguin = Penguin()

//The airplane needs a fly func and if it inherits it from Bird class, it won't seem right !!! Along with flapping wings it will also inherit layEgg func, Airplanes can't laty eggs !!! We are inheriting functionality which doesn't makes any sense. How do we fix it ?? Ans: Using Protocols.
    
let myAirplane = Airplane()

let flyingMuseum = FlyingMuseum()

flyingMuseum.flyingExibit(flyingObject: myAirplane) //only the structs/classes which conforms to the CanFly protocol can be passed in as an arguments here !!

/*
 
 And now using protocols, only the classes and struct which NEEDS to fly() will have the custom func to do so.
 
 */
