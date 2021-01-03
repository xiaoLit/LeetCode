//
//  144. 二叉树的前序遍历.swift
//  LeetCode
//
//  Created by xiaolit on 2020/12/6.
//

/**
 https://leetcode-cn.com/problems/binary-tree-preorder-traversal/
 
 给你二叉树的根节点 root ，返回它节点值的 前序 遍历
 提示：

 树中节点数目在范围 [0, 100] 内
 -100 <= Node.val <= 100

 */

import Foundation
//递归
func preorderTraversal(_ root: TreeNode?) -> [Int] {
    var res: [Int] = []
    if root == nil {
        return []
    }
    res.append(root!.val)
    res += preorderTraversal(root!.left)
    res += preorderTraversal(root!.right)
    return res
}



//迭代
func preorderTraversal2(_ root: TreeNode?) -> [Int] {
    if root == nil { return [] }
    
    var res: [Int] = []
    var stack: [TreeNode] = [root!]

    while let node = stack.popLast() {
        res.append(node.val)
        if let right = node.right { stack.append(right) }
        if let left = node.left { stack.append(left) }
    }
    return res
}

