//
//  104. 二叉树的最大深度.swift
//  LeetCode
//
//  Created by xiaolit on 2020/12/13.
//

/**
 给定一个二叉树，找出其最大深度。

 二叉树的深度为根节点到最远叶子节点的最长路径上的节点数。

 说明: 叶子节点是指没有子节点的节点。

 示例：
 给定二叉树 [3,9,20,null,null,15,7]，

     3
    / \
   9  20
     /  \
    15   7
 返回它的最大深度 3 。



 来源：力扣（LeetCode）
 链接：https://leetcode-cn.com/problems/maximum-depth-of-binary-tree
 著作权归领扣网络所有。商业转载请联系官方授权，非商业转载请注明出处。
 */

import Foundation

func maxDepth(_ root: TreeNode?) -> Int {
    if root == nil { return 0 }
    
    var queue: [TreeNode] = [root!]
    var maxDepth = 1
    while !queue.isEmpty {
        var nextQueue = [TreeNode]()
        var tempRes = [Int]()

        for tempNode in queue {
            tempRes.append(tempNode.val)
            if tempNode.left != nil {
                nextQueue.append(tempNode.left!)
            }
            if tempNode.right != nil {
                nextQueue.append(tempNode.right!)
            }
        }
        if nextQueue.count != 0 {
            maxDepth+=1
        }
        queue = nextQueue
        nextQueue = []
    }
    return maxDepth
}
