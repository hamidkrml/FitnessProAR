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
//    @FocusState private var focusedField: fieldKeybord?
    
    enum fieldKeybord{
        case KullaniciAdi
        case Sifre
    }
    var body: some View {
        ScrollView{
            VStack(spacing: 20){
            
                HStack(alignment: .top){
                    Image("fitness")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 150,height: 100)
                        .maxLeft
                }
                    
            }
        }
        
            .frame(maxWidth: .infinity,maxHeight: .infinity)
            .background(
                ExtractedView.shared
            )
            .preferredColorScheme(.dark)
            
        

            .bgNavlink(content: KayitOl(), isAction: $kayit)
            .bgNavlink(content: ContentView(), isAction: $anaSayfam)
            .scrollDismissesKeyboard(.automatic)
    }
        
}

#Preview {
    NavigationView{
        kayitEkrani()
        
    }
    
}



