//
//  FrameworkGridView.swift
//  Apple-Frameworks
//
//  Created by Steven Schwab on 12/15/22.
//

import SwiftUI

struct FrameworkGridView: View {
    
    @ObservedObject var viewModel: FrameworkGridViewModel
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(MockData.frameworks) { framework in
                    NavigationLink(value: framework) {
                        FrameworkTitleView(framework: framework)
                    }
                }
            }
            .navigationTitle("Apple Frameworks")
            .navigationDestination(for: Framework.self) { framework in
                FrameworkDetailView(viewModel: FrameworkDetailViewModel(framework: framework, isShowingDetailView: viewModel.isShowingDetailView))
            }
        }
        .accentColor(Color(.label))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkGridView(viewModel: FrameworkGridViewModel(isShowingDetailView: .constant(false)))
    }
}
