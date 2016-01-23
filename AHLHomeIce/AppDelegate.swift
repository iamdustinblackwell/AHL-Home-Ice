//
//  AppDelegate.swift
//  DustinBlackwlel
//
//  Created by Dustin on 2016-01-22.
//

import TVMLKit
import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate, TVApplicationControllerDelegate {
  var window: UIWindow?
  var appController: TVApplicationController?
  static let TVBaseURL = "http://s508729678.onlinehome.us/gullsliveclient/"
  static let TVBootURL = "\(AppDelegate.TVBaseURL)js/application.js"
  
  func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
    window = UIWindow(frame: UIScreen.mainScreen().bounds)
    let appControllerContext = TVApplicationControllerContext()
    guard let javaScriptURL = NSURL(string: AppDelegate.TVBootURL) else { fatalError("unable to create NSURL") }
    appControllerContext.javaScriptApplicationURL = javaScriptURL
    appControllerContext.launchOptions["BASEURL"] = AppDelegate.TVBaseURL
    appController = TVApplicationController(context: appControllerContext, window: window, delegate: self)
    return true
  }
  
}

