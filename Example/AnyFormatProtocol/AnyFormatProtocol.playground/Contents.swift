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

func format(_ any: Any?,
                   default value: String = "") -> String {
  guard let p = any else { return value }
  var str = ""
  if let v = p as? String { str = v }
  else { str = String(describing: p) }
  if str == "<null>" { return "" }
  return str
}


let dict1: [String: Any] = ["int": "66",
                             "double": 12.66]
Test(dict: dict1)

