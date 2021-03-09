//
//  newView.swift
//  GAME-1
//
//  Created by User10 on 2021/3/5.
//

import SwiftUI

struct newView: View {
    var body: some View {
        ZStack{
            Color("Color").edgesIgnoringSafeArea(.all)
            VStack{
                ZStack{
                    HStack{
                        Button(action:{
                            
                        }){
                            //()-> PrimitiveButtonStyleConfiguration.Label in
                            Image("menu")
                                .renderingMode(.original)
                                .padding()
                        }
                        .background(Color.white)
                        .cornerRadius(10)
                        
                        Spacer()
                        
                        Image("pic")
                            .resizable()
                            .frame(width: 40, height: 40)
                        cornerRadius(22)
                    }
                    .padding(.horizontal)
                    
                    Text("Food Item")
                        .font(.system(size: 22))
                }
                
                Spacer()
            }
            .padding(.vertical)
        }
    }
}

struct newView_Previews: PreviewProvider {
    static var previews: some View {
        newView()
    }
}
