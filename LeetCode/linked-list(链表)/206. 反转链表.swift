//
//  File.swift
//  LeetCode
//
//  Created by xiaolit on 2020/9/20.
//

/**
 反转一个单链表。

 示例:

 输入: 1->2->3->4->5->NULL
 输出: 5->4->3->2->1->NULL
 进阶:
 你可以迭代或递归地反转链表。你能否用两种方法解决这道题？

 来源：力扣（LeetCode）
 链接：https://leetcode-cn.com/problems/reverse-linked-list
 著作权归领扣网络所有。商业转载请联系官方授权，非商业转载请注明出处。
 */


//递归
func reverseList(_ head: ListNode?) -> ListNode? {
    
    //递归结束条件
    if head?.next == nil {
        return head
    }
        
    //处理以 head.next 为头的链条
    let finalHead = reverseList(head?.next)
    
    //处理当前节点 head
    head?.next?.next = head
    head?.next = nil
    
    return finalHead
}

//迭代
func reverseList2(_ head: ListNode?) -> ListNode? {
    
    var oldNode = head
    var newNodel: ListNode? = nil
    
    while oldNode != nil {
        //先保存next
        let oldNextNode = oldNode?.next
        
        //修改next
        oldNode?.next = newNodel
        
        //修改newNode
        newNodel = oldNode
        
        //修改oldNode 指向下一个节点
        oldNode = oldNextNode
    }
    return newNodel
}


//返回链表 反向的值数组
func reversePrint(_ head: ListNode?) -> [Int] {
    if head == nil {
        return []
    }
    
    var result = reversePrint(head!.next)
    result.append(head!.val)
    return result
}
