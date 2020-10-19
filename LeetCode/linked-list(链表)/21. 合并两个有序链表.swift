//
//  面试题 02.02. 返回倒数第 k 个节点.swift
//  LeetCode
//
//  Created by xiaolit on 2020/10/5.
//

/**
 将两个升序链表合并为一个新的 升序 链表并返回。新链表是通过拼接给定的两个链表的所有节点组成的。

  

 示例：

 输入：1->2->4, 1->3->4
 输出：1->1->2->3->4->4

 来源：力扣（LeetCode）
 链接：https://leetcode-cn.com/problems/merge-two-sorted-lists
 著作权归领扣网络所有。商业转载请联系官方授权，非商业转载请注明出处。
 */

import Foundation

func mergeTwoLists(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
    let dummy = ListNode(-1)
    var pre: ListNode? = dummy
    
    var firstNode = l1
    var secondNode = l2

    while firstNode != nil && secondNode != nil {
        if firstNode!.val <= secondNode!.val {
            pre?.next = firstNode
            firstNode = firstNode!.next
        } else {
            pre?.next = secondNode
            secondNode = secondNode!.next
        }
        pre = pre?.next
    }
    pre?.next = firstNode ?? secondNode
    return dummy.next
}
