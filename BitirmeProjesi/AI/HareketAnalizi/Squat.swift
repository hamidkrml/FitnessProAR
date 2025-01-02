
    import SwiftUI
    import QuickPoseCore
    import QuickPoseSwiftUI



    struct hamitkarimli: View {
        @State var squatCounter = QuickPoseThresholdCounter()
        @State var overlayImage: UIImage?
        @State var count: Int?
        

        @State var scale = 1.0
        var body: some View {
            GeometryReader { geometry in
                ZStack {
                QuickPoseCameraView(useFrontCamera: true, delegate: QuickPoseManager.shared)
                
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
               
                         .onAppear{
                             
                             
                             
                             
                             
                         }
                         
                         
                         
                         .onDisappear{
                             QuickPoseManager.shared.stop()
                         }
                
                
                }
            }
        }


