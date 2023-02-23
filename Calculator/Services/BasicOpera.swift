//
//  BasicOpera.swift
//  Calculator
//
//  Created by 唐伟业 on 2023/2/22.
//

import Foundation

class BasicOpera{
  //add func
  func add(numList: inout [Float]) -> Void {
    guard !numList.isEmpty else{
      return
    }
    let lhs = numList.removeFirst()
    let rhs = numList.removeFirst()
    numList.append(lhs+rhs)
    return
  }
//sub func
  func sub(numList: inout [Float]) -> Void {
    guard !numList.isEmpty else{
      return
    }
    let lhs = numList.removeFirst()
    let rhs = numList.removeFirst()
    numList.append(lhs-rhs)
    return
  }
    //multiple func
  func multiple(numList: inout [Float]) -> Void {
    guard !numList.isEmpty else{
      return
    }
    let lhs = numList.removeFirst()
    let rhs = numList.removeFirst()
    numList.append(lhs*rhs)
    return
  }
//divide func
  func divide(numList: inout [Float]) -> Void {
    guard !numList.isEmpty else{
      return
    }
    let lhs = numList.removeFirst()
    let rhs = numList.removeFirst()
    numList.append(lhs/rhs)
    return
  }
//squer func x^2
  func squer(numList: inout [Float]) -> Void {
    guard !numList.isEmpty else{
      return
    }
    let num = numList.removeFirst()
    numList.append(pow(num, 2))
    numList.insert(pow(num, 2), at: 0)
    return
  }
//squer with other float x^y
  func squerWithNum(numList: inout [Float]) -> Void {
    guard !numList.isEmpty else{
      return
    }
    let lhs = numList.removeFirst()
    let rhs = numList.removeFirst()
    let num = pow(lhs, rhs)
    numList.insert(num, at: 0)
    return
  }
  //squer func √x
    func squerRoot(numList: inout [Float]) -> Void {
      guard !numList.isEmpty else{
        return
      }
      let num = numList.removeFirst()
      numList.insert(sqrtf(num), at: 0)
      return
    }
}
