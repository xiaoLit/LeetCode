//
//  662. 二叉树最大宽度.swift
//  LeetCode
//
//  Created by xiaolit on 2020/12/13.
//

import Foundation

func widthOfBinaryTree(_ root: TreeNode?) -> Int {
    guard let root = root else { return 0}
    var queue: [TreeNode] = [root]
    var list: [Int] = [1]
    var maxLen = 1
    while !queue.isEmpty {
        let size = queue.count
        for _ in 0..<size {
            let node = queue.removeFirst()
            let index = list.removeFirst()
            if let left = node.left {
                queue.append(left)
                list.append(2 &* index)
            }
            if let right = node.right {
                queue.append(right)
                list.append(2 &* index &+ 1)
            }
        }
        if list.count >= 2 { //注意临界条件是大于等于2，因为count为1宽度也是1
            maxLen = max(maxLen, list.last! &- list.first! &+ 1)
        }
    }
    return maxLen
}

//作者：mingriweiji-github
//链接：https://leetcode-cn.com/problems/maximum-width-of-binary-tree/solution/fen-ceng-bian-li-shi-yong-dui-lie-qlai-ji-lu-mei-y/
//来源：力扣（LeetCode）
//著作权归作者所有。商业转载请联系作者获得授权，非商业转载请注明出处。
