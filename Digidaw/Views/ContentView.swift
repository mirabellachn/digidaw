//
//  ContentView.swift
//  Digidaw
//
//  Created by Mirabella on 20/01/26.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        DigimonListView()
    }
}

//struct ContentView: View {
//
//    @StateObject private var viewModel = DigimonListViewModel()
//
//    var body: some View {
//        NavigationStack {
//            List {
//                ForEach(viewModel.digimons) { digimon in
//                    Text(digimon.name)
//                        .onAppear {
//                            Task {
//                                await viewModel.fetchNextPageIfNeeded(currentItem: digimon)
//                            }
//                        }
//                }
//
//                if viewModel.isLoading {
//                    ProgressView()
//                        .frame(maxWidth: .infinity)
//                }
//            }
//            .navigationTitle("DigiDaw")
//            .task {
//                await viewModel.fetchInitial()
//            }
//            .alert("Error", isPresented: .constant(viewModel.errorMessage != nil)) {
//                Button("OK") { viewModel.errorMessage = nil }
//            } message: {
//                Text(viewModel.errorMessage ?? "")
//            }
//        }
//    }
//}



#Preview {
    ContentView()
}
