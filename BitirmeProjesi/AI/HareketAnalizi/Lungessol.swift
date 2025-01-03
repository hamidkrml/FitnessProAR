import SwiftUI
import QuickPoseCore
import QuickPoseSwiftUI

struct Lungessol : View {
  
    
    @State private var feedbackText: String? = nil
    @State var overlayImag: UIImage?
    @State private var counter = QuickPoseThresholdCounter()

    @State var scale = 1.0
    var body: some View {
        GeometryReader { geometry in
            ZStack{
                QuickPoseCameraView(useFrontCamera: true, delegate: QuickPoseManager.shared)
                QuickPoseOverlayView(overlayImage: $overlayImag)
            }
            
            .frame(width: geometry.size.width)
             .edgesIgnoringSafeArea(.all)
             .overlay(alignment: .top) {
        if let feedbackText = feedbackText {
            Text(feedbackText)
                .foregroundColor(Color.yellow).font(.system(size: 32))
                .padding(100)
                .scaleEffect(scale)
        }
    }
            
            .onAppear{
                let greenHighlightStyle = QuickPose.Style(conditionalColors: [QuickPose.Style.ConditionalColor(min: 0.4, max: nil, color: UIColor.yellow)])
                QuickPoseManager.shared.start(features: [.fitness(.lunges(side: .left),style: greenHighlightStyle)],
                                 onFrame: { status, image, features, feedback, landmarks in
                    
                    overlayImag = image
                    if let result = features.values.first  {
                        let counterState = counter.count(result.value)
                        feedbackText = ("sol \(counterState.count) ")
                        
                        
                    }
                    
                    
                    
                })
            }.onDisappear{
                QuickPoseManager.shared.stop()
            }
        }
    }
    
}
