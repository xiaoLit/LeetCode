//
//  445. 两数相加 II.swift
//  LeetCode
//
//  Created by xiaolit on 2020/10/8.
//
/**
 给你两个 非空 链表来代表两个非负整数。数字最高位位于链表开始位置。它们的每个节点只存储一位数字。将这两数相加会返回一个新的链表。

 你可以假设除了数字 0 之外，这两个数字都不会以零开头。

  

 进阶：

 如果输入链表不能修改该如何处理？换句话说，你不能对列表中的节点进行翻转。

  

 示例：

 输入：(7 -> 2 -> 4 -> 3) + (5 -> 6 -> 4)
 输出：7 -> 8 -> 0 -> 7

 来源：力扣（LeetCode）
 链接：https://leetcode-cn.com/problems/add-two-numbers-ii
 著作权归领扣网络所有。商业转载请联系官方授权，非商业转载请注明出处。
 */
import Foundation

func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
    var l1 = l1
    var l2 = l2

    var stack1: [Int] = []
    var stack2: [Int] = []

    while l1 != nil {
        stack1.append(l1!.val)
        l1 = l1?.next
    }
    
    while l2 != nil {
        stack2.append(l2!.val)
        l2 = l2?.next
    }
    
    var carry = 0
    var dummy: ListNode? = nil
    while carry != 0 || !stack1.isEmpty || !stack2.isEmpty{
        let var1: Int = stack1.isEmpty ? 0 : stack1.popLast()!
        let var2: Int = stack2.isEmpty ? 0 : stack2.popLast()!
        
        var cur = var1 + var2 + carry
        carry = cur / 10
        cur %= 10
        
        let newNode = ListNode(cur)
        newNode.next = dummy
        dummy = newNode
    }
    return dummy
}
