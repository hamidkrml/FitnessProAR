import SwiftUI
import SwiftData

struct istatisticView: View {
   
    @Query var records: [SporData]
    
    var body: some View {
        let sampleData = [
            (image: "yemek1", title: "Squat", description: "Doğru squat tekniği"),
            (image: "yemek2", title: "Bench Press", description: "Göğüs kaslarını çalıştırır"),
            (image: "yemek3", title: "Deadlift", description: "Tüm vücudu güçlendirir")
        ]
        let viewModel = SporChartViewModel(records: records)
        
        NavigationStack {
            ScrollView {
                LazyVStack {
                    SporChartView(viewModel: viewModel)

                    Text("Aşamalar")
                        .font(.customfont(font: .Bold, fontSize: 25))
                        .foregroundColor(.white)

                    ForEach(sampleData, id: \.title) { item in
                        productCard(image: item.image, title: item.title, decription: item.description)
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
