//
//  ViewOfCalc.swift
//  Calculator
//
//  Created by 唐伟业 on 2023/2/20.
//

import SwiftUI

struct ViewOfCalc: View {
  //MARK: props
    @State var numListOfClac:[Float] = NumListAndOpera().list
  @State var operaListOfCalc:[ChooseOpera] = NumListAndOpera().listOp
    @State var screenInfo: String = "0"
  //this param means if we have add an operator we
  // turn on next time fresh our screen
  @State var isDone: Bool = false

  
    var body: some View {
      ZStack{
          Color.black
        VStack{
          Text(screenInfo)
            .font(.largeTitle)
            .fontWeight(.bold)
            .foregroundColor(.white)
            .multilineTextAlignment(.trailing)
            .bold()
            .frame(width: 560, height: 100)
            .background(Color("colorForOpera"))
            .cornerRadius(16)
            .padding(.bottom)
          HStack{
            KeyBoardNum(numListOfClac: $numListOfClac, screenInfo: $screenInfo, isDone: $isDone)
            
            KeyBoardOpera(numListOfClac: $numListOfClac, opListOfCalc: $operaListOfCalc, screenInfo: $screenInfo, isDone: $isDone)
          }

        }
      }
      .frame(width: 600, height: 545)
      .cornerRadius(30)
      .shadow(radius: 8)
      .font(.largeTitle)

    }
}

struct ViewOfCalc_Previews: PreviewProvider {
    static var previews: some View {
        ViewOfCalc()
    }
}
