//
//  MemoViewModel.swift
//  Realm_practice_app
//
//  Created by 近藤元気 on 2023/09/12.
//

import Foundation
import Combine
class MemoViewModel: ObservableObject {
    @Published var memos: [Memo] = Array(Memo.findAll())
    //メモをDBに追加する
    func add(text: String){
        guard !text.isEmpty else { return }
        let memo = Memo()
        memo.text = text
        self.memos.append(memo)
        Memo.add(memo)
    }
    //指定されたindexのメモを削除する
    func delete_index(index: Int){
        
    }
}
