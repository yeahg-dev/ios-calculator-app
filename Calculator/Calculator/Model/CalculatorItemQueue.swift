//
//  CalcultaorItemQueue.swift
//  Calculator
//
//  Created by 1 on 2021/11/09.
//

import Foundation

struct CalculatorItemQueue {
    private(set) var queue: [CalculateItem] = []
    
    var itemCount: Int {
        return queue.count
    }
    
    init(_ items: [CalculateItem] = []) {
        for item in items {
            self.enqueue(item)
        }
    }
    
    mutating func enqueue(_ item: CalculateItem) {
        queue.append(item)
    }
    
    @discardableResult
    mutating func dequeue() -> CalculateItem? {
        guard queue.count > 0 else {
            return nil
        }
        return queue.removeFirst()
    }
    
    mutating func removeAllItems() {
        queue.removeAll()
    }
}
