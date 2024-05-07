//
//  ContentView.swift
//  CadastreSUI
//
//  Created by gleba on 19.04.2024.
//

import SwiftUI

struct ContentView: View {
    @StateObject var viewModel: ViewModel
    
    var body: some View {
        NavigationView {
            VStack {
                Text("Термины")
                    .font(.title)
                    .padding(.top, 20)
                    .padding(.leading)
                DefinitionsView(definitions: self.viewModel.definitionsData ?? [])
                    .navigationBarTitle("")
                    .navigationBarHidden(true)
            }.padding()
           
        }.task{
            await viewModel.getData()
//            print(viewModel.definitionsData?[0].title)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        let viewModel = ViewModel()
        return ContentView(viewModel: viewModel)
    }
}


#Preview {
    DefinitionsView(definitions: [Datum](repeating: Datum(id: "", type: .definition, title: "Абрис", annotation: "В [кадастровой деятельности 343] &mdash; сделанный от руки внемасштабный, но с соблюдением пропорций, чертеж с обозначением в нем данных, необходимых для составления поэтажного плана здания".stringByDecodingHTMLEntities, updated: "2023-09-04 11:42:17", url: "", articleID: "", isSubscriptionRequired: "", image: nil, thumbnail: nil), count: 30))
}
