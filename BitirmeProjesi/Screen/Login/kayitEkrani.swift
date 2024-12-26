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
        
        VStack(spacing:25) {
            
            ZStack{
                Image("fitness")
                    .resizable() // Görseli yeniden boyutlandırmak için
                    .frame(width: 60, height: 60) // Küçük boyut (ikon gibi)
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
            HStack{
                Button(action:{
                    anaSayfam = true
                    
                }, label:{
                    Text("GirisYap")
                        .font(.customfont(font: .light, fontSize: 15))
                        .padding(.horizontal, 15)
                    
                })
                .foregroundColor(.btPrimaryApp)
                .frame(width: 120, height: 40)
                .background(Color.primaryApp)
                .cornerRadius(25)
                
               
            }
          
            
            Divider()
            Text("Veya")
                
            HStack{
                Button(action:{
                    kayit = true
                    
                    
                }, label:{
                    Text("Kayit Ol")
                        .font(.customfont(font: .light, fontSize: 15))
                        .padding(.horizontal, 15)
                    
                })
                
                
            }
        }   .padding(30)
            .background(.regularMaterial)
            .mask(RoundedRectangle(cornerRadius: 60, style: .continuous))
            .padding(10)
        
            .bgNavlink(content: KayitOl(), isAction: $kayit)
            .bgNavlink(content: ContentView(), isAction: $anaSayfam)
    }
        
}

#Preview {
    NavigationView{
        kayitEkrani()
        
    }
    
}
