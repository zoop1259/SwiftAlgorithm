import UIKit
/*
 그냥 재귀적으로 만드는 트리.
 TreeNode클래스는 트리의 각 노드
 value는 노드의 값
 children 배열은 하위 노드
 addChild 매서드는 하위 노드를 추가하는 기능
 root 루트 노드
 child1과 child2는 root의 하위 노드로 만듦
 */
class TreeNode {
    var value: Int
    var children: [TreeNode] = [] //클래스내에서 자신의 클래스 이름을 사용한 배열은 재귀적 구조를 가진 구조를 나타냄.

    init(_ value: Int) {
        self.value = value
    }

    func addChild(_ node: TreeNode) {
        children.append(node)
    }
}

let root = TreeNode(0)
let child1 = TreeNode(1)
let child2 = TreeNode(2)
root.addChild(child1)
root.addChild(child2)
root.addChild(TreeNode(3))
print(root)
/*
 여기까지만 build를 해보면 __lldb_expr_18.TreeNode 이런 값이 나오는데
 그 이유는 Swift 클래스의 기본 제공 description 프로퍼티를 재정의하지 않아서이다.
 원하는 형식으로 트리 구조를 출력하기 위해서는 description 프로퍼티를 재정의하여 트리 구조를 출력할 수 있는 형식으로 변환할 수 있다.
 예를 들어 아래와 같이 재정의하여 출력을 원하는 형태로 바꿀 수 있다.
 */
extension TreeNode: CustomStringConvertible {
    var description: String {
        var result = "\(value)"
        if !children.isEmpty {
            result += " {" + children.map { $0.description }.joined(separator: ", ") + "}"
        }
        return result
    }
}

//////
///
class Node<Item> {
    let value: Item
    var children: [Node] = []
    weak var parent: Node?
    
    init(value: Item) {
        self.value = value
    }
    
    func add(child: Node) {
        children.append(child)
        child.parent = self
    }
}

extension Node: CustomStringConvertible {
    var description: String {
        var elements: String = "\(value)"
        
        if !children.isEmpty {
            elements += " [" + children.map { $0.description }.joined(separator: ", ") + "] "
        }
        
        return elements
    }
    
    func printTree() {
        print("Tree: ", description)
    }
    
}

var tree: Node = Node<String>(value: "1")
tree.add(child: Node<String>(value: "2"))
tree.add(child: Node<String>(value: "3"))
tree.add(child: Node<String>(value: "4"))

tree.children[0].add(child: Node<String>(value: "-2"))

tree.printTree()
