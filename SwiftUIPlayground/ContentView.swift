import SwiftUI

struct ContentView: View {
    @State var isSheetPresented = false
    
    var body: some View {
        VStack {
            Spacer()
            
            Text(".systemGroupedBackground")
            
            VStack {
                Text(".secondarySystemGroupedBackground")
                    .padding(.vertical)
                
                VStack {
                    Text(".tertiarySystemGroupedBackground")
                }
                .padding()
                .background(Color(.tertiarySystemGroupedBackground))
                .cornerRadius(6)
            }
            .padding()
            .frame(maxWidth: .infinity)
            .background(Color(.secondarySystemGroupedBackground))
            .cornerRadius(16)
            .padding()
                        
            Spacer()
            Spacer()
            
            Button("How about in a sheet?") {
                isSheetPresented = true
            }
            .buttonStyle(.borderedProminent)

        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color(.systemGroupedBackground))
        .font(.subheadline).fontWeight(.semibold)
        .sheet(isPresented: $isSheetPresented) {
            Self()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View { ContentView() }
}
