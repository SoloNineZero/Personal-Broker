import SwiftUI

struct CoefficientCell: View {
    
    @State private var winValue = 1.94
    @State private var lossValue = 2.17
    @State private var returnValue = 1.26
    
    let maxValue = 3.0
    
    var body: some View {
        VStack (alignment: .leading, spacing: 5) {
            Text("Средние коэффициенты ")
                .padding(.top, 5)
                .padding(.bottom, 15)
            PBCoefficientElements(
                value: $winValue,
                title: "Выигрыш",
                color: .PBGreen,
                maxValue: maxValue
            )
            PBCoefficientElements(
                value:  $lossValue,
                title: "Проигрыш",
                color: .PBRed,
                maxValue: maxValue
            )
            PBCoefficientElements(
                value: $returnValue,
                title: "Возврат",
                color: .PBGray,
                maxValue: maxValue
            )
        }
        .padding(10)
//        .frame(height: 150)
        .overlay(
            Rectangle()
                .stroke(.black, lineWidth: 0.5)
        )
    }
}

struct CoefficientCell_Previews: PreviewProvider {
    static var previews: some View {
        CoefficientCell()
    }
}
