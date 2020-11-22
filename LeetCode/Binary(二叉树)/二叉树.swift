//
//  二叉树.swift
//  LeetCode
//
//  Created by xiaolit on 2020/10/11.
//

import Foundation

public class TreeNode {
    public var val: Int
    public var left: TreeNode?
    public var right: TreeNode?
    public init(_ val: Int) {
        self.val = val
        self.left = nil
        self.right = nil
    }
}
