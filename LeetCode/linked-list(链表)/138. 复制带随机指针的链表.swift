//
//  剑指 Offer 35. 复杂链表的复制.swift
//  LeetCode
//
//  Created by xiaolit on 2020/10/8.
//
/**
 给定一个链表，每个节点包含一个额外增加的随机指针，该指针可以指向链表中的任何节点或空节点。

 要求返回这个链表的 深拷贝。

 我们用一个由 n 个节点组成的链表来表示输入/输出中的链表。每个节点用一个 [val, random_index] 表示：

 val：一个表示 Node.val 的整数。
 random_index：随机指针指向的节点索引（范围从 0 到 n-1）；如果不指向任何节点，则为  null 。

 来源：力扣（LeetCode）
 链接：https://leetcode-cn.com/problems/copy-list-with-random-pointer
 著作权归领扣网络所有。商业转载请联系官方授权，非商业转载请注明出处。
 
 */
import Foundation

private class RandomNode: Hashable {
    //为了支持Hashable
    static func == (lhs: RandomNode, rhs: RandomNode) -> Bool {
        if lhs.val == rhs.val && lhs.next === rhs.next{
            return true
        }
        return false
    }
    //为了支持Hashable
    func hash(into hasher: inout Hasher) {
          hasher.combine(val)
    }
    
    public var val: Int
    public var next: RandomNode?
    public var random: RandomNode?
    public init(_ val: Int) {
        self.val = val
        self.next = nil
        self.random = nil
    }
}


private func copyRandomList(_ head: RandomNode?) -> RandomNode? {
    if head == nil {
        return nil
    }
    
    var map = [RandomNode:RandomNode]()
    var cur:RandomNode? = head

    while cur != nil {
        let copy = RandomNode(cur!.val)
        map[cur!] = copy
        cur = cur?.next
    }
    cur = head
    while cur != nil {
        let next: RandomNode? = map[cur?.next ?? RandomNode(-1)]
        map[cur!]?.next = next
        
        let random: RandomNode? = map[cur?.random ?? RandomNode(-1)]
        map[cur!]?.random = random
        cur = cur?.next
    }
    return map[head!]
}
