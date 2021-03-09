//
//  testView.swift
//  GAME-1
//
//  Created by User10 on 2021/3/5.
//

import SwiftUI
var menu1 = 0
var riddles2 = data[3]
struct testView: View {
    
    @State var menu = 0
    @State var page = 0
    @State var riddles1 = data[0]

    var body: some View {
        ZStack{
            Color("Color").edgesIgnoringSafeArea(.all)
            VStack{
                ZStack{
                   HStack{
                        Button(action:{}){

                            Image("Menu")
                                .renderingMode(.original)
                                .padding()
                        }
                        .background(Color.white)
                        .cornerRadius(10)

                        Spacer()

                       Image("pic")
                            .resizable()
                            .frame(width: 40, height: 40)
//                       cornerRadius(12)
                   }
                    .padding(.horizontal)

                   Text("春節猜燈謎")
                       .font(.system(size:42))
                }

                HStack(spacing: 20){
//                    Button(action: {
//
//                        data.shuffle()
//                        menu1 = 0
//
//                    }){
//                        Text("重新出題10題")
//                            .foregroundColor(self.menu == 0 ? .white : .black)
//                            .padding(.vertical, 10)
//                            .padding(.horizontal, 20)
//
//                    }
//                    .background(self.menu == 0 ? Color.black : Color.white)
//                    .clipShape(Capsule())
//
                  //  Text("\(riddles1.description)")
                    
                    Button(action:{
                       
                         riddles1 = data[1]

                    },label:{
                        Text("")
                    })
                    .font(.largeTitle)
                    .onAppear(perform: {
                        data.shuffle()
                        riddles1 = data[1]
                    })

//                    Button(action: {
//                            self.menu = 1                    }){
//                        Text("Chinese")
//                            .foregroundColor(self.menu == 1 ? .white : .black)
//                            .padding(.vertical, 10)
//                            .padding(.horizontal, 20)
//
//                    }
//                    .background(self.menu == 1 ? Color.black : Color.white)
//                    .clipShape(Capsule())
//                    Button(action: {
//                            self.menu = 2                    }){
//                        Text("Tawian")
//                            .foregroundColor(self.menu == 2 ? .white : .black)
//                            .padding(.vertical, 10)
//                            .padding(.horizontal, 20)
//
//                    }
//                    .background(self.menu == 2 ? Color.black : Color.white)
//                    .clipShape(Capsule())
                }
                .padding(.top, 30)
                
                GeometryReader{
                    g in
                    //List()
                    Carousel(width: UIScreen.main.bounds.width, page: self.$page, height: g.frame(in: .global).height)
                }
                
            }
            .padding(.vertical)
        }
    }
}

struct List : View {
    var body: some View{
     
        HStack(spacing: 0){
            ForEach(data){ j in
                
                        
                
                    Card(width:UIScreen.main.bounds.width  , data: j)
                    
                
                     
                    
             
            }
        }
    }
}

func shuff()  {
    data.shuffle()
}
var count = 0
var i = 0
struct Card : View {
    @State var menu = 0
    //@State private
   
 //   @Binding var page : Int
    @State private var answertexting = " "
    var width : CGFloat
    var data : testriddles
    var body: some View{
  
        VStack{
          
            VStack{
               
            //    Text("第"+String(data2.id)+"題")
            
//         if(i<10)
//         {
//            Text("\(number1.number)j")
//         }
                 
                
                
                Text(data.description)
                    .font(.title)
                    .fontWeight(.bold)
                    .padding(.top)
                
                
                Text("答案: "+answertexting)
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(.black)
                    .padding(.top, 180)
                 
                
//                Text(self.data.answer)
//                    .foregroundColor(.gray)
//                    .padding(.vertical)
                
                //Spacer(minLength: 0)
                
                Button(action: {
                    self.answertexting = self.data.answer
                    
                }){
                    Text("公布解答")
                        .foregroundColor(.black)
                        .padding(.vertical, 10)
                        .padding(.horizontal, 30)
                }
                .background(Color("Color"))
                .clipShape(Capsule())
                .padding(.top, 20)
                
             
                
                
                Spacer(minLength: 0)
              
               
               
                // For Filling Empty Space ... 註解
            
           // }
            }
            .padding(.horizontal, 20)
            .padding(.vertical, 25)
            .background(Color.white)
            .cornerRadius(20)
            .padding(.top, 25)
        }
        .frame(width: self.width)
    }
}

struct Carousel : UIViewRepresentable {
    func makeCoordinator() -> Coordinator {
        return Carousel.Coordinator(parent1: self)
    }
    
    var width : CGFloat
    @Binding var page : Int
    var height : CGFloat
    
    func makeUIView(context: Context) -> UIScrollView {
        let total = width * CGFloat(data.count)
        let view = UIScrollView()
        view.isPagingEnabled = true
        
        view.contentSize = CGSize (width: total  , height: 1.0)
        view.bounces = true
        view.showsVerticalScrollIndicator = false
        view.showsHorizontalScrollIndicator = false
        view.delegate = context.coordinator
        
         let view1 = UIHostingController(rootView: List())
        view1.view.frame = CGRect(x: 0, y: 0, width:total  , height: self.height)
        
        view1.view.backgroundColor = .clear
        view.addSubview(view1.view)
      
        
        
        return view
        
    }
    

 

