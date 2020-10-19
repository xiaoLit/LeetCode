//
//  1290. 二进制链表转整数.swift
//  LeetCode
//
//  Created by xiaolit on 2020/10/6.
//
/**
 给你一个单链表的引用结点 head。链表中每个结点的值不是 0 就是 1。已知此链表是一个整数数字的二进制表示形式。

 请你返回该链表所表示数字的 十进制值 。

 来源：力扣（LeetCode）
 链接：https://leetcode-cn.com/problems/convert-binary-number-in-a-linked-list-to-integer
 著作权归领扣网络所有。商业转载请联系官方授权，非商业转载请注明出处。
 
 输入：head = [1,0,1]
 输出：5
 解释：二进制数 (101) 转化为十进制数 (5)
 */
import Foundation

func getDecimalValue(_ head: ListNode?) -> Int {
    var head = head
    var sum = 0
    while head != nil {
        sum = sum * 2 + head!.val
        head = head?.next
    }
    return sum
}
