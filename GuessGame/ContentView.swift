
import SwiftUI

struct ContentView: View {
    
    @State var currectAnswer = Int.random(in: 0...2)
    
    @State var score = 0
    @State var gameMessage = "?"
    @State var gameSubTitle = ""
    
    var body: some View {
        VStack {
            Text(gameMessage)
                .font(Font.largeTitle.bold())
                .padding(.bottom,40)
            Text(gameSubTitle)
                .font(Font.subheadline.bold())
                .padding(.bottom,100)
            HStack{
                Spacer()
                Text("Score \(score)")
                    .font(.system(size: 20,weight: .semibold))
            }
            Button(action: {
                check(answer:0)
            }, label: {
                Image("dog")
                    .frame(maxWidth: .infinity)
                    .frame(height: 50)
                    .frame(width: 300)
                    .background(Color.red)
                    .clipShape(RoundedRectangle(cornerRadius: 6))
            })
            
            Button(action: {
                check(answer:1)
            }, label: {
                Image("cat")
                    .frame(maxWidth: .infinity)
                    .frame(height: 50)
                    .frame(width: 300)
                    .background(Color.blue)
                    .clipShape(RoundedRectangle(cornerRadius: 6))
            })
            Button(action: {
                check(answer:2)
            }, label: {
                Image("fox")
                    .frame(maxWidth: .infinity)
                    .frame(height: 50)
                    .frame(width: 300)
                    .background(Color.yellow)
                    .clipShape(RoundedRectangle(cornerRadius: 6))
            })
            Spacer()
        }
    }
    
    func check(answer:Int){
        if(answer == currectAnswer){
            score += 1;
            gameMessage = "Sucess!"
        }else{
            if(score > 0){
                score -= 1;
                gameMessage = "Failed!"
            }
        }
        switch answer {
        case 0:
            gameSubTitle = "Yes The Correct Answer is Dog"
        case 1:
            gameSubTitle = "Yes The Correct Answer is Cat"
        case 2:
            gameSubTitle = "Yes The Correct Answer is Fox"
        default:
            gameSubTitle = "Wrong"
        }
        currectAnswer = Int.random(in: 0...2)
    }
}

#Preview {
    ContentView()
}
