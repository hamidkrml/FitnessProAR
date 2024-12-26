
import SwiftUI
import QuickPoseCore
import QuickPoseSwiftUI



struct hamitkarimli: View {
    
    
    @State var squatCounter = QuickPoseThresholdCounter()
    var quickPose = QuickPose(sdkKey: "01JFD89MTDV57D9DNCMB5ZTGV5")
    @State var overlayImage: UIImage?
    @State var count: Int?

    @State var scale = 1.0
    var body: some View {
        GeometryReader { geometry in
            ZStack {
                
                    QuickPoseCameraView(useFrontCamera: true, delegate: quickPose)
                
                QuickPoseOverlayView(overlayImage: $overlayImage)
                    
            }
                    .frame(width: geometry.size.width)
                     .edgesIgnoringSafeArea(.all)
                     .overlay(alignment: .top) {
                if let count = count {
                    Text("\(count) squat")
                    foregroundColor(Color.yellow).font(.system(size: 32))
                        .padding(100)
                        .scaleEffect(scale)
                }
            }
           
            .onAppear {
             
                
               
                quickPose.start(features: [.fitness(.squats)]) { _, outputImage, result, _, _ in
                    overlayImage = outputImage
                    
                    
                    
                    if let fitnessResult = result[.fitness(.squats)]  {
                        
                        squatCounter.count(fitnessResult.value){    status in
                            
                            if case let .poseComplete(squatCount) = status {
                                count = squatCount
                                withAnimation(.easeInOut(duration: 0.1 )){
                                    scale = 2.0
                                    
                                            }
                                            DispatchQueue.main.asyncAfter(deadline: .now()+0.5) {
                                            withAnimation(.easeInOut(duration: 0.2)) {
                                                scale = 1.0
                                            }
                                        }
                                    }
                                }
                            }
                        }
                }
            }
        }
    }


