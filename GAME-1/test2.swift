//
//  test2.swift
//  GAME-1
//
//  Created by User10 on 2021/3/8.
//

import SwiftUI
struct riddles11{
    var description: String
    let answer: String
}
var lantern1 = [
riddles11(description: "長的少，短的多，腳去踩，手去摸(提示:日常用品)", answer: "梯子"),
riddles11(description: "看看沒有，摸摸倒有，似冰不化，似水不流(提示:日常用品)", answer: "鏡子"),
riddles11(description: "兩姐妹，一樣長，酸甜苦辣她先嚐(提示:日常用品)", answer: "筷子"),
riddles11(description: "在家臉上白，出門臉上花，遠近都能到，一去不回家(提示:日常用品)", answer: "信"),
riddles11(description: "身小力不小，團結又勤勞。有時搬糧食，有時挖地道。(提示:動物)", answer: "螞蟻"),
riddles11(description: "說馬不像馬，路上沒有它。若用它做藥，要到海中抓。(提示:動物)", answer: "海馬"),
riddles11(description: "黑臉包丞相，坐在大堂上。扯起八卦旗，專拿飛天將。(提示:動物)", answer: "蜘蛛"),
riddles11(description: "吃進的是草，擠出的是寶。捨己為人類，功勞可不小(提示:動物)", answer: "奶牛"),
riddles11(description: "百姐妹，千姐妹，同床睡，各蓋被(提示:水果)", answer: "石榴"),
riddles11(description: "左手五個，左手五個。拿去十個，還剩十個(提示:日常用品)", answer: "手套"),
riddles11(description: "一物生得巧，地位比人高。戴上御風寒，脫下有禮貌(提示:日常用品)", answer: "帽子"),
riddles11(description: "屋裡一座亭，亭中有個人，天天盪鞦韆，不盪就有病(提示:日常用品)", answer: "鐘擺"),
riddles11(description: "頭上亮光光，出門就成雙。背上縛繩子，馱人走四方(提示:日常用品)",answer: "皮鞋"),
riddles11(description: "不是點心不是糖,軟軟涼涼肚裡藏,不能吃來不能喝,每天也要嘗一嘗(提示:日常用品)", answer: "牙膏"),
riddles11(description: "樓台接樓台，一層一層接起來，上面冒白氣，下面水開花(提示:日常用品)", answer: "蒸籠"),
riddles11(description: "一間小藥房，藥品裡面藏。房子塗白色，十字畫中央(提示:日常用品)", answer: "醫藥箱"),
riddles11(description: "薄薄一張口，能啃硬骨頭。吃肉不喝湯，吃瓜不嚼豆(提示:日常用品)", answer: "蒸籠"),
riddles11(description: "樓台接樓台，一層一層接起來，上面冒白氣，下面水開花(提示:日常用品)", answer: "菜刀"),
riddles11(description: "遠看兩個零，近看兩個零。有人用了行不得，有人不用不得行(提示:日常用品)", answer: "眼鏡")
]
var NU = ["一","二","三","四","五","六","七","八","九","十"]
struct test2: View {
    @State var ridd = lantern1[0]
    @State var texting = lantern1[0].answer
    @State var texting6 = " "
    @State var texting2 = lantern1[0].description //題目
    @State var menu = 0
    @State var count3 = 1
    var body: some View {
        VStack{
        ZStack{
            
            //Color("Color").edgesIgnoringSafeArea(.all)
            Color("Color-1").edgesIgnoringSafeArea(.all)
                
            Text("春節猜燈謎")
                .bold()
                .foregroundColor(.yellow)
                    .padding(.bottom,700)
                    .font(.system(size:42))
            
         
        VStack{
            if(count3-1 < 10){
                Text("第"+NU[count3-1]+"題")
                    .bold()
                    .font(.title)
                    .padding(.bottom,00)
            }
          
            
            Text(texting2)
                .bold()
                .font(.title)
                .padding(.vertical, 50)
                .padding(.horizontal,20)
            
            Text("答案："+texting6)
                .bold()
                .font(.title)
                .padding()
            
            
            
            
            
            if(count3 < 10)
            {
                
                HStack{
                    Button(action: {
                        self.texting6 = self.texting
                       
                    }){
                        Text("公布解答")
                            .bold()
                            .font(.title)
                            .foregroundColor(self.menu == 0 ? .white : .black)
                            .padding(.vertical, 10)
                            .padding(.horizontal, 20)
                            
                            .background(self.menu == 0 ? Color.black : Color.white)
                            .clipShape(Capsule())
                        
                    }
            
                    
                        
                    Button(action:{
                       
                        texting6 = " "
                       
                        if(count3<=9)
                        {
                            texting2 = lantern1[count3].description
                            texting = lantern1[count3].answer
                            count3 += 1
                        }
                        
                        
                    },label:{
                        Text("下一題")
                            .bold()
                            .font(.title)
                            .foregroundColor(self.menu == 0 ? .white : .black)
                            .padding(.vertical, 10)
                            .padding(.horizontal, 20)
                            .background(self.menu == 0 ? Color.black : Color.white)
                            .clipShape(Capsule())
                    })
                }
          
                
                
            }
            
            else if(count3 == 10)
            {
                Button(action:{
                    lantern1.shuffle()
                    ridd = lantern1[0]
                
                    count3 = 1
                },label:{
                    Text("重新給我10題")
                        .bold()
                        .font(.title)
                        .foregroundColor(self.menu == 0 ? .white : .black)
                        .padding(.vertical, 10)
                        .padding(.horizontal, 20)
                        .background(self.menu == 0 ? Color.black : Color.white)
                        .clipShape(Capsule())
                })
                .onAppear(perform: {
                    lantern.shuffle()
                    ridd = lantern1[0]
                
                    })
            }
           
            
            }
        .padding(.horizontal, 1)
        .padding(.vertical, 105)
        .background(Color.white)
        .cornerRadius(20)
     
      //  .padding(.top, 135)
            
        }
            }
        }
}

struct test2_Previews: PreviewProvider {
    static var previews: some View {
        test2()
    }
}
