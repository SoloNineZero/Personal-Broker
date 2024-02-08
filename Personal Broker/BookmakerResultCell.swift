import SwiftUI

struct BookmakerResultCell: View {
    
    @State private var winValue = 16
    @State private var lossValue = 11
    @State private var returnValue = 5
    
    var totalValue: Double {
        return Double(winValue + lossValue + returnValue)
    }
    
    var winPrecent: Double {
        return Double(winValue) / totalValue
    }
    
    var lossPrecent: Double {
        return Double(lossValue) / totalValue
    }
    
    var returnPrecent: Double {
        return Double(returnValue) / totalValue
    }
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("Выигрыш/проигрыш по букмекерам")
                .padding(.top, 20)
            HStack{
                Image("williamhill", bundle: .none)
                    .resizable()
                    .frame(width: 100, height: 55)
                Text("\(Int(totalValue)) ставки")
                    .padding(.leading, 20)
            }
            PBWinLossColorScale(
                winPercent: .constant(winPrecent),
                lossPercent: .constant(lossPrecent),
                returnPrecent: .constant(returnPrecent),
                winText: "\(winValue) (\(Int(round(winPrecent * 100)))%)",
                lossText: "\(lossValue) (\(Int(round(lossPrecent * 100)))%)",
                returnText: "\(returnValue) (\(Int(round(returnPrecent * 100)))%)"
            )
            
        }
    }
}

struct BookmakerResultCell_Previews: PreviewProvider {
    static var previews: some View {
        BookmakerResultCell()
    }
}
