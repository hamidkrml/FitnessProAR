import SwiftUI

struct tanitimSayfasi: View {
    @State var kayitEkran = false
    @State private var selectPage = 0
    @State var pageArr: [[String: String]] = [
        [
            "title": "Hos Geldiniz",
            "subtitle": "uygulama hakinda bilgi",
            "image": "image1"
        ],
        [
            "title": "bitirme projesi",
            "subtitle": "Hamid Karimli",
            "image": "image2"
        ],
        [
            "title": "spor hayatimizin bir parcassidir",
            "subtitle": "dsjgfnsdjfk",
            "image": "image3"
        ],
        [
            "title": "bitirme projesi",
            "subtitle": "Hamid Karimli",
            "image": "image2"
        ]
    ]
    
   
    var body: some View {
        ZStack(alignment: .center) {
            // TabView sayfalari kaydirarak gezebilmesi icin
            TabView(selection: $selectPage.animation()) {
                ForEach(0 ..< pageArr.count, id: \.self) { index in
                    let iObj = pageArr[index]
                    VStack {
                        Spacer()
                        
                        Text(iObj["title"] ?? "")
                            .multilineTextAlignment(.center)
                            .font(.customfont(font: .Bold, fontSize: 24))
                            .bottom15
                        Text(iObj["subtitle"] ?? "")
                            .multilineTextAlignment(.center)
                            .font(.customfont(font: .light,
                                              fontSize: 14))
                        HStack{
                            Image(iObj["image"] ?? "")
                                .resizable()
                                .scaledToFit()
                                .frame(width: .widthPer(per: 0.65))
                        }
                        .frame(width: .screenWidth, height: .screenWidth, alignment: .center)
                        
                        Spacer()
                    }
                }
            }
            .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
            
            // Sayfa göstergesi (pagination)
            VStack   {
                Spacer()
                HStack(spacing: 8) {
                    ForEach(0 ..< pageArr.count, id: \.self) { index in
                        Capsule()
                            .fill(selectPage == index ? Color.primaryApp : Color.inActive)
                            .frame(width: 8, height: 8)
                    }
                }
                .padding(.bottom, .heightPer(per: 0.2))
            }
            
            // Top and Bottom Navigation Buttons
            VStack {
                HStack {
                    Spacer()
                    Button(action: {
                        // Skip Action
                        selectPage = pageArr.count - 1
                    }, label: {
                        Text("İleri")
                            .font(.customfont(font: .light, fontSize: 12))
                            .padding(.horizontal, 15)
                            .padding(.vertical, 8)
                            .foregroundColor(.white)
                    })
                    .foregroundColor(.secondaryText)
                
                    .overlay(
                        RoundedRectangle(cornerRadius: 25.0)
                            .stroke(Color.board, lineWidth: 1)
                    )
                }
                .padding(.horizontal, 20)
                
                Spacer()
                
                Button(action: {
                    // İleri butonu
                    if selectPage < pageArr.count - 1 {
                        selectPage += 1
                    } else {
                        kayitEkran = true
                        
                    }
                }, label: {
                    Text(selectPage == pageArr.count - 1 ? "Bitti" : "İleri")
                        .font(.customfont(font: .light, fontSize: 15))
                        .padding(.horizontal, 15)
                })
                .foregroundColor(.btPrimaryApp)
                .frame(width: 120, height: 40)
                .background(Color.primaryApp)
                .cornerRadius(25)
                .padding(.bottom, .bottomInsets + 16)
            }
           
            
        }
        /// Veriler cekiliyor Network kisimi calisiyor 
        .onAppear{
            NetworkMeneger.shared.getuser { result in
                switch result{
                case .success(let success):
                    success.forEach{ user in
                        print(user.username ?? "hamit")
                    }
                case .failure(let failure):
                    print(failure.localizedDescription)
                }
            }
            
        }
        .padding(.horizontal, 20)
        .navigationTitle("")
        .navigationBarBackButtonHidden(true)
        .navigationBarHidden(true)
        
        .frame(maxWidth: .infinity,maxHeight: .infinity)
        .background(
            ExtractedView.shared
        )
        .preferredColorScheme(.dark)
        .bgNavlink(content: kayitEkrani(), isAction: $kayitEkran)
    }
    
       
}

#Preview {
    NavigationView{
        tanitimSayfasi()
    }
        
    
}
