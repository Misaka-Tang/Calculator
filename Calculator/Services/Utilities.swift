//
//  Utilities.swift
//  Calculator
//
//  Created by 唐伟业 on 2023/2/22.
//

import Foundation

class Utilitie{

  let basicOP = BasicOpera()

  func calc(type: ChooseOpera, list: inout [Float]){
    switch type{
    case .add:
      basicOP.add(numList: &list)
    case .sub:
      basicOP.sub(numList: &list)
    case .multi:
      basicOP.multiple(numList: &list)
    case .divide:
      basicOP.divide(numList: &list)
    case .sqr:
      basicOP.squer(numList: &list)
    case .sqrRoot:
      basicOP.squerRoot(numList: &list)
    case .sqrWithY:
      basicOP.squerWithNum(numList: &list)
    }
  }

}
