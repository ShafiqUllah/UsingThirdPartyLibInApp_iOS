//
//  ContentView.swift
//  UsingThirdPartyLibInApp
//
//  Created by Shafiq  Ullah on 11/18/23.
//

import SwiftUI
import ActivityIndicatorView

/*
 Add package dependency =
 1. use the git url for search
 2. Add dependency
 
 Using CocoaPod
 1. termina go to project file
 2. pod init
 3. open the podnfile
 4. enter pod name like pod 'ActivityIndicatorView'
 5. pod install
 6. open .xcworkspace insted of .xcproject
 
 */

struct ContentView: View {
    @State var showLoadingIndicator = true
    
    var body: some View {
        ActivityIndicatorView(isVisible: $showLoadingIndicator, type: .default())
             .frame(width: 80.0, height: 80.0)
             .foregroundColor(.black)
        
        ActivityIndicatorView(isVisible: $showLoadingIndicator, type: .growingArc(.red, lineWidth: 4))
            .frame(width: 50.0, height: 50.0)
            .foregroundColor(.red)

        
        ActivityIndicatorView(isVisible: $showLoadingIndicator, type: .equalizer())
            .frame(width: 50.0, height: 50.0)
            .foregroundColor(.pink)

        
        ActivityIndicatorView(isVisible: $showLoadingIndicator, type: .flickeringDots())
            .frame(width: 50.0, height: 50.0)
            .foregroundColor(.orange)

        
        ActivityIndicatorView(isVisible: $showLoadingIndicator, type: .rotatingDots())
            .frame(width: 50.0, height: 50.0)
            .foregroundColor(.gray)

        
        ActivityIndicatorView(isVisible: $showLoadingIndicator, type: .opacityDots())
            .frame(width: 50.0, height: 50.0)
            .foregroundColor(.green)

        
        ActivityIndicatorView(isVisible: $showLoadingIndicator, type: .growingCircle)
            .frame(width: 50.0, height: 50.0)
            .foregroundColor(.purple)

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
