//
//  160. 相交链表.swift
//  LeetCode
//
//  Created by xiaolit on 2020/10/6.
//
/**
 编写一个程序，找到两个单链表相交的起始节点。

 如下面的两个链表：
 
 在节点 c1 开始相交。

 输入：intersectVal = 8, listA = [4,1,8,4,5], listB = [5,0,1,8,4,5], skipA = 2, skipB = 3
 输出：Reference of the node with value = 8
 输入解释：相交节点的值为 8 （注意，如果两个链表相交则不能为 0）。从各自的表头开始算起，链表 A 为 [4,1,8,4,5]，链表 B 为 [5,0,1,8,4,5]。在 A 中，相交节点前有 2 个节点；在 B 中，相交节点前有 3 个节点。

 来源：力扣（LeetCode）
 链接：https://leetcode-cn.com/problems/intersection-of-two-linked-lists
 著作权归领扣网络所有。商业转载请联系官方授权，非商业转载请注明出处。
 
 
 1. 双指针
 这里需要的是数学证明了，因为首尾相接，所以他们每一次轮回的路程相等，既 A+B=B+A。

 不管相不相交， 当 currentA拼接B的时候，currentB拼接A的时候，他们能同时走到对方的尾节点，如果不相交，此时都为空，跳出循环
 如果相交，那么我们逆推，既然能在尾节点相遇，那么尾节点的前继节点也是相遇，直到我们逆推到第一个相交点。

 作者：cobbly
 链接：https://leetcode-cn.com/problems/intersection-of-two-linked-lists/solution/160-xiang-jiao-lian-biao-by-cobbly/
 来源：力扣（LeetCode）
 著作权归作者所有。商业转载请联系作者获得授权，非商业转载请注明出处。
 */
import Foundation

func getIntersectionNode(_ headA: ListNode?, _ headB: ListNode?) -> ListNode? {
    var curA = headA
    var curB = headB
    
    while curA !== curB {
        curA = curA != nil ? curA?.next : headB
        curB = curB != nil ? curB?.next : headA
    }
    return curA
}
