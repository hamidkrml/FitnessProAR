
import SwiftUI

struct Bicepvid: View {
    
    @State var bicep = false
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
                bicep = true
                
            }, label:{
                Buttongenel(adyaz: "bicepDene")
                
            })
            
        }.bgNavlink(content: BicepsView(), isAction: $bicep)
    }
}
