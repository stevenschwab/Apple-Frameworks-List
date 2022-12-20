//
//  FrameworkGridViewModel.swift
//  Apple-Frameworks
//
//  Created by Steven Schwab on 12/15/22.
//

import SwiftUI

final class FrameworkGridViewModel: ObservableObject {
    
    let columns: [GridItem] = [GridItem(.flexible()),
                               GridItem(.flexible()),
                               GridItem(.flexible())]
    
    var isShowingDetailView: Binding<Bool>
    
    init(isShowingDetailView: Binding<Bool>) {
        self.isShowingDetailView = isShowingDetailView
    }
}
