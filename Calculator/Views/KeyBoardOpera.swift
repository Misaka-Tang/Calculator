//
//  KeyBoardOpera.swift
//  Calculator
//
//  Created by 唐伟业 on 2023/2/21.
//

import SwiftUI

struct KeyBoardOpera: View {
  @Binding var numListOfClac: [Float]
  @Binding var opListOfCalc: [ChooseOpera]
  @Binding var screenInfo: String
  @Binding var isDone: Bool
  let utility = Utilitie()
  let basicOpera = BasicOpera()

    var body: some View {
      VStack{
        HStack{
          Button("AC", action: {
            numListOfClac.removeAll()
            screenInfo = "0"
            isDone = false
          })
          .frame(width: 89, height: 89)
          .background(.yellow)
          .cornerRadius(16)
          
          Button(action: {

          },label: {Image(systemName: "note.text")
              .frame(width: 89, height: 89)
              .background(.gray)
              .cornerRadius(16)
          })

          Button(action: {
            
          },label: {Text("x^y")
              .frame(width: 89, height: 89)
              .background(.gray)
              .cornerRadius(16)
          })

        }

        HStack{
          Button(action: {
            numListOfClac.append(Float(screenInfo)!)
            if !screenInfo.isEmpty{
              isDone = false
            }
            if opListOfCalc.isEmpty{
              opListOfCalc.append(.add)
            }else{
              let frontOP = opListOfCalc.removeFirst()
              if numListOfClac.count>1{
                utility.calc(type: frontOP, list: &numListOfClac)
                screenInfo = "\(numListOfClac.first!)"
              }
              opListOfCalc.append(.add)
            }
          },label: {Text("+")
              .frame(width: 89, height: 89)
              .background(.gray)
              .cornerRadius(16)
          })

          Button(action: {
            numListOfClac.append(Float(screenInfo)!)
            if !screenInfo.isEmpty{
              isDone = false
            }
            if opListOfCalc.isEmpty{
              opListOfCalc.append(.sub)
            }else{
              let frontOP = opListOfCalc.removeFirst()
              if numListOfClac.count==2{
                utility.calc(type: frontOP, list: &numListOfClac)
              }
              opListOfCalc.append(.sub)
              screenInfo = "\(numListOfClac.first!)"
            }

          },label: {Text("-")
              .frame(width: 89, height: 89)
              .background(.gray)
              .cornerRadius(16)
          })
          Button(action: {
            numListOfClac.append(Float(screenInfo)!)
            if !screenInfo.isEmpty{
              isDone = false
            }
            if opListOfCalc.isEmpty{
              if !numListOfClac.isEmpty{
                utility.calc(type: .sqr, list: &numListOfClac)
                screenInfo = "\(numListOfClac.first!)"
              }
            }else{
              let frontOP = opListOfCalc.removeFirst()
              if numListOfClac.count==2{
                utility.calc(type: frontOP, list: &numListOfClac)
                utility.calc(type: .sqr, list: &numListOfClac)

              }
              screenInfo = "\(numListOfClac.first!)"
            }
          },label: {Text("x^2")
              .frame(width: 89, height: 89)
              .background(.gray)
              .cornerRadius(16)
          })
        }
        HStack{
          Button(action: {
            numListOfClac.append(Float(screenInfo)!)
            if !screenInfo.isEmpty{
              isDone = false
            }
            if opListOfCalc.isEmpty{
              opListOfCalc.append(.multi)
            }else{
              let frontOP = opListOfCalc.removeFirst()
              if numListOfClac.count==2{
                utility.calc(type: frontOP, list: &numListOfClac)
                screenInfo = "\(numListOfClac.first!)"
              }
              opListOfCalc.append(.multi)
            }
          },label: {Text("*")
              .frame(width: 89, height: 89)
              .background(.gray)
              .cornerRadius(16)
          })
          Button(action: {

            numListOfClac.append(Float(screenInfo)!)
            if !screenInfo.isEmpty{
              isDone = false
            }
            if opListOfCalc.isEmpty{
              opListOfCalc.append(.divide)
            }else{
              let frontOP = opListOfCalc.removeFirst()
              if numListOfClac.count==2{
                utility.calc(type: frontOP, list: &numListOfClac)
                screenInfo = "\(numListOfClac.first!)"
              }
              opListOfCalc.append(.divide)
            }
          },label: {Text("/")
              .frame(width: 89, height: 89)
              .background(.gray)
              .cornerRadius(16)
          })
          Button(action: {

            numListOfClac.append(Float(screenInfo)!)
            if !screenInfo.isEmpty{
              isDone = false
            }
            if opListOfCalc.isEmpty{
              if !numListOfClac.isEmpty{
                utility.calc(type: .sqrRoot, list: &numListOfClac)
                screenInfo = "\(numListOfClac.first!)"
              }
            }else{
              let frontOP = opListOfCalc.removeFirst()
              if numListOfClac.count==2{
                utility.calc(type: frontOP, list: &numListOfClac)
                utility.calc(type: .sqrRoot, list: &numListOfClac)
              }
              screenInfo = "\(numListOfClac.first!)"
            }
            
          },label: {Text("√x")
              .frame(width: 89, height: 89)
              .background(.gray)
              .cornerRadius(16)
          })
        }

        Button(action: {
          numListOfClac.append(Float(screenInfo)!)
          isDone = false
          if opListOfCalc.isEmpty{
            screenInfo = "\(numListOfClac.last!)"
            numListOfClac.removeAll()
          }else{
            switch opListOfCalc.removeFirst(){
            case .add:
              if numListOfClac.count==2{
                basicOpera.add(numList: &numListOfClac)
              }
              screenInfo = "\(numListOfClac.last!)"
              numListOfClac.removeAll()
            case .sub:
              if numListOfClac.count==2{
                basicOpera.sub(numList: &numListOfClac)
              }
              screenInfo = "\(numListOfClac.last!)"
              numListOfClac.removeAll()
            case .multi:
              if numListOfClac.count==2{
                basicOpera.multiple(numList: &numListOfClac)
              }
              screenInfo = "\(numListOfClac.last!)"
              numListOfClac.removeAll()
            case .divide:
              if numListOfClac.count==2{
                basicOpera.divide(numList: &numListOfClac)
              }
              screenInfo = "\(numListOfClac.last!)"
              numListOfClac.removeAll()
            case .sqr:
//              utility.calc(type: .sqr, list: &numListOfClac)
              numListOfClac.removeAll()
            case .sqrRoot:
//              utility.calc(type: .sqrRoot, list: &numListOfClac)
              numListOfClac.removeAll()
            case .sqrWithY:
//              utility.calc(type: .sqrWithY, list: &numListOfClac)
              numListOfClac.removeAll()
            }
          }
        },label: {Text("=")
            .frame(width: 89*3.1, height: 89)
            .background(.gray)
            .cornerRadius(16)
        })
      }
      .font(.largeTitle)
      .foregroundColor(.white)
    }
}

struct KeyBoardOpera_Previews: PreviewProvider {
    static var previews: some View {
        ViewOfCalc()
    }
}
