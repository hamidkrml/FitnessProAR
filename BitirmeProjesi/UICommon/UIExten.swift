//
//  UIExten.swift
//  BitirmeProjesi
//
//  Created by hamid on 28.11.24.
//

import SwiftUI
// ozel yazi tipleri ttf olarak projeye entegre olundu 
enum popins: String{
    case light = "Popins-Light"
    case regular = "Popins-Regular"
    case medium = "Popins-Medium"
    case semiBold = "Popins-SemiBold"
    case Bold = "Popins-Bold"
}
extension UITabBar {
    static func setupAppearance() {
        let appearance = UITabBarAppearance()
        appearance.configureWithOpaqueBackground()
        appearance.backgroundColor = UIColor.white // Tab Bar arka plan rengi
        UITabBar.appearance().standardAppearance = appearance
        UITabBar.appearance().scrollEdgeAppearance = appearance
    }
}
//          kullanim ornegi
//.font(.customfont(font: .Bold, fontSize: 18))
// .font(.customfont(font: .light, fontSize: 20))
extension Font {
    static func customfont(font: popins, fontSize : CGFloat)->Font{
        custom(font.rawValue,size: fontSize)
    }
}
// Ekran genişliği ayarlama
extension CGFloat {
 
    static var screenWidth: Double {
        return UIScreen.main.bounds.size.width
    }

    // Ekran yüksekliği
    static var screenHeight: Double {
        return UIScreen.main.bounds.size.height
    }

    // Genişlik için yüzdelik hesaplama
    static func widthPer(per: Double) -> Double {
        return screenWidth * per
    }

    // Yükseklik için yüzdelik hesaplama
    static func heightPer(per: Double) -> Double {
        return screenHeight * per
    }

    // Güvenli alan üst kenar boşluğu
    static var topInsets: Double {
        if let keyWindow = UIApplication.shared.connectedScenes
            .compactMap({ $0 as? UIWindowScene })
            .flatMap({ $0.windows })
            .first(where: { $0.isKeyWindow }) {
            return keyWindow.safeAreaInsets.top
        }
        return 0.0
    }

    // Güvenli alan alt kenar boşluğu
    static var bottomInsets: Double {
        if let keyWindow = UIApplication.shared.connectedScenes
            .compactMap({ $0 as? UIWindowScene })
            .flatMap({ $0.windows })
            .first(where: { $0.isKeyWindow }) {
            return keyWindow.safeAreaInsets.bottom
        }
        return 0.0
    }

    // Güvenli alan yatay toplam boşluk (sol + sağ)
    static var horizontalInsets: Double {
        if let keyWindow = UIApplication.shared.connectedScenes
            .compactMap({ $0 as? UIWindowScene })
            .flatMap({ $0.windows })
            .first(where: { $0.isKeyWindow }) {
            return keyWindow.safeAreaInsets.left + keyWindow.safeAreaInsets.right
        }
        return 0.0
    }

    // Güvenli alan dikey toplam boşluk (üst + alt)
    static var verticalInsets: Double {
        if let keyWindow = UIApplication.shared.connectedScenes
            .compactMap({ $0 as? UIWindowScene })
            .flatMap({ $0.windows })
            .first(where: { $0.isKeyWindow }) {
            return keyWindow.safeAreaInsets.top + keyWindow.safeAreaInsets.bottom
        }
        return 0.0
    }
}
//      uygulama kullanacigimiz renkler 
extension Color {
    static var  primaryApp: Color{
        return Color(hex: "F1C40E")
    }
    static var  primaryText: Color{
        return Color(hex: "0C0B0B")
    }
    static var  secondaryText: Color{
        return Color(hex: "2C3E50")
    }
    static var  btPrimaryApp: Color{
        return Color(hex: "0D0C0C")
    }
    static var  btnSecondaryText: Color{
        return Color(hex: "241111")
    }
    static var  placeholder: Color{
        return Color(hex: "94A5A6")
    }
    static var  inActive: Color{
        return primaryText.opacity(0.2)
        
    }
    static var  txtBg: Color{
        return Color(hex: "FCFBFB")
        
    }
    static var  board: Color{
        return Color(hex: "D4D4D4")
        
    }
    init(hex: String) {
        let hex = hex.trimmingCharacters(in: .alphanumerics.inverted)
        var int: UInt64 = 0
        Scanner(string: hex).scanHexInt64(&int)
        let a, r, g, b: UInt64
        switch hex.count {
        case 3: // Short hex format (e.g., "123" -> "112233")
            (a, r, g, b) = (255, (int >> 8) * 17, (int >> 4 & 0xF) * 17, (int & 0xF) * 17)
        case 6: // Standard hex format (e.g., "112233")
            (a, r, g, b) = (255, int >> 16, (int >> 8) & 0xFF, int & 0xFF)
        case 8: // ARGB hex format (e.g., "FF112233")
            (a, r, g, b) = (int >> 24, (int >> 16) & 0xFF, (int >> 8) & 0xFF, int & 0xFF)
        default:
            (a, r, g, b) = (1, 1, 1, 0) // Default to black if invalid
        }
        
        self.init(
            .sRGB,
            red: Double(r) / 255,
            green: Double(g) / 255,
            blue: Double(b) / 255,
            opacity: Double(a) / 255
        )
    }
}


extension View{
    func cornerRadius(_ radius: CGFloat,corner:UIRectCorner) ->some View{
        clipShape(Roundedcorner(radius: radius, corner: corner))
    }
    func endEditing (){
        UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
    func bgNavlink(content:some View, isAction:Binding<Bool>)->some View{
        return self.background(
            NavigationLink(destination: content,isActive: isAction, label: {
                EmptyView()
            })
        )
    }
    var navHide : some View{
        return navigationTitle("")
            .navigationBarBackButtonHidden()
            .navigationBarHidden(true)
            .ignoresSafeArea()
    }
    var navHideWithout : some View{
        return navigationTitle("")
            .navigationBarBackButtonHidden()
            .navigationBarHidden(true)
    }
    var maxConter : some View{
        return frame(maxWidth: .infinity, alignment: .center)
    }
    var maxLeft : some View{
        return frame(maxWidth: .infinity, alignment: .leading)
    }
    var maxRight : some View{
        return frame(maxWidth: .infinity, alignment: .trailing)
    }
    var top8: some View{
        return padding(.top,8)
    }
    var bottom8: some View{
        return padding(.bottom,8)
    }
    var top15: some View{
        return padding(.top,15)
    }
    var bottom15: some View{
        return padding(.bottom,15)
    }
    
    var vertical8: some View{
        return padding(.vertical,8)
    }
    var horizontal8: some View{
        return padding(.horizontal,8)
    }
    var vertical15: some View{
        return padding(.vertical,15)
    }
    var horizontal15: some View{
        return padding(.horizontal,20)
    }
    
    var horizontal20: some View{
        return padding(.horizontal,15)
    }
    var all15: some View{
        return padding(15)
    }
    var all20: some View{
        return padding(20)
    }
    var topWithSafe: some View {
        return padding (.top, .topInsets + 2)
    }
    var bottomWithSafe: some View {
        return padding (.bottom, .bottomInsets + 8)
    }
    
}
struct Roundedcorner: Shape {
    var radius:CGFloat = .infinity
    var corner : UIRectCorner = .allCorners
    func path (in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: corner, cornerRadii: CGSize(width: radius, height: radius))
        
        return Path(path.cgPath)
    
    }

}
