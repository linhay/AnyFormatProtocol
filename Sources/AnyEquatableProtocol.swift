//
//  AnyEquatableProtocol.swift
//  Pods
//
//  Created by BigL on 2017/7/7.
//
//

import Foundation

public protocol AnyEquatableProtocol {
  var id: String { get }
}

public extension AnyEquatableProtocol {
  public static func ==(lhs: Self, rhs: Self) -> Bool{
    let p1 = Unmanaged.passUnretained(lhs as AnyObject).toOpaque().debugDescription
    let p2 = Unmanaged.passUnretained(rhs as AnyObject).toOpaque().debugDescription
    if p1 == p2 { return true }
    return lhs.id == rhs.id
  }

  public static func !=(lhs: Self, rhs: Self) -> Bool{
    return !(lhs == rhs)
  }
}

public func ==<Element>(lsh: [Element],rsh: [Element]) -> Bool where Element: AnyEquatableProtocol {
  let p1 = Unmanaged.passUnretained(lsh as AnyObject).toOpaque().debugDescription
  let p2 = Unmanaged.passUnretained(rsh as AnyObject).toOpaque().debugDescription
  if p1 == p2 { return true }
  let llist = lsh.map { (item) -> String in return item.id }
  let rlist = rsh.map { (item) -> String in return item.id }
  return llist == rlist
}

public func !=<Element>(lsh: [Element],rsh: [Element]) -> Bool where Element: AnyEquatableProtocol {
  return !(lsh == rsh)
}

