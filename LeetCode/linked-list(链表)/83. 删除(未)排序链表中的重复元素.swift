//
//  83. 删除排序链表中的重复元素.swift
//  LeetCode
//
//  Created by xiaolit on 2020/10/4.
//
/**
 83. 删除排序链表中的重复元素
 给定一个排序链表，删除所有重复的元素，使得每个元素只出现一次。

 示例 1:

 输入: 1->1->2
 输出: 1->2
 示例 2:

 输入: 1->1->2->3->3
 输出: 1->2->3

 来源：力扣（LeetCode）
 链接：https://leetcode-cn.com/problems/remove-duplicates-from-sorted-list
 著作权归领扣网络所有。商业转载请联系官方授权，非商业转载请注明出处。
 */

import Foundation

func deleteDuplicates(_ head: ListNode?) -> ListNode? {
    let dummy = ListNode(-1)
    dummy.next = head
    
    var preNode = head
    var current = head?.next
    
    while current != nil {
        if preNode?.val == current?.val {
            preNode?.next = current?.next
        } else {
            preNode = preNode?.next
        }
        current = current?.next
    }
    return dummy.next
}


/**
 面试题 02.01. 移除重复节点
 
 编写代码，移除未排序链表中的重复节点。保留最开始出现的节点。

 利用结构体作为 哈希表
 */

func removeDuplicateNodes(_ head: ListNode?) -> ListNode? {
    if head == nil {
        return nil
    }
    var map:[Int: ListNode] = [:]
    var p = head
    map[p!.val] = p!
    
    while p?.next != nil {
        if map[p!.next!.val] != nil {
            p!.next = p!.next!.next
        } else {
            map[p!.next!.val] = p!.next!
            p = p?.next
        }
    }
    return head
}

/**
 作者：clog
 链接：https://leetcode-cn.com/problems/remove-duplicate-node-lcci/solution/swift-yi-bian-hash-by-clog/
 来源：力扣（LeetCode）
 著作权归作者所有。商业转载请联系作者获得授权，非商业转载请注明出处。

 */
