//
//  house.swift
//  GAME-1
//
//  Created by User10 on 2021/3/3.
//
import SwiftUI
import UIKit
struct house: View {
   // @State var isMan: Bool?
    //@State private var offset = CGSize.zero
    //@State private var newPosition = CGSize.zero
    let letters = Array("元宵節猜燈謎")
    @State private var enabled = false
    @State private var dragAmount = CGSize.zero
    @State private var islogin = false
    @State var  mee = 0
    var body: some View {
        
        NavigationView{
            
        
            ZStack{
            
             
                    
             Image("aa")
                .resizable()
                .scaledToFill()
                .offset(x: -15, y: 1)
                .edgesIgnoringSafeArea(.all)
                
            HStack(spacing: 0){
            ForEach(0..<letters.count){

                num in
                Text(String(self.letters[num]))
                   
                    .font(.largeTitle)
                    .background(self.enabled ? Color.red :
                                    Color.yellow)
                    .offset(self.dragAmount)
                    .animation(Animation.default.delay(Double(num)/10))
 
                    }
            .padding(.bottom,700)
                }
                
                NavigationLink(destination: test2(),label:{
                    
                                Text("進入猜燈謎的環節")
                                    .bold()
                                    .font(.title)
                                    .foregroundColor(self.mee == 0 ? .white : .black)
                                    .padding(.vertical, 10)
                                    .padding(.horizontal, 20)
                                    
                                    
                                    .background(self.mee == 0 ? Color.red : Color.white)
                                    .clipShape(Capsule()) })
                        .padding(.top,500)
                NavigationLink(destination: test4(),label:{
                    
                                Text("下面一位(進入選擇題的部分)")
                                    .bold()
                                    .font(.title)
                                    .foregroundColor(self.mee == 0 ? .white : .black)
                                    .padding(.vertical, 10)
                                    .padding(.horizontal, 20)
                                    
                                    
                                    .background(self.mee == 0 ? Color.red : Color.white)
                                    .clipShape(Capsule()) })
                        .padding(.top,650)


                        
                       
                    
                    
                    
                    
                

            
        
            
            
            
            }      .edgesIgnoringSafeArea(.all)
     
       
    }
    .gesture(DragGesture()
                    .onChanged{self.dragAmount = $0.translation}
                    .onEnded{ _ in
                        self.dragAmount = .zero
                        self.enabled.toggle()
                    }
        )
    

        
    }
    }


struct gesture_Previews: PreviewProvider {
    static var previews: some View {
        house()
    }
}
