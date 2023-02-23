//
//  KeyBoard.swift
//  Calculator
//
//  Created by 唐伟业 on 2023/2/21.
//

import SwiftUI

struct KeyBoardNum: View {
  //MARK: props
  @Binding var numListOfClac: [Float]
  @Binding var screenInfo: String
  @Binding var isDone: Bool
    var body: some View {
      VStack(alignment: .leading){
        HStack{
          Button( action: {
            if !isDone{
              screenInfo = ""
              isDone = true
            }
            screenInfo += "1"
          }, label: {Text("1")
              .frame(width: 89, height: 89)
              .background(.orange)
              .cornerRadius(16)
          })
          Button( action: {
            if !isDone{
              screenInfo = ""
              isDone = true
            }
            screenInfo += "2"
          }, label: {Text("2")
              .frame(width: 89, height: 89)
              .background(.orange)
              .cornerRadius(16)
          })
          Button( action: {
            if !isDone{
              screenInfo = ""
              isDone = true
            }
            screenInfo += "3"
          }, label: {Text("3")
              .frame(width: 89, height: 89)
              .background(.orange)
              .cornerRadius(16)
          })
        }
        .foregroundColor(.white)
        HStack{
          Button( action: {
            if !isDone{
              screenInfo = ""
              isDone = true
            }
            screenInfo += "4"
          }, label: {Text("4")
              .frame(width: 89, height: 89)
              .background(.orange)
              .cornerRadius(16)
          })

          Button( action: {
            if !isDone{
              screenInfo = ""
              isDone = true
            }
            screenInfo += "5"
          }, label: {Text("5")
              .frame(width: 89, height: 89)
              .background(.orange)
              .cornerRadius(16)
          })

          Button( action: {
            if !isDone{
              screenInfo = ""
              isDone = true
            }
            screenInfo += "6"
          }, label: {Text("6")
              .frame(width: 89, height: 89)
              .background(.orange)
              .cornerRadius(16)
          })
        }
        .foregroundColor(.white)
        HStack{
          Button( action: {
            if !isDone{
              screenInfo = ""
              isDone = true
            }
            screenInfo += "7"
          }, label: {Text("7")
              .frame(width: 89, height: 89)
              .background(.orange)
              .cornerRadius(16)
          })

          Button( action: {
            if !isDone{
              screenInfo = ""
              isDone = true
            }
            screenInfo += "8"
          }, label: {Text("8")
              .frame(width: 89, height: 89)
              .background(.orange)
              .cornerRadius(16)
          })
          Button( action: {
            if !isDone{
              screenInfo = ""
              isDone = true
            }
            screenInfo += "9"
          }, label: {Text("9")
              .frame(width: 89, height: 89)
              .background(.orange)
              .cornerRadius(16)
          })
        }
        .foregroundColor(.white)
        HStack{
          Button( action: {
            if !isDone{
              screenInfo = ""
              isDone = true
            }
            screenInfo += "0"
          }, label: {Text("0")
              .frame(width: 89, height: 89)
              .background(.orange)
              .cornerRadius(16)
          })

          Button( action: {
            screenInfo += "."
          }, label: {Text(".")
              .frame(width: 89, height: 89)
              .background(.orange)
              .cornerRadius(16)
          })


          Button(action: {
            screenInfo.removeLast()
            if screenInfo.isEmpty{
              screenInfo+="0"
              isDone = false
            }
          }, label: {Image(systemName: "delete.backward.fill")
              .frame(width: 89, height: 89)
              .background(.orange)
              .cornerRadius(16)
              .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
          })

        }
        .foregroundColor(.white)
      }


    }
}

struct KeyBoard_Previews: PreviewProvider {
    static var previews: some View {
      return ViewOfCalc()
    }
}
