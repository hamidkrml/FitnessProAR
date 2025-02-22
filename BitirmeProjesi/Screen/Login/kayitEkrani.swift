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
    @State var kayit = false
    @State var anaSayfam = false
    @State var kullanciAdi = ""
    @State var sifre = ""
    var body: some View {
   
        VStack(spacing: 25) {
            
            ZStack{
                Image("fitness")
                    .resizable()
                    .frame(width: 60, height: 60)
                    .cornerRadius(20)
                    .maxLeft
                Text("ProFitness")
                    .font(.customfont(font: .semiBold, fontSize: 25))
                    .maxConter
                
            }
            
            Text("Hesabınız varsa giriş yapın veya yeni bir hesap oluşturun")
                .font(.customfont(font: .light, fontSize:18))
                .multilineTextAlignment(.center)
                .padding(.bottom,15)
            
            HStack {
                VStack {
                    Text("KullanciAdi")
                        .maxLeft
                        .font(.customfont(font: .light, fontSize: 13))
                    TextField("KullanciAdi" ,text: $kullanciAdi)
                        .all15
                        .background(Color.txtBg)
                        .cornerRadius(15)
                        .bottom15
                }
            }
            VStack {
                Text("Sifre")
                    .maxLeft
                    .font(.customfont(font: .light, fontSize: 13))
                SecureField("SifreniziGirin" ,text: $sifre)
                    .all15
                    .background(Color.txtBg)
                    .cornerRadius(15)
                    
            }
            Spacer()
            HStack{
                Button(action:{
                    anaSayfam = true
                    
                }, label:{
                    Buttongenel(adyaz: "GirisYap")
                        
                    
                })
                
                
               
            }
          
            
           
            
                
            HStack{
                Button(action:{
                    kayit = true
                    
                    
                }, label:{
                    Buttongenel(adyaz: "KayitOl")
                    
                })
                
                
            }
            
        }
        .padding(40)
        .navigationTitle("sporlarimiz")
        .frame(maxWidth: .infinity,maxHeight: .infinity)
        .background(
            ExtractedView.shared
        )
        .preferredColorScheme(.dark)
           
        Spacer()
            .bgNavlink(content: KayitOl(), isAction: $kayit)
            .bgNavlink(content: ContentView(), isAction: $anaSayfam)
            
    }
        
}

#Preview {
    NavigationView{
        kayitEkrani()
        
    }
    
}
