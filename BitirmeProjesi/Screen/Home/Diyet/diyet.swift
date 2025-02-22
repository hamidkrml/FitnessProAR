//
//  Diyet.swift
//  BitirmeProjesi
//
//  Created by hamid on 17.12.24.
//

import SwiftUI

struct Diyet: View {
    @StateObject var viewModel = FrameworkGridViewModel()
    let columns: [GridItem] = [GridItem(.flexible()),
                                GridItem(.flexible()),
                                GridItem(.flexible())]
    var body: some View {
        NavigationView{
            ScrollView{
                LazyVGrid(columns: columns) {
                    ForEach(MockData.frameworks){ framework in
                        
                        FrameworkTitleView(framework: framework)
                            .onTapGesture{
                                viewModel.selecedFramework = framework
                            }
                    }
                }
            }
            .navigationTitle("Diyet")
            .sheet(isPresented: $viewModel.isShowingDetailView) {
                FramworkDetailView(framework: viewModel.selecedFramework!,
                                   isShowingDetailView: $viewModel.isShowingDetailView)
            }
            .frame(maxWidth: .infinity)
            .background(ExtractedView.shared)
            .preferredColorScheme(.dark)
        }
        
        
    }
}

#Preview {
    Diyet()
}

struct FrameworkTitleView: View {
   let framework: Framework
    
    var body: some View {
        VStack{
           
            Image( framework.imageName)
                .resizable()
                .frame(width: 90,height: 90)
                .cornerRadius( 30)
            Text(framework.name)
                .font(.title2)
                .fontWeight(.semibold)
                .scaledToFit()
                .minimumScaleFactor(0.5)
            
            
        }
        
        .padding()
        
    }

       
        
}


