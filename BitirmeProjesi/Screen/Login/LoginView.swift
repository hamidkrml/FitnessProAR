//
//  kayitEkrani.swift
//  BitirmeProjesi
//
//  Created by hamid on 29.11.24.
//

import SwiftUI
//import Firebase

struct kayitEkrani: View {
//@UIApplicationDelegateAdaptor(AppDelegate.self) var delegate

    @State var kullanciAdi = ""
    @State var sifre = ""
//    @FocusState private var focusedField: fieldKeybord?
    
    enum fieldKeybord{
        case KullaniciAdi
        case Sifre
    }
    var body: some View {
        NavigationStack {
            ScrollView{
                VStack(spacing: 50){
                    
                    HStack(){
                        Image("fitness")
                            .resizable()
                            .frame(width: 100,height: 100)
                            .clipShape(Circle())
                        
                            .padding()
                        Text("Hoş Geldiniz")
                            .font(.largeTitle)
                            .italic()
                            .foregroundStyle(.white)
                            .lineSpacing(15)
                            .shadow(color:.gray,radius: 2,x: 2,y:2)
                    }
                    .maxLeft
                    .top15
                    Spacer()
                    VStack(spacing: 60){
                        TextField("Kullanci Adin",text: $kullanciAdi)
                            .padding()
                            .background(Color.white.opacity(0.2))
                            .foregroundColor(.red)
                            .cornerRadius(20, corner: .allCorners)
                        
                        
                        SecureField("Şifrenizi Giriniz", text: $sifre)
                            .padding()
                            .background(Color.white.opacity(0.2))
                            .cornerRadius(20, corner: .allCorners)
                            .foregroundColor(.black)
                    }
                    .padding(.horizontal,20)
                    
                    .padding()
                    NavigationLink(destination: ContentView()){
                        Buttongenel(adyaz: "Giriş Yap")
                    }
                    NavigationLink(destination: KayitOl()){
                        Text("Henuz hesapiniz yok mu?")
                            .font(.title2)
                            .underline(true,color: .yellow.opacity(0.5))
                            .lineLimit(1)
                            .foregroundColor(.gray.opacity(0.7))
                      
                    }
                }
            }
            .ignoresSafeArea(.keyboard,edges: .bottom)
            .frame(maxWidth: .infinity,maxHeight: .infinity)
            .background(
                ExtractedView.shared
            )
            .preferredColorScheme(.dark)
            
            
            
            
            .scrollDismissesKeyboard(.automatic)
        }
        
        .navHide
    }
        
}

#Preview {
    NavigationView{
        kayitEkrani()
        
    }
    
}



