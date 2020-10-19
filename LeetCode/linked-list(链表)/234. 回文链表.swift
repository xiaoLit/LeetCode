//
//  234. 回文链表.swift
//  LeetCode
//
//  Created by xiaolit on 2020/10/6.
//
/**
 请判断一个链表是否为回文链表。

 示例 1:

 输入: 1->2
 输出: false
 示例 2:

 输入: 1->2->2->1
 输出: true
 进阶：
 你能否用 O(n) 时间复杂度和 O(1) 空间复杂度解决此题？

 来源：力扣（LeetCode）
 链接：https://leetcode-cn.com/problems/palindrome-linked-list
 著作权归领扣网络所有。商业转载请联系官方授权，非商业转载请注明出处。
 */
import Foundation

func isPalindrome(_ head: ListNode?) -> Bool {
    
    var newCurrent: ListNode? = ListNode(-1)

    var slow = head
    var fast = head
    
    while fast?.next != nil {
        fast = fast?.next?.next

        let oldNext = slow?.next
        slow?.next = newCurrent
        newCurrent = slow
        slow = oldNext
    }
    
    var leftHead = newCurrent
    //第二段的头
    var rightHead: ListNode? = slow
    if fast != nil{//head总个是奇数时，调整第二部分头节点
        rightHead = slow?.next
    }

    while leftHead != nil && rightHead != nil {
        if leftHead?.val != rightHead?.val {
            return false
        }
        leftHead = leftHead?.next
        rightHead = rightHead?.next
    }
    return true
}
