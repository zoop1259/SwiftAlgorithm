import UIKit

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
