import SwiftUI

struct PBCoefficientElements: View {
    @Binding var value: Double
    
    let title: String
    let color: Color
    let maxValue: Double
    
    var percentageOfMaxValue: Double {
        let currentValue = max(0.02, min(1.0, value / maxValue))
        return currentValue
    }
    
    var body: some View {
        HStack {
            PBColorScale(
                filledPercent: .constant(percentageOfMaxValue),
                color: color)
            Text(title)
                .frame(width: 65, alignment: .leading)
                .foregroundColor(.PBGray)
                .font(.system(size: 12))
            Text("\(value, specifier: "%.2f")")
                .frame(width: 55)
                .font(.system(size: 12))
        }
    }
}

struct CoefficientElement_Previews: PreviewProvider {
    
    static var previews: some View {
        PBCoefficientElements(value: .constant(0.005), title: "Выигрыш", color: .PBRed, maxValue: 3.0)
    }
}
