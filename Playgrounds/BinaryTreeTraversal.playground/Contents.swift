/*
 Created by My3 Shenoy in 2020
 Read my blog at my3vshenoy.com
 LinkedIn: https://www.linkedin.com/in/my3vshenoy
 Tweet me @my3vshenoy
 =====================================================
 Binary Tree Traversal
 - PreOrder: Parent, Left, Right
 - InOrder: Left, Parent, Right
 - PostOrder: Left, Right, Parent
 
 Two ways to solve it: Recursively or Iteratively
 This solution is for recursive travel
 
 */

final class Node {
    var value: Int
    var left: Node?
    var right: Node?
    init(value: Int) {
        self.value = value
    }
}

/// Without return type, just print values of nodes
/// PreOrder: Parent, Left, Right
func preOrderTraversal(_ parent: Node?) {
    guard let parent = parent else { return }
    print(parent.value)
    preOrderTraversal(parent.left)
    preOrderTraversal(parent.right)
}

/// Without return type, just print values of nodes
/// InOrder: Left, Parent, Right
func inOrderTraversal(_ parent: Node?) {
    guard let parent = parent else { return }
    inOrderTraversal(parent.left)
    print(parent.value)
    inOrderTraversal(parent.right)
}

/// Without return type, just print values of nodes
/// PostOrder: Left, Right, Parent
func postOrderTraversal(_ parent: Node?) {
    guard let parent = parent else { return }
    postOrderTraversal(parent.left)
    postOrderTraversal(parent.right)
    print(parent.value)
}

// Create an object for node
// Ex:        1
//             \
//              2
//             /
//            3

let node = Node(value: 1)
node.right = Node(value: 2)
node.right?.left = Node(value: 3)

print("PreOrder: ")
preOrderTraversal(node)

print("InOrder: ")
inOrderTraversal(node)

print("PostOrder: ")
postOrderTraversal(node)

/// With return type, returns the array of node value in sequence of travel
/// PreOrder: Parent, Left, Right
func preOrderTraversalLeetCode(_ parent: Node?) -> [Int] {
    guard let parent = parent else { return [] }
    var traversedArray: [Int] = []
    traversedArray.append(parent.value)
    preOrderTraversal(parent.left)
    preOrderTraversal(parent.right)
    return traversedArray
}

/// With return type, returns the array of node value in sequence of travel
/// InOrder: Left, Parent, Right
func inOrderTraversalLeetCode(_ parent: Node?) -> [Int] {
    guard let parent = parent else { return [] }
    var traversedArray: [Int] = []
    inOrderTraversal(parent.left)
    traversedArray.append(parent.value)
    inOrderTraversal(parent.right)
    return traversedArray
}

/// With return type, returns the array of node value in sequence of travel
/// PostOrder: Left, Right, Parent
func postOrderTraversalLeetCode(_ parent: Node?) -> [Int] {
    guard let parent = parent else { return [] }
    var traversedArray: [Int] = []
    postOrderTraversal(parent.left)
    postOrderTraversal(parent.right)
    traversedArray.append(parent.value)
    return traversedArray
}

print("PreOrder: ")
preOrderTraversalLeetCode(node)

print("InOrder: ")
inOrderTraversalLeetCode(node)

print("PostOrder: ")
postOrderTraversalLeetCode(node)


