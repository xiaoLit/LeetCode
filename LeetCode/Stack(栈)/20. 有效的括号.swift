//
//  20. 有效的括号.swift
//  LeetCode
//
//  Created by xiaolit on 2020/10/8.
//
/**
 给定一个只包括 '('，')'，'{'，'}'，'['，']' 的字符串，判断字符串是否有效。

 有效字符串需满足：

 左括号必须用相同类型的右括号闭合。
 左括号必须以正确的顺序闭合。
 注意空字符串可被认为是有效字符串。

 来源：力扣（LeetCode）
 链接：https://leetcode-cn.com/problems/valid-parentheses
 著作权归领扣网络所有。商业转载请联系官方授权，非商业转载请注明出处。
 */
import Foundation

func isValid(_ s: String) -> Bool {
    // 利用堆栈 思想
    
    let ood = s.count % 2
    if ood != 0  {
        return false
    }
    
    // '('，')'，'{'，'}'，'['，']'
    var tempArr = [Character]()
    for c in s {
        switch c {
        case "(","{","[":
            tempArr.append(c)
            
        case ")":
            if tempArr.popLast() != "("  {
                return false
            }
            
        case "}":
            if tempArr.popLast() != "{"  {
                return false
            }
            
        case "]":
            if tempArr.popLast() != "["  {
                return false
            }
        default:
            break
        }
    }
    
    if tempArr.count == 0 {
        return true
    }else{
        return false
    }
}
//func isValid2(_ s: String) -> Bool {
//    var stack:[String] = []
//    let paren_map = [")":"(", "]":"[", "}":"{"]
//    for char in s {     //遍历每个字符串
//        if paren_map.keys.contains(char)
//        
//        if paren_map.values.contains(char.description) {  //判断是否为左括号
//            stack.append(char.description)          //入栈
//        }else if paren_map[char.description] != stack.popLast() {      //判断是否与栈顶元素相同，并出栈
//            return false                //如果不同，说明括号无效
//        }
//    }
//    return stack.count == 0
//}
