import SwiftUI

struct PBWinLossColorScale: View {
    
    @Binding var winPercent: Double
    @Binding var lossPercent: Double
    @Binding var returnPrecent: Double
    
    let winText: String
    let lossText: String
    let returnText: String
    
    let spacing: CGFloat = 5
    
    var body: some View {
        GeometryReader { geometry in
            ZStack(alignment: .leading) {
                Rectangle()
                    .fill(.clear)
                HStack(spacing: 5) {
                    VStack(alignment: .leading){
                        Rectangle()
                            .fill(.green)
                            .frame(width: (geometry.size.width - spacing) * CGFloat(winPercent))
                            .frame(height: 10)
                        Text(winText)
                            .font(.system(size: 15))
                        
                    }
                    VStack(alignment: .leading){
                        Rectangle()
                            .fill(.red)
                            .frame(width: (geometry.size.width - spacing) * CGFloat(lossPercent))
                            .frame(height: 10)
                        Text(lossText)
                            .font(.system(size: 15))
                    }
                    VStack(alignment: .trailing){
                        Rectangle()
                            .fill(.gray)
                            .frame(width: (geometry.size.width - spacing) * CGFloat(returnPrecent))
                            .frame(height: 10)
                        Text(returnText)
                            .font(.system(size: 15))
                    }
                }
            }
            .frame(height: 50)
        }
    }
}

struct PBWinLossColorScale_Previews: PreviewProvider {
    static var previews: some View {
        PBWinLossColorScale(
            winPercent: .constant(0.4),
            lossPercent: .constant(0.4),
            returnPrecent: .constant(0.2),
            winText: "1",
            lossText: "1",
            returnText: "1"
        )
    }
}
