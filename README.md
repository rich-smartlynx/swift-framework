# swift-framework

Framework to support "smartlinks"  (see https://smartlinks.mobi/lynx/home.html for detils)

## Overview

Usage: initialize the libary with the apiKey you were given  lynxapi = Lynx(apiKey: <your key>)
       if you don't have it already at the following decoration to your main app file

@UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate

    Then impliment the didFinishLaunchingWithOptions delegate method:

class AppDelegate: UIResponder, UIApplicationDelegate {
    let apiKey = "<your apiKey>"
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        let linkResults = Lynx(apiKey: apiKey).checkForLink()        
        return true
    }
}
 the call to checkForLink will return the structure:
public struct LinkResults {
    public let link: String
    public let confidence: Float
    public let openCount: Int
}

where link is the full link (including query parameters) the user clicked on to download the app the first time (it will continue to
return the same link if the original confidence was > 90%)
confidence is how sure the fuzzy logic is of a good match 
0 - no link was found (not really an error the user just downloaded the app without using a smartlink)
50 - a link was found, but there is only a 50% chance that it is the correct one
>90 there is a very high probability the link is the correct one
99.99 - it is *virtually* impossible to have returned the wrong link



