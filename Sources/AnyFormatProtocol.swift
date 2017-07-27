//
//  AnyFormatProtocol.swift
//  Pods
//
//  Created by BigL on 2017/5/9.
//
//

import Foundation

public protocol AnyFormatProtocol { }

/// 处理模糊类型
///
/// - Parameter any: 待处理数据
/// - value: 默认值 default: 0
/// - Returns: Double
public extension AnyFormatProtocol{
  
  static func format(_ any: Any?,
                     default value: Double = 0) -> Double {
    guard let p = any else { return value }
    if let v = p as? NSNumber { return v.doubleValue }
    if let v = p as? String { return v.double ?? value }
    return value
  }
  
  static func format(_ any: Any?,
                     default value: Float = 0) -> Float {
    guard let p = any else { return value }
    if let v = p as? NSNumber { return v.floatValue }
    if let v = p as? String { return v.float ?? value }
    return value
  }
  
  static func format(_ any: Any?,
                     default value: CGFloat = 0) -> CGFloat {
    guard let p = any else { return value }
    if let v = p as? NSNumber { return CGFloat(v.doubleValue) }
    if let v = p as? String {
      guard let c = v.double else { return value }
      return CGFloat(c)
    }
    return value
  }
  
  static func format(_ any: Any?,
                     default value: Int = 0) -> Int {
    guard let p = any else { return value }
    if let v = p as? NSNumber { return v.intValue }
    if let v = p as? String { return v.int ?? value }
    return value
  }
  
  static func format(_ any: Any?,
                     default value: Bool = false) -> Bool {
    guard let p = any else { return value }
    if let v = p as? NSNumber { return v.boolValue }
    if let v = p as? String { return v.bool ?? value }
    return value
  }
  
  static func format(_ any: Any?,
                     default value: String = "") -> String {
    guard let p = any else { return value }
    var str = ""
    if let v = p as? String { str = v }
    else { str = String(describing: p) }
    if str == "<null>" { return "" }
    return str
  }
  
  static func format<T>(_ any: Any?,
                        default value: [T] = [T]()) -> [T] {
    guard let p = any else { return value }
    if let v = p as? [T] { return v }
    return value
  }
  
  static func format<Key,Value>(_ any: Any?,
                                default value: [Key: Value] = [Key: Value]()) -> [Key: Value] {
    guard let p = any else { return value }
    if let v = p as? [Key: Value] { return v }
    return value
  }
}

public extension AnyFormatProtocol{
  func format(_ any: Any?,
              default value: Double = 0) -> Double {
    guard let p = any else { return value }
    if let v = p as? NSNumber { return v.doubleValue }
    if let v = p as? String { return v.double ?? value }
    return value
  }
  
  func format(_ any: Any?,
              default value: Float = 0) -> Float {
    guard let p = any else { return value }
    if let v = p as? NSNumber { return v.floatValue }
    if let v = p as? String { return v.float ?? value }
    return value
  }
  
  func format(_ any: Any?,
              default value: CGFloat = 0) -> CGFloat {
    guard let p = any else { return value }
    if let v = p as? NSNumber { return CGFloat(v.doubleValue) }
    if let v = p as? String {
      guard let c = v.double else { return value }
      return CGFloat(c)
    }
    return value
  }
  
  func format(_ any: Any?,
              default value: Int = 0) -> Int {
    guard let p = any else { return value }
    if let v = p as? NSNumber { return v.intValue }
    if let v = p as? String { return v.int ?? value }
    return value
  }
  
  func format(_ any: Any?,
              default value: Bool = false) -> Bool {
    guard let p = any else { return value }
    if let v = p as? NSNumber { return v.boolValue }
    if let v = p as? String { return v.bool ?? value }
    return value
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
  
  func format<T>(_ any: Any?,
                 default value: [T] = [T]()) -> [T] {
    guard let p = any else { return value }
    if let v = p as? [T] { return v }
    return value
  }
  
  func format<Key,Value>(_ any: Any?,
                         default value: [Key: Value] = [Key: Value]()) -> [Key: Value] {
    guard let p = any else { return value }
    if let v = p as? [Key: Value] { return v }
    return value
  }
}
