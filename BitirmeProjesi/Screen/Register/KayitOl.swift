//
    //  KayitOl.swift
//  BitirmeProjesi
//
//  Created by hamid on 01.12.24.
//

import SwiftUI

struct KayitOl: View {
    @State  var ad:String=""
    @State  var soyad:String=""
    @State  var kullanciad:String=""
    @State  var gmail:String = ""
    @State  var boy :String  = ""
    @State  var ceki :String = ""
    @State var hamit = false
    
    var body: some View {
     
        
        
        
        VStack(spacing:20){
           
            
            

        VStack{
                
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
                Text("Kayit Sayfasina Hosgeldiniz")
                    .font(.customfont(font: .light, fontSize:18))
                    .multilineTextAlignment(.center)
                    .padding(.bottom,15)
                HStack{
                    VStack{
                        textal(label1: "Ad")
                        textfiealdal(label2: "AdinizGirin", text: $ad)
                      
                    }
                    
                    VStack{
                        textal(label1: "SoyAd")
                        textfiealdal(label2: "SoyAdiniziGirin", text: $soyad)
                        
                    }
                    
                    
                    
                }
             
                   
                    VStack{
                        textal(label1: "KullanciAdi")
                        textfiealdal(label2: "KullanciAdinizigirin", text: $kullanciad)
                    }
                    
                    VStack{
                        textal(label1: "Gmail")
                        textfiealdal(label2: "GmalinizGiriniz", text: $gmail)
            
                }
                
                VStack{
                    textal(label1: "sifrenizi giriniz")
                    textfiealdal(label2: "sifreniz", text: $ceki)                }
                    
                
                HStack{
                    VStack{
                        textal(label1: "Boy giriniz")
                        textfiealdal(label2: "Boyunuz giriniz", text: $boy)
                    }
                    
                    VStack{
                        textal(label1: "ceki giriniz")
                        textfiealdal(label2: "cekinizi giriniz", text: $ceki)
                    }
                    
                    
                    
                    
                }
                VStack
                {
                    Button(action:{
                        
                        hamit = true
                        
                    }, label:{
                        Text("Kayit Ol")
                            .font(.customfont(font: .light, fontSize: 15))
                            .padding(.horizontal, 15)
                        
                    })
                }
                .foregroundColor(.btPrimaryApp)
                .frame(width: 120, height: 40)
                .background(Color.primaryApp)
                .cornerRadius(25)
                .padding(.bottom, .bottomInsets + 16)
                
                
                
                
            }

           
            
        }  .padding(30)
            .background(.regularMaterial)
            .mask(RoundedRectangle(cornerRadius: 60, style: .continuous))
            .padding(10)
            
            .bgNavlink(content: BicepsView(), isAction: $hamit)
    }
        
}

#Preview {
    NavigationView{
        KayitOl()
    }
}