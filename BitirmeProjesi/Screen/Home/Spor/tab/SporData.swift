
import SwiftUI


struct spor: View {
    let columns = [
        GridItem(.flexible())
    ]
    let gridRows = [GridItem(.adaptive(minimum: 150))]
    var body: some View {
        
        
        
        SporHaberleri_()
        
        Divider()
        NavigationView {
            
            ScrollView {
                
                LazyVGrid(columns: columns, spacing: 25) {
                    
                    
                    NavigationLink(destination: Squatvid()) {
                        HStack(spacing: 50) {
                            Image("squat")
                                .resizable()
                                .frame(width: 110, height: 100)
                            Text("Squat ")
                                .font(.title2)
                                .foregroundColor(.black)
                            
                        }
                        .maxLeft
                    }
                    
                    NavigationLink(destination: Bicepvid()) {
                        HStack(spacing: 50  ) {
                            
                            Image("bicep")
                                .resizable()
                                .frame(width: 110, height: 100)
                            Text("Biceps ")
                                .font(.title2)
                                .foregroundColor(.black)
                        }
                        .maxLeft
                    }
                    NavigationLink(destination: Standingvid()) {
                        HStack(spacing: 50) {
                            
                            Image("lateral")
                                .resizable()
                                .frame(width: 100, height: 100)
                            Text("lateral")
                                .font(.title2)
                                .foregroundColor(.black)
                        }
                        .maxLeft
                    }
                    NavigationLink(destination: Pressvid()) {
                        HStack(spacing: 50) {
                            
                            Image("dumbel")
                                .resizable()
                                .frame(width: 100, height: 100)
                            Text("dumbelPres")
                                .font(.title2)
                                .foregroundColor(.black)
                        }
                        .maxLeft
                    }
                   
                    NavigationLink(destination: Lsagvid()) {
                        HStack(spacing: 50) {
                            
                            Image("sag")
                                .resizable()
                                .frame(width: 100, height: 100)
                            Text("Lungess")
                                .font(.title2)
                                .foregroundColor(.black)
                        }
                        .maxLeft
                    }
                    
                    NavigationLink(destination: Lsolvid()) {
                        HStack(spacing: 50) {
                            
                            Image("sol")
                                .resizable()
                                .frame(width: 100, height: 100)
                            
                            Text("Lungess")
                                .font(.title2)
                                .foregroundColor(.black)
                            
                            
                        }.maxLeft
                       
                        .cornerRadius(10)
                    }
                }
                .padding()
            }
        
            
            
        }.navHide
    }
}


#Preview {
    spor()
}
