//
//  ChartView.swift
//  BitirmeProjesi
//
//  Created by hamid on 18.02.25.
//

import Charts
import SwiftUI

struct SporChartView : View {
    
       @StateObject var viewModel: SporChartViewModel
    var body: some View {
        VStack{
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
                        .foregroundStyle(.yellow.opacity(0.5))
                    }
                }
                .frame(height: 300)
                .padding()
                
            }
        }
        .chartXAxis {
            AxisMarks { value in
                AxisValueLabel()
                    .foregroundStyle(.white) // X ekseni yazı rengi
            }
        }
        .chartYAxis {
            AxisMarks { value in
                AxisValueLabel()
                    .foregroundStyle(.white) // Y ekseni yazı rengi
            }
        }
        .frame(maxWidth: .infinity)
        .background{
            ExtractedView()
        }
        .preferredColorScheme(.dark)
    }
        
}

//
//Preview {
//    SporChartView(viewModel: SporChartViewModel(records: ))
//}
