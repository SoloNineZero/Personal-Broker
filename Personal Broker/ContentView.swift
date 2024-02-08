import SwiftUI

struct ContentView: View {
    var body: some View {
        List {
            CoefficientCell()
            BookmakerResultCell()
        }
        .listStyle(.plain)
        .listRowSpacing(20)
        .listRowSeparator(.hidden)
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
