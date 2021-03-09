////
////  test2.swift
////  GAME-1
////
////  Created by User10 on 2021/3/8.
////
//
//import SwiftUI
//struct riddles111{
//    var description: String
//    var trueanswer: String
//    var ans1: String
//    var ans2: String
//    var ans3: String
//}
//
//var lantern11 = [
//    riddles111(description: "長的少，短的多，腳去踩，手去摸(提示:日常用品)",trueanswer:" 梯子", ans1: "梯子",ans2: "梳子",ans3: "鞋子"),
////    riddles111(description: "看看沒有，摸摸倒有，似冰不化，似水不流(提示:日常用品)",trueanswer:"鏡子", ans1: "鏡子",ans2: "藥草",ans3: "西瓜"),
////    riddles111(description: "兩姐妹，一樣長，酸甜苦辣她先嚐(提示:日常用品)", trueanswer:" 筷子", ans1: "梯子",ans2: "筷子",ans3: "手機"),
////    riddles111(description: "在家臉上白，出門臉上花，遠近都能到，一去不回家(提示:日常用品)", trueanswer:"信", ans1: "水",ans2: "橘子",ans3: "信"),
////    riddles111(description: "身小力不小，團結又勤勞。有時搬糧食，有時挖地道。(提示:動物)", trueanswer:" 螞蟻", ans1: "大象",ans2: "雞",ans3: "螞蟻"),
////    riddles111(description: "說馬不像馬，路上沒有它。若用它做藥，要到海中抓。(提示:動物)", trueanswer:" 海馬", ans1: "海馬",ans2: "黑馬",ans3: "白馬"),
////    riddles111(description: "黑臉包丞相，坐在大堂上。扯起八卦旗，專拿飛天將。(提示:動物)", trueanswer:" 蜘蛛", ans1: "狗",ans2: "蜘蛛",ans3: "螃蟹"),
////    riddles111(description: "吃進的是草，擠出的是寶。捨己為人類，功勞可不小(提示:動物)", trueanswer:" 奶牛", ans1: "海馬",ans2: "馬",ans3: "奶牛"),
////    riddles111(description: "百姐妹，千姐妹，同床睡，各蓋被(提示:水果)", trueanswer:" 石榴", ans1: "頻果",ans2: "奇異果",ans3: "石榴"),
////    riddles111(description: "左手五個，左手五個。拿去十個，還剩十個(提示:日常用品)", trueanswer:" 手套", ans1: "剪刀",ans2: "刀子",ans3: "手套"),
////    riddles111(description: "一物生得巧，地位比人高。戴上御風寒，脫下有禮貌(提示:日常用品)", trueanswer:" 帽子", ans1: "手套",ans2: "帽子",ans3: "鞋子"),
////    riddles111(description: "屋裡一座亭，亭中有個人，天天盪鞦韆，不盪就有病(提示:日常用品)", trueanswer:" 鐘擺", ans1: "鐘擺",ans2: "手錶",ans3: "鞋"),
////    riddles111(description: "頭上亮光光，出門就成雙。背上縛繩子，馱人走四方(提示:日常用品)", trueanswer:" 皮鞋", ans1: "鐘擺",ans2: "門把",ans3: "皮鞋"),
////    riddles111(description: "不是點心不是糖,軟軟涼涼肚裡藏,不能吃來不能喝,每天也要嘗一嘗(提示:日常用品)",  trueanswer:" 牙膏", ans1: "電腦",ans2: "牙膏",ans3: "鞋"),
////    riddles111(description: "樓台接樓台，一層一層接起來，上面冒白氣，下面水開花(提示:日常用品)",trueanswer:" 蒸籠", ans1: "時鐘",ans2: "蒸籠",ans3: "喇叭花"),
////    riddles111(description: "一間小藥房，藥品裡面藏。房子塗白色，十字畫中央(提示:日常用品)", trueanswer:" 醫藥箱", ans1: "飛機",ans2: "彩虹",ans3: "醫藥箱"),
////    riddles111(description: "薄薄一張口，能啃硬骨頭。吃肉不喝湯，吃瓜不嚼豆(提示:日常用品)", trueanswer:" 蒸籠", ans1: "飛機",ans2: "蒸籠",ans3: "杯"),
////    riddles111(description: "樓台接樓台，一層一層接起來，上面冒白氣，下面水開花(提示:日常用品)",trueanswer:" 蒸籠", ans1: "棒子",ans2: "蒸籠",ans3: "菜刀"),
////    riddles111(description: "遠看兩個零，近看兩個零。有人用了行不得，有人不用不得行(提示:日常用品)",  trueanswer:" 眼鏡", ans1: "滑鼠",ans2: "充電器",ans3: "眼鏡")
//] as [Any]
//var NU1 = ["一","二","三","四","五","六","七","八","九","十"]
//struct test3: View {
//    @State var ridd = lantern1[0]
//    @State var texting = " "
//    @State var texting2 = lantern1[0].description //題目
//    @State var menu = 0
//    @State var count4 = 1
//    var body: some View {
//        VStack{
//        ZStack{
//
//   
//            Color("Color-1").edgesIgnoringSafeArea(.all)
//
//            Text("春節猜燈謎(選擇題版)")
//                .bold()
//                .foregroundColor(.yellow)
//                    .padding(.bottom,700)
//                    .font(.system(size:42))
//
//
////        VStack{
////            if(count4-1 < 10){
////                Text("第"+NU[count-1]+"題")
////                    .bold()
////                    .font(.title)
////                    .padding(.bottom,00)
////            }
////
////
////            Text(texting2)
////                .bold()
////                .font(.title)
////                .padding(.vertical, 50)
////                .padding(.horizontal,20)
////
//////            Text("答案："+texting)
//////                .bold()
//////                .font(.title)
//////                .padding()
//////
////
////
////
////
////            if(count4 < 10)
////            {
////
////                HStack{
//////                    Button(action: {
//////                        self.texting = self.ridd.answer
//////
//////                    }){
//////                        Text("公布解答")
//////                            .bold()
//////                            .font(.title)
//////                            .foregroundColor(self.menu == 0 ? .white : .black)
//////                            .padding(.vertical, 10)
//////                            .padding(.horizontal, 20)
//////
//////                            .background(self.menu == 0 ? Color.black : Color.white)
//////                            .clipShape(Capsule())
//////
//////                    }
////
////
////
//////                    Button(action:{
//////
//////                        texting = " "
//////
//////                        if(count3<=9)
//////                        {
//////                            texting2 = lantern1[count3].description
//////                            count3 += 1
//////                        }
//////
//////
//////                    },label:{
//////                        Text("下一題")
//////                            .bold()
//////                            .font(.title)
//////                            .foregroundColor(self.menu == 0 ? .white : .black)
//////                            .padding(.vertical, 10)
//////                            .padding(.horizontal, 20)
//////                            .background(self.menu == 0 ? Color.black : Color.white)
//////                            .clipShape(Capsule())
//////                    })
////                    VStack{
////                    Button(action:{
////
////                        texting = " "
////
////                        if(count3<=9)
////                        {
////                            texting2 = lantern1[count3].description
////                            count4 += 1
////                        }
////
////
////                    },label:{
////                        Text()
////                            .bold()
////                            .font(.title)
////                            .foregroundColor(self.menu == 0 ? .white : .black)
////                            .padding(.vertical, 10)
////                            .padding(.horizontal, 20)
////                            .background(self.menu == 0 ? Color.black : Color.white)
////                            .clipShape(Capsule())
////                    })
////                    Button(action:{
////
////                        texting = " "
////
////                        if(count3<=9)
////                        {
////                            texting2 = lantern1[count3].description
////                            count3 += 1
////                        }
////
////
////                    },label:{
////                        Text("下一題")
////                            .bold()
////                            .font(.title)
////                            .foregroundColor(self.menu == 0 ? .white : .black)
////                            .padding(.vertical, 10)
////                            .padding(.horizontal, 20)
////                            .background(self.menu == 0 ? Color.black : Color.white)
////                            .clipShape(Capsule())
////                    })
////                    Button(action:{
////
////                        texting = " "
////
////                        if(count3<=9)
////                        {
////                            texting2 = lantern1[count3].description
////                            count3 += 1
////                        }
////
////
////                    },label:{
////                        Text("下一題")
////                            .bold()
////                            .font(.title)
////                            .foregroundColor(self.menu == 0 ? .white : .black)
////                            .padding(.vertical, 10)
////                            .padding(.horizontal, 20)
////                            .background(self.menu == 0 ? Color.black : Color.white)
////                            .clipShape(Capsule())
////                    })
////                }
////
////                }
////
////
////
////            }
////
////            else if(count4 == 10)
////            {
////                Button(action:{
////                    lantern1.shuffle()
////                    ridd = lantern1[0]
////
////                    count3 = 1
////                },label:{
////                    Text("重新給我10題")
////                        .bold()
////                        .font(.title)
////                        .foregroundColor(self.menu == 0 ? .white : .black)
////                        .padding(.vertical, 10)
////                        .padding(.horizontal, 20)
////                        .background(self.menu == 0 ? Color.black : Color.white)
////                        .clipShape(Capsule())
////                })
////                .onAppear(perform: {
////                    lantern.shuffle()
////                    ridd = lantern1[0]
////
////                    })
////            }
////
////
////            }
////        .padding(.horizontal, 1)
////        .padding(.vertical, 105)
////        .background(Color.white)
////        .cornerRadius(20)
////
////      //  .padding(.top, 135)
////
////        }
////            }
//        }
//}
//
//struct test3_Previews: PreviewProvider {
//    static var previews: some View {
//        test3()
//    }
//}
//
