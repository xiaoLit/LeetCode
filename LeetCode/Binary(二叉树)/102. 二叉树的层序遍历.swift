//
//  102. 二叉树的层序遍历.swift
//  LeetCode
//
//  Created by xiaolit on 2020/10/25.
//

/**
 给你一个二叉树，请你返回其按 层序遍历 得到的节点值。 （即逐层地，从左到右访问所有节点）。

  
//   
 示例：
 二叉树：[3,9,20,null,null,15,7],
 3
 / \
9  20
  /  \
 15   7
返回其层次遍历结果：

[
[3],
[9,20],
[15,7]
]

 来源：力扣（LeetCode）
 链接：https://leetcode-cn.com/problems/binary-tree-level-order-traversal
 著作权归领扣网络所有。商业转载请联系官方授权，非商业转载请注明出处。
 */

import Foundation

//广度优先遍历BFS   (利用两个数组模拟队列queue  nextLevelQueue)
func levelOrder2(_ root: TreeNode?) -> [[Int]] {
    guard let tree = root else { return [] }
    //创建队列
    var queue: [TreeNode] = [tree]
    var result: [[Int]] = []
    //临时存储队列
    var nextLevelQueue: [TreeNode] = []
    while queue.count != 0 {
        var temp: [Int] = []
        for node in queue {
            temp.append(node.val)
            if let left = node.left {
                nextLevelQueue.append(left)
            }
            if let right = node.right {
                nextLevelQueue.append(right)
            }
        }
        result.append(temp)
        queue.removeAll()//可写可不写吧
        queue = nextLevelQueue//将下级元素 赋值给 需要遍历的数组
        nextLevelQueue.removeAll()
    }
    return result
}

/**
 作者：guo-hai-3
 链接：https://leetcode-cn.com/problems/binary-tree-level-order-traversal/solution/er-cha-shu-de-ceng-ci-bian-li-by-guo-hai-3/
 来源：力扣（LeetCode）
 著作权归作者所有。商业转载请联系作者获得授权，非商业转载请注明出处。

 */
