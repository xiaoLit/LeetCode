//
//  ViewController.swift
//  LeetCode
//
//  Created by xiaolit on 2020/9/20.
//

import UIKit
import Foundation

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

//        test()
        
    
        
        
        
    }

    func test(){
        var node: ListNode? = ListNode(1)
        var node1: ListNode?  = ListNode(1)
        var node2: ListNode?  = ListNode(6)
        var node3: ListNode?  = ListNode(-4)
        var node4: ListNode?  = ListNode(6)

        node?.next = node1
        node1?.next = node2
        node2?.next = node3
        node3?.next = node4
        
        
        let newhead = removeElements(node, 6)
        
        print(newhead)
    }

}

