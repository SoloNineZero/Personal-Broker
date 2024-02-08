import SwiftUI

struct ContentView: View {
    var body: some View {
        List {
            CoefficientCell()
            BookmakerResultCell()
        }
        .listStyle(.plain)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
