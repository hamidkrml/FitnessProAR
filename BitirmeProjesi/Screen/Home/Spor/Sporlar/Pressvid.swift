
import SwiftUI

struct Pressvid: View {
    
    @State var Press1 = false
    var body: some View {
        VStack(spacing:10){
            VideoPlayerToplu(videoad: "squatVideo")
            
            Divider()
            Spacer()
            VStack(spacing:20){
                Text("Kas geliştirme antrenmanlarında genellikle ilk uygulanan egzersizdir. Hormonların uyarılmasını sağlayarak vücudun kas yapmasına yardımcı olur. ")
                
                Text("Eger dogru Yapip yapmadiginizi Kontrol etmek istiyorsanizsa button tiklayarak AI ozeligili ile kactene yapa biliyosunuz deye kontrol ede bilirsinz")
            }
            
            
            
            
            Spacer()
            
            Button(action:{
                Press1 = true
                
            }, label:{
                Buttongenel(adyaz: "dumbelDene")
                
            })
            
        }.bgNavlink(content: Press(), isAction: $Press1)
            .frame(maxWidth: .infinity)
            .background(
                ExtractedView.shared
            )
            .preferredColorScheme(.dark)
    }
}
