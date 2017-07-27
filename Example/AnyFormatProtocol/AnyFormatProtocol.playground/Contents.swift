//: Playground - noun: a place where people can play

import UIKit
import AnyFormatProtocol

struct Test: AnyFormatProtocol {

  var int    = 0
  var double = 0.0
  var string = ""
  var bool   = false
  var ints   = [Int]()

  init(dict: [String: Any]) {
    int    = format(dict["int"])
    double = format(dict["double"])
    string = format(dict["string"])
    bool   = format(dict["bool"])
    ints   = format(dict["ints"])
  }
}


let dict1: [String: Any] = ["int": "66",
                            "double": 12.66,
                            "string": 777,
                            "bool": "yes",
                            "ints":[22,333]]
Test(dict: dict1)

