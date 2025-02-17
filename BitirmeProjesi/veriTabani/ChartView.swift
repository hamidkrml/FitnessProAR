//
//  ChartView.swift
//  BitirmeProjesi
//
//  Created by hamid on 18.02.25.
//

import Charts
import SwiftUI

struct SporChartView : View {
    // View model'i StateObject olarak kullanıyoruz
       @StateObject var viewModel: SporChartViewModel
    var body: some View {
        
        Text("Toplam Spor Verileri ")
            .font(.title2)
            .padding()
        VStack{
            Chart{
                ForEach(viewModel.exerciseTotals, id: \.exercise) { item in
                    BarMark(
                        x: .value("Egzersiz", item.exercise),
                        y: .value("Toplam", item.total)
                            )
                        .foregroundStyle(.blue)
                }
            }
            .frame(height: 300)
                       .padding()
            
        }
    }
}

//
//Preview {
//    SporChartView(viewModel: SporChartViewModel(records: ))
//}
