//
//  FramworkDetailView.swift
//  BitirmeProjesi
//
//  Created by hamid on 18.12.24.
//

import SwiftUI

struct FramworkDetailView: View {
    var framework: Framework
    @Binding var isShowingDetailView: Bool
        
    var body: some View {
        VStack{
            HStack{
                Spacer()
                Button{
                    isShowingDetailView = false
                }label: {
                    Image(systemName: "xmark")
                        .foregroundColor(Color(.label))
                        .imageScale(.large)
                        .frame(width: 44,height: 44)
                }
            }
            
            .padding()
            Spacer()
            
            FrameworkTitleView(framework: framework)
            Text(framework.description)
                .font(.body)
                .padding()
            Spacer()
            Button{
                
            }label: {
                Text("Buy")
                
            }
                .foregroundColor(.btPrimaryApp)
                .frame(width: 120, height: 40)
                .background(Color.primaryApp)
                .cornerRadius(25)
                .padding(.bottom, .bottomInsets + 16)
        }
    }
}

#Preview {
    FramworkDetailView(framework: MockData.sampleFrameworks, isShowingDetailView: .constant(false))
}
