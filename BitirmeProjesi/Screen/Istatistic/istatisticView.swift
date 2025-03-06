import SwiftUI
import SwiftData

struct istatisticView: View {
   
    @Query var records: [SporData]
    
    var body: some View {
        let sampleData: [(image:String,title:String,destination:DetailPage)]  = [
            (image: "yemek1", title: "Squat",destination: .dumbel),
            (image: "yemek2", title: "Bench Press",destination: .dumbel),
            (image: "yemek3", title: "Deadlift",destination: .dumbel)
        ]
        
        
        NavigationStack {
            ScrollView {
                LazyVStack {
                    SporChartView()

                    Text("Aşamalar")
                        .font(.customfont(font: .Bold, fontSize: 25))
                        .foregroundColor(.white)

                    ForEach(sampleData, id: \.title) { item in
                        let destinatioinView = getDetailView(for: item.destination)
                        NavigationLink(destination: destinatioinView){
                            productCard(image: item.image, title: item.title)
                        }
                    }
                }
                .navigationTitle("Level")
                
                .background (ExtractedView.shared)
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .ignoresSafeArea(.all, edges: .all)
                .preferredColorScheme(.dark)
            }
            
        }
    }
    
    
}
