//
//  430. 扁平化多级双向链表.swift
//  LeetCode
//
//  Created by xiaolit on 2020/10/8.
//
/**
 多级双向链表中，除了指向下一个节点和前一个节点指针之外，它还有一个子链表指针，可能指向单独的双向链表。这些子列表也可能会有一个或多个自己的子项，依此类推，生成多级数据结构，如下面的示例所示。

 给你位于列表第一级的头节点，请你扁平化列表，使所有结点出现在单级双链表中。
 
 示例 1：

 输入：head = [1,2,3,4,5,6,null,null,null,7,8,9,10,null,null,11,12]
 输出：[1,2,3,7,8,11,12,9,10,4,5,6]

 
 示例 2：

 输入：head = [1,2,null,3]
 输出：[1,3,2]
 
 
 示例 3：

 输入：head = []
 输出：[]

 来源：力扣（LeetCode）
 链接：https://leetcode-cn.com/problems/flatten-a-multilevel-doubly-linked-list
 著作权归领扣网络所有。商业转载请联系官方授权，非商业转载请注明出处。
 */
import Foundation

public class Node {
    public var val: Int
    public var prev: Node?
    public var next: Node?
    public var child: Node?
    public init(_ val: Int) {
        self.val = val
        self.prev = nil
        self.next = nil
        self.child  = nil
    }
}

//深度搜索二叉树
//func flatten(_ head: Node?) -> Node? {
//    
//}