    func updateUIView(_ uiView: UIScrollView, context: Context) {
        
       
    }
    class Coordinator: NSObject,UIScrollViewDelegate {
        var parent : Carousel
        init(parent1: Carousel) {
                
            parent = parent1
        }
        func scrollViewDidEndDecelerating(_ scrollview: UIScrollView)   {
            
            let page = Int(scrollview.contentOffset.x / UIScreen.main.bounds.width)
            
            //print(page)
            self.parent.page = page
        }
    }
}
struct Num : Identifiable {
    var id: Int
    var number: Int
}
var number1 = [
    Num(id: 1, number: 1),
    Num(id: 2, number: 2),
    Num(id: 3, number: 3),
    Num(id: 4, number: 4),
    Num(id: 5, number: 5),
    Num(id: 6, number: 6),
    Num(id: 7, number: 7),
    Num(id: 8, number: 8),
    Num(id: 9, number: 9),
    Num(id: 10, number: 10)
]
struct testriddles : Identifiable {
    var id: Int
    var description: String
    var answer: String
}
var data = [
testriddles(id: 0, description: "長的少，短的多，腳去踩，手去摸(提示:日常用品)", answer: "梯子"),
testriddles(id: 1, description: "看看沒有，摸摸倒有，似冰不化，似水不流(提示:日常用品)", answer: "鏡子"),
testriddles(id: 2, description: "兩姐妹，一樣長，酸甜苦辣她先嚐(提示:日常用品)", answer: "筷子"),
testriddles(id: 3, description: "在家臉上白，出門臉上花，遠近都能到，一去不回家(提示:日常用品)", answer: "信"),
testriddles(id: 4, description: "身小力不小，團結又勤勞。有時搬糧食，有時挖地道。(提示:動物)", answer: "螞蟻"),
testriddles(id: 5, description: "說馬不像馬，路上沒有它。若用它做藥，要到海中抓。(提示:動物)", answer: "海馬"),
testriddles(id: 6, description: "黑臉包丞相，坐在大堂上。扯起八卦旗，專拿飛天將。(提示:動物)", answer: "蜘蛛"),
testriddles(id: 7, description: "吃進的是草，擠出的是寶。捨己為人類，功勞可不小(提示:動物)", answer: "奶牛"),
testriddles(id: 8, description: "百姐妹，千姐妹，同床睡，各蓋被(提示:水果)", answer: "石榴"),
testriddles(id: 9, description: "左手五個，左手五個。拿去十個，還剩十個(提示:日常用品)", answer: "手套"),
//testriddles(id: 10, description: "一物生得巧，地位比人高。戴上御風寒，脫下有禮貌(提示:日常用品)", answer: "帽子"),
//testriddles(id: 11, description: "屋裡一座亭，亭中有個人，天天盪鞦韆，不盪就有病(提示:日常用品)", answer: "鐘擺"),
//testriddles(id: 12, description: "頭上亮光光，出門就成雙。背上縛繩子，馱人走四方(提示:日常用品)",answer: "皮鞋"),
//testriddles(id: 13, description: "不是點心不是糖,軟軟涼涼肚裡藏,不能吃來不能喝,每天也要嘗一嘗(提示:日常用品)", answer: "牙膏"),
//testriddles(id: 14, description: "樓台接樓台，一層一層接起來，上面冒白氣，下面水開花(提示:日常用品)", answer: "蒸籠"),
//testriddles(id: 15, description: "一間小藥房，藥品裡面藏。房子塗白色，十字畫中央(提示:日常用品)", answer: "醫藥箱"),
//testriddles(id: 16, description: "薄薄一張口，能啃硬骨頭。吃肉不喝湯，吃瓜不嚼豆(提示:日常用品)", answer: "蒸籠"),
//testriddles(id: 15, description: "樓台接樓台，一層一層接起來，上面冒白氣，下面水開花(提示:日常用品)", answer: "菜刀"),
//testriddles(id: 16, description: "遠看兩個零，近看兩個零。有人用了行不得，有人不用不得行(提示:日常用品)", answer: "眼鏡")
]
var data1 = [
testriddles(id: 0, description: "長的少，短的多，腳去踩，手去摸(提示:日常用品)", answer: "梯子"),
testriddles(id: 2, description: "兩姐妹，一樣長，酸甜苦辣她先嚐(提示:日常用品)", answer: "筷子"),testriddles(id: 1, description: "看看沒有，摸摸倒有，似冰不化，似水不流(提示:日常用品)", answer: "鏡子"),
testriddles(id: 3, description: "在家臉上白，出門臉上花，遠近都能到，一去不回家(提示:日常用品)", answer: "信"),
testriddles(id: 4, description: "身小力不小，團結又勤勞。有時搬糧食，有時挖地道。(提示:動物)", answer: "螞蟻"),
testriddles(id: 5, description: "說馬不像馬，路上沒有它。若用它做藥，要到海中抓。(提示:動物)", answer: "海馬"),
testriddles(id: 6, description: "黑臉包丞相，坐在大堂上。扯起八卦旗，專拿飛天將。(提示:動物)", answer: "蜘蛛")]
struct newView: View {
    var body: some View {
        Text("fd")
           }
}
struct testView_Previews: PreviewProvider {
    static var previews: some View {
        testView()
    }
}
