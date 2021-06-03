import SwiftUI

@main
struct FructusApp: App {
    @AppStorage(Constants.AppStorageKeys.isOnBoarding) var isOnBoarding: Bool = true
    
    var body: some Scene {
        WindowGroup {
            if isOnBoarding {
                OnBoardingView()
            } else {
                ContentView()
            }
        }
    }
}
