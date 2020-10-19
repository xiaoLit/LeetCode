//
//  237. 删除链表中的节点.swift
//  LeetCode
//
//  Created by xiaolit on 2020/9/20.
//

/**
 *  请编写一个函数，使其可以删除某个链表中给定的（非末尾）节点。传入函数的唯一参数为 要被删除的节点 。
 现有一个链表 -- head = [4,5,1,9]，它可以表示为:

 示例 1：

 输入：head = [4,5,1,9], node = 5
 输出：[4,1,9]
 解释：给定你链表中值为 5 的第二个节点，那么在调用了你的函数之后，该链表应变为 4 -> 1 -> 9.
 示例 2：

 输入：head = [4,5,1,9], node = 1
 输出：[4,5,9]
 解释：给定你链表中值为 1 的第三个节点，那么在调用了你的函数之后，该链表应变为 4 -> 5 -> 9.
  

 提示：

 链表至少包含两个节点。
 链表中所有节点的值都是唯一的。
 给定的节点为非末尾节点并且一定是链表中的一个有效节点。
 不要从你的函数中返回任何结果。

 来源：力扣（LeetCode）
 链接：https://leetcode-cn.com/problems/delete-node-in-a-linked-list
 */
import SpriteKit

private func deleteNode(_ node: ListNode?) {
    node!.val = node!.next!.val
    node!.next = node!.next!.next
}



/**
 剑指 Offer 18. 删除链表的节点

 给定单向链表的头指针和一个要删除的节点的值，定义一个函数删除该节点。

 返回删除后的链表的头节点。
 示例 1:

 输入: head = [4,5,1,9], val = 5
 输出: [4,1,9]
 解释: 给定你链表中值为 5 的第二个节点，那么在调用了你的函数之后，该链表应变为 4 -> 1 -> 9.

 来源：力扣（LeetCode）
 链接：https://leetcode-cn.com/problems/shan-chu-lian-biao-de-jie-dian-lcof
 著作权归领扣网络所有。商业转载请联系官方授权，非商业转载请注明出处。
 */
func deleteNode(_ head: ListNode?, _ val: Int) -> ListNode? {
    var head = head
    
    while head != nil && head?.val == val {
        head = head?.next
        return head
    }
    
    var prev = head
    while prev?.next != nil {
        if prev?.next?.val == val {
            prev?.next = prev?.next?.next
            return head
        } else {
            prev = prev?.next
        }
    }
    return head
}
