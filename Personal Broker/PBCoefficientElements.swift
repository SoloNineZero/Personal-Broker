import SwiftUI

struct PBCoefficientElements: View {
    @Binding var value: Double
    
    let title: String
    let color: Color
    let maxValue: Double
    
    var percentageOfMaxValue: Double {
        let currentValue = min(value, maxValue)
        return (currentValue / maxValue)
    }
    
    var body: some View {
        HStack {
            PBColorScale(filledPercent: .constant(percentageOfMaxValue), color: color)
            Text(title)
                .frame(width: 70, alignment: .leading)
                .foregroundColor(.gray)
                .font(.system(size: 12))
            Text("\(value, specifier: "%.2f")")
                .frame(width: 55)
        }
    }
}

struct CoefficientElement_Previews: PreviewProvider {
    
    static var previews: some View {
        PBCoefficientElements(value: .constant(1.0), title: "Выигрыш", color: .red, maxValue: 3.0)
    }
}
