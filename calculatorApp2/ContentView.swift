//
//  ContentView.swift
//  calculatorApp2
//
//  Created by 中野稜也 on 2023/04/19.
//

import SwiftUI

struct ContentView: View {
    
    
    private let calculateItems: [[String]] = [
        ["AC","+/-","%","÷"],
        ["7","8","9","×"],
        ["4","5","6","-"],
        ["1","2","3","+"],
        ["0",".","="],
    ]
    
    private let numbers: [String] = ["0","1","2","3","4","5","6","7","8","9","."]
    private let symbols: [String] = ["=","+","-","×","÷"]
    
    private let buttonWidth: CGFloat = (UIScreen.main.bounds.width - 50) / 4
    
    var body: some View {
        
        ZStack{
            
            Color.black
                .ignoresSafeArea()
            
            VStack{
                
                Text("Hello, world!")
                    .padding()
                
                VStack{
                    ForEach(calculateItems, id: \.self){ items in
                        HStack{
                            ForEach(items, id: \.self){ item in
                                Button {
                                    
                                } label: {
                                    Text(item)
                                        .frame(minWidth: 0, maxWidth: .infinity,
                                               minHeight: 0, maxHeight: .infinity)
                                }
                                .foregroundColor(Color.white)
                                .background(handleButtonColor(item: item))
                                .frame(width: item == "0" ? buttonWidth * 2 + 10 : buttonWidth)
                                .cornerRadius(buttonWidth)
                            }
                            .frame(height: buttonWidth)
                        }
                    }
                }
            }
        }
    }
    
    // ボタン背景色指定メソッド
    private func handleButtonColor(item: String) -> Color{
        if numbers.contains(item){
            return Color(white: 0.2, opacity: 1)
        } else if symbols.contains(item){
            return Color.orange
        } else {
            return Color(white: 0.8, opacity: 1)
        }
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
