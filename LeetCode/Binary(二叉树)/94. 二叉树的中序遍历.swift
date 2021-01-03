//
//  94. 二叉树的中序遍历.swift
//  LeetCode
//
//  Created by xiaolit on 2020/12/7.
//

import Foundation

//递归
func inorderTraversal(_ root: TreeNode?) -> [Int] {
    if root == nil { return [] }
    var res: [Int] = []
    res.append(contentsOf: inorderTraversal(root!.left))
    res.append(root!.val)
    res.append(contentsOf: inorderTraversal(root!.right))
    return res
}


/// 迭代
func inorderTraversal2(_ root: TreeNode?) -> [Int] {
    if root == nil { return [] }

    var res: [Int] = []
    var stack: [TreeNode] = [root!]
    while !stack.isEmpty {
        //找到左叶子节点 一路添加进栈
        while stack.last!.left != nil {
            stack.append(stack.last!.left!)
        }
        
        while !stack.isEmpty {
            let node = stack.popLast()!
            res.append(node.val)
            
            if node.right != nil {
                stack.append(node.right!)
                break
            }
        }
    }
    return res
}

/**
 2. 栈

 栈需要多次内部循环

 当前节点 先一路向左，添加元素。直到最深的左边，
 循环 读取 （此时，栈顶是root的最左叶子结点A，其次是A的父节点B，如果B有右边节点，那么添加入栈，重新一路向左）

 作者：cobbly
 链接：https://leetcode-cn.com/problems/binary-tree-inorder-traversal/solution/94-er-cha-shu-de-zhong-xu-bian-li-by-cobbly/
 来源：力扣（LeetCode）
 著作权归作者所有。商业转载请联系作者获得授权，非商业转载请注明出处。
 */




//func inorderTraversal3(_ root: TreeNode?) -> [Int] {
// 
//}
