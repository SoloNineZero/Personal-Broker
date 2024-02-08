import SwiftUI

struct PBColorScale: View {
    
    @Binding var filledPercent: Double
    var color: Color
    
    var body: some View {
        GeometryReader { geometry in
            ZStack(alignment: .leading) {
                Rectangle()
                    .fill(.pbLightGray.opacity(0.2))
                
                Rectangle()
                    .fill(color)
                    .frame(width: geometry.size.width * CGFloat(filledPercent))
            }
        }
        .frame(height: 10)
    }
}

struct PBColorScale_Previews: PreviewProvider {
    static var previews: some View {
        PBColorScale(filledPercent: .constant(0.2), color: .PBRed)
    }
}
