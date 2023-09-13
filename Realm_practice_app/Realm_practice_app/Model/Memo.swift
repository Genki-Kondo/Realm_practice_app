//
//  Memo.swift
//  Realm_practice_app
//
//  Created by 近藤元気 on 2023/09/12.
//

import Foundation
import RealmSwift
class Memo: Object,Identifiable {
    @Persisted(primaryKey: true) var id: ObjectId
    @Persisted  var text:String = ""
    @Persisted  var postedDate:Int = 0
    
    override static func primaryKey() -> String? {
        return "id"
    }
}
extension Memo {
    private static var config = Realm.Configuration(schemaVersion: 1)
    private static var realm = try! Realm(configuration: config)
    
    static func findAll() -> Results<Memo> {
        realm.objects(Memo.self)
    }
    
    static func add(_ memo: Memo) {
        try! realm.write {
            realm.add(memo)
        }
    }
    
    static func delete(_ memo: Memo) {
        try! realm.write {
            realm.delete(memo)
        }
    }
    
    static func delete(_ memos: [Memo]) {
        try! realm.write {
            realm.delete(memos)
        }
    }
}
