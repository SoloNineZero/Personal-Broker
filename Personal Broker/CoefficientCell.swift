import SwiftUI

struct CoefficientCell: View {
    
    // переделать на кортежи
    
    @State private var winValue = 0.0194
    @State private var lossValue = 2.17
    @State private var returnValue = 1.26
    
    let maxValue = 3.0
    
    var body: some View {
        VStack (alignment: .leading) {
            Text("Средние коэффициенты ")
                .padding(.top, 20)
            PBCoefficientElements(value: $winValue, title: "Выигрыш", color: .green, maxValue: maxValue)
            PBCoefficientElements(value:  $lossValue, title: "Проигрыш", color: .red, maxValue: maxValue)
            PBCoefficientElements(value: $returnValue, title: "Возврат", color: .gray, maxValue: maxValue)
        }
    }
}

struct CoefficientCell_Previews: PreviewProvider {
    static var previews: some View {
        CoefficientCell()
    }
}
