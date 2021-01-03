//
//  145. 二叉树的后序遍历.swift
//  LeetCode
//
//  Created by xiaolit on 2020/12/7.
//
/**
 输入: [1,null,2,3]
    1
     \
      2
     /
    3

 输出: [3,2,1]
 
 */
import Foundation
//递归
func postorderTraversal(_ root: TreeNode?) -> [Int] {
    if root == nil { return [] }
    var res = [Int]()
    res.append(contentsOf: postorderTraversal(root!.left))
    res.append(contentsOf: postorderTraversal(root!.right))
    res.append(root!.val)
    return res
}


/// 迭代
func postorderTraversal2(_ root: TreeNode?) -> [Int] {
    if root == nil { return [] }
    
    var res = [Int]()
    var stack: [TreeNode] = [root!]
    var preNode: TreeNode?
    while !stack.isEmpty {
        //找到左叶子节点 一路添加进栈
        while stack.last!.left != nil {
            stack.append(stack.last!.left!)
        }
        while !stack.isEmpty {
            let node = stack.popLast()!
            if node.right != nil, node.right !== preNode {
                stack.append(node)
                stack.append(node.right!)
                break
            }
            preNode = node
            res.append(node.val)
        }
    }
    return res
}
