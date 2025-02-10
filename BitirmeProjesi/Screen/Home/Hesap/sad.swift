import SwiftUI
import Charts


struct sad: View {

    
    var body: some View {
        GeometryReader{ geometry in
            VStack(){
                VStack{
                    Text("Yaptiginiz Sporlar")
                        .font(.customfont(font: .light, fontSize:22))
                        .multilineTextAlignment(.center)
                        .padding()
                }
                
                VStack(){
                    Chart {
                        BarMark(
                            x: .value("Shape Type", "Squat"),
                            y: .value("Total Count", 3)
                        )
                        BarMark(
                            x: .value("Shape Type", "Biceps"),
                            y: .value("Total Count", 2)
                        )
                        BarMark(
                            x: .value("Shape Type", "Standing"),
                            y: .value("Total Count", 5)
                        )
                        BarMark(
                            x: .value("Shape Type", "pressdumbell"),
                            y: .value("Total Count", 5)
                        )
                        BarMark(
                            x: .value("Shape Type", "Sag"),
                            y: .value("Total Count", 6)
                        )
                        BarMark(
                            x: .value("Shape Type", "sol"),
                            y: .value("Total Count", 4)
                        )
                    }
                    .foregroundStyle(.yellow)
                    .frame(width: geometry.size.width * 0.9, height: 300)
                    .padding()
                    
                }
            }
            Spacer()
        }
        .frame(maxWidth: .infinity)
        .background{
            ExtractedView()
        }
        .preferredColorScheme(.dark)
    }
}


#Preview {
    sad()
}
