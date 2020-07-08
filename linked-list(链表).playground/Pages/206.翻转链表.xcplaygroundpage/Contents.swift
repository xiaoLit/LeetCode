//定义一个单链表
public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init(_ val: Int) {
        self.val = val
        self.next = nil
    }
}


/*:
 ### 206.反转一个单链表。

示例:

输入: 1->2->3->4->5->NULL
输出: 5->4->3->2->1->NULL
进阶:
你可以迭代或递归地反转链表。你能否用两种方法解决这道题？

 [](https://leetcode-cn.com/problems/reverse-linked-list/)
*/

//递归
func reverseList(_ head: ListNode?) -> ListNode? {
    
    //递归结束条件
    if head?.next == nil {
        return head
    }
    
    //递归
    
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


let node1 = ListNode.init(1)
let node2 = ListNode.init(2)
let node3 = ListNode.init(3)
let node4 = ListNode.init(4)
let node5 = ListNode.init(5)
node1.next = node2
node2.next = node3
node3.next = node4
node4.next = node5

let node = reverseList(node1)
