//
//  Realm_practice_appApp.swift
//  Realm_practice_app
//
//  Created by 近藤元気 on 2023/09/12.
//
//https://qiita.com/tanakadaichi_1989/items/c5c20e9fdb37649579e1を参考にした練習用アプリ
import SwiftUI

@main
struct Realm_practice_appApp: App {
    @StateObject private var memoVM = MemoViewModel()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(memoVM) 
        }
    }
}
