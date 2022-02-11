//
//  Item.swift
//  ToDoList
//
//  Created by Jesús Ángel Pérez-Roca Fernández on 10/2/22.
//

import Foundation

class Item: NSObject, NSCoding {
    var name: String

    func encode(with aCoder: NSCoder) {
      aCoder.encode(name, forKey: "name")
    }
    
    required convenience init?(coder aDecoder: NSCoder) {
      let name = aDecoder.decodeObject(forKey: "name") as! String
      self.init(name: name)
    }
    
    init?(name: String) {
       self.name = name
       super.init()
    }
    
    static let Dir = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first!

    static let ArchiveURL = Dir.appendingPathComponent("items")
}
