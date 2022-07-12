//
//  Diary+CoreDataProperties.swift
//  MyDiaryApp
//
//  Created by Yu Okushima on 2022/07/07.
//
//

import Foundation
import CoreData

// エンティティの属性情報を定義するファイル
extension Diary {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Diary> {
        return NSFetchRequest<Diary>(entityName: "Diary")
    }

    @NSManaged public var createdDate: Date?
    @NSManaged public var content: String?
    @NSManaged public var updatedDate: Date?

}

extension Diary : Identifiable {

}
