import SwiftUI
import SwiftData

struct istatisticView: View {
   
    @Query var records: [SporData]
    
    var body: some View {
       
        let viewModel = SporChartViewModel(records: records)
        
        NavigationView {
            VStack {
                
                SporChartView(viewModel: viewModel)
                
               
            }
            .navigationTitle("Ana Sayfa")
        }
    }
}
