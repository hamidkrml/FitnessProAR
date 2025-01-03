
import SwiftUI


struct spor: View {
    let columns = [
        GridItem(.flexible())
    ]
    
    var body: some View {
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
                            
                            Image("abdu")
                                .resizable()
                                .frame(width: 100, height: 100)
                            Text("Standing")
                                .font(.title2)
                                .foregroundColor(.black)
                        }
                        .maxLeft
                    }
                    NavigationLink(destination: Standingvid()) {
                        HStack(spacing: 50) {
                            
                            Image("bicep")
                                .resizable()
                                .frame(width: 100, height: 100)
                            Text("Squat")
                                .font(.title2)
                                .foregroundColor(.black)
                        }
                        .maxLeft
                    }
                   
                    NavigationLink(destination: Standingvid()) {
                        HStack(spacing: 50) {
                            
                            Image("squat")
                                .resizable()
                                .frame(width: 100, height: 100)
                            
                            Text("Squat")
                                .font(.title2)
                                .foregroundColor(.black)
                            
                            
                        }.maxLeft
                       
                        .cornerRadius(10)
                    }
                }
                .padding()
            }
        
            .navigationTitle("Sporlarimiz")
            
        }.navHide
    }
}


#Preview {
    spor()
}
