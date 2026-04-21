
import SwiftUI

struct ContentView: View {
    
    var currectAnswer = Int.random(in: 0...2)
    
    @State var score = 0
    
    var body: some View {
        VStack {
            Group {
                Text("?")
                    .font(Font.largeTitle.bold())
            }
            .frame(height: 350)
            HStack{
                Spacer()
                Text("Score \(score)")
                    .font(.system(size: 20,weight: .semibold))
            }
            Button(action: {
                print(currectAnswer)
            }, label: {
                Image("dog")
                    .frame(maxWidth: .infinity)
                    .frame(height: 50)
                    .frame(width: 300)
                    .background(Color.red)
                    .clipShape(RoundedRectangle(cornerRadius: 6))
            })
            
            Button(action: {}, label: {
                Image("cat")
                    .frame(maxWidth: .infinity)
                    .frame(height: 50)
                    .frame(width: 300)
                    .background(Color.blue)
                    .clipShape(RoundedRectangle(cornerRadius: 6))
            })
            Button(action: {}, label: {
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
}

#Preview {
    ContentView()
}
