//
//  AppDelegate.swift
//  NavnathM
//
//  Created by apple on 28/12/19.
//  Copyright © 2019 Proximate. All rights reserved.
// Test

import UIKit
import CleverTapSDK

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {



    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        CleverTap.autoIntegrate()
        return true
    }

    // MARK: UISceneSession Lifecycle

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }
// MARK: PUSH NOTIFICATION
    private func application(application: UIApplication,
                     didRegisterForRemoteNotificationsWithDeviceToken deviceToken: Data) {
        CleverTap.sharedInstance()?.setPushToken(deviceToken)
    }
    private func application(application: UIApplication, didReceiveRemoteNotification
        userInfo: [NSObject : AnyObject]) {
        CleverTap.sharedInstance()?.handleNotification(withData: userInfo)
    }

    func application(_ application: UIApplication, didReceive
        notification: UILocalNotification) {
        CleverTap.sharedInstance()?.handleNotification(withData: notification)
    }

    // As of iOS 8 and above
    func application(application: UIApplication, handleActionWithIdentifier identifier: String?,
                     forLocalNotification notification: UILocalNotification, completionHandler: () -> Void) {
        CleverTap.sharedInstance()?.handleNotification(withData: notification)
        completionHandler()
    }

    func application(application: UIApplication, handleActionWithIdentifier identifier: String?,
                     forRemoteNotification userInfo: [NSObject : AnyObject], completionHandler: () -> Void) {
        CleverTap.sharedInstance()?.handleNotification(withData: userInfo)
        completionHandler()
    }

    func application(_ application: UIApplication, didReceiveRemoteNotification userInfo: [AnyHashable : Any],
    fetchCompletionHandler completionHandler: @escaping (UIBackgroundFetchResult) -> Void) {
        CleverTap.sharedInstance()?.handleNotification(withData: userInfo)
        completionHandler(.noData)
    }
}

