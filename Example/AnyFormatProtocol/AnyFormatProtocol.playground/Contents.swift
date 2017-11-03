//: Playground - noun: a place where people can play

import UIKit
import AnyFormatProtocol

struct Test: AnyFormatProtocol {

  var int    = 0
  var double = 0.0
  var string = ""
  var bool   = false
  var ints   = [Int]()
  var value1 = 0

  init(dict: [String: Any]) {
    value1 = value(format(dict["value1"]),
                   format(dict["value2"]),
                   format(dict["value3"]),
                   format(dict["value4"]),
                   format(dict["value4"]))

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
                            "ints":[22,333],
                            "value1": -1,
                            "value2": "23",
                            "value3": 3.25,
                            "value4": 6,
                            "value5": 0.78,
                            "value6": "444"]

Test(dict: dict1)


