//
//  kayitEkrani.swift
//  BitirmeProjesi
//
//  Created by hamid on 29.11.24.
//

import SwiftUI

struct kayitEkrani: View {
    @State var kayit = false
    @State var kullanciAdi = ""
    @State var sifre = ""
    var body: some View {
   
        VStack(spacing:25) {
            
            ZStack{
                Image("fitness")
                    .resizable() // Görseli yeniden boyutlandırmak için
                    .frame(width: 60, height: 60) // Küçük boyut (ikon gibi)
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
                TextField("SifreniziGirin" ,text: $sifre)
                    .all15
                    .background(Color.txtBg)
                    .cornerRadius(15)
                  
            }
            HStack{
                Button(action:{
                    
                    
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
            Text("eger daha kayit olmadisizsa simdi altta KAYITOL butona tiklayarak kayit ola bilirsiniz")
                .bottom8
            HStack{
                Button(action:{
                    kayit = true
                    
                    
                }, label:{
                    Text("Kayit Ol")
                        .font(.customfont(font: .light, fontSize: 15))
                        .padding(.horizontal, 15)
                    
                })
                .foregroundColor(.btPrimaryApp)
                .frame(width: 120, height: 40)
                .background(Color.primaryApp)
                .cornerRadius(25)
                .padding(.bottom, .bottomInsets + 16)
                
            }
        }   .padding(30)
            .background(.regularMaterial)
            .mask(RoundedRectangle(cornerRadius: 60, style: .continuous))
            .padding(11)
       
            .bgNavlink(content: KayitOl(), isAction: $kayit)
    }
    
    
}

#Preview {
    NavigationView{
        kayitEkrani()
    }
    
}
