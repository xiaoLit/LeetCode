//
//  61. 旋转链表.swift
//  LeetCode
//
//  Created by xiaolit on 2020/10/8.
//
/**
 给定一个链表，旋转链表，将链表每个节点向右移动 k 个位置，其中 k 是非负数。

 示例 1:

 输入: 1->2->3->4->5->NULL, k = 2
 输出: 4->5->1->2->3->NULL
 解释:
 向右旋转 1 步: 5->1->2->3->4->NULL
 向右旋转 2 步: 4->5->1->2->3->NULL

 来源：力扣（LeetCode）
 链接：https://leetcode-cn.com/problems/rotate-list
 著作权归领扣网络所有。商业转载请联系官方授权，非商业转载请注明出处。
 
 
 第一步将链表变为环:
 1.1 将链表最后节点next指向head

 第二部找到新的头结点并将环打破：
 2.1. 根据旋转的数值找到最终循环中对应的node并用两个辅助node标记当前node以及他的前置node(此处不能使用单一节点，如下有反例)
 2.2. 从前置node处断开

 作者：tom-127
 链接：https://leetcode-cn.com/problems/rotate-list/solution/huan-lian-biao-jie-fa-by-tom-127/
 来源：力扣（LeetCode）
 著作权归作者所有。商业转载请联系作者获得授权，非商业转载请注明出处。
 */

import Foundation

func rotateRight(_ head: ListNode?, _ k: Int) -> ListNode? {
    //第一步将链表变为环
    //第二部找到新的头结点并将环打破
    
    //1.组装环行链表
    var last: ListNode? = head
    var length = 1
    while last?.next != nil {
        last = last?.next
        length += 1
    }
    last?.next = head
    
    //2.找到新的头结点
    var step = length - k % length
    while step != 0 {
        step -= 1
        last = last?.next
    }
    
    //3.从新的头节点前节点处断开环
    let newHead = last?.next
    last?.next = nil
    
    return newHead
}
