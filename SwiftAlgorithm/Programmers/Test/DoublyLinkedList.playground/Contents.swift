import UIKit

/*
 양방향 연결 리스트 [prev | data | next ]
 첫노드를 가리키는 head와 가장 마지막 노드를 가리키는 tail두고 내 이전 노드와 다음 노드 두 노드를 모드 연결하는 방법
 내가 찾고자하는 데이터가 연결 리스트의 마지막쪽과 가깝다면 tail을 이용 반대의 경우 head를 이용
 [nil | 3 | ->] [<- | 4 | ->] [<- | 7 | nil] 이런 느낌이라고 생각하면 된다.
여기 nil이 head                        여기 nil이 tail
 */

class Node<T> {
    var prev: Node?
    var data: T?
    var next: Node?
    
    init(data: T?, prev: Node? = nil, next: Node? = nil) {
        self.prev = prev
        self.data = data
        self.next = next
    }
}

class DoublyLinkedList<T: Equatable> {
    private var head: Node<T>?
    private var tail: Node<T>?
    
    func append(data: T?) {
            
       //연결 리스트가 빈 경우, Node를 생성 후 head, tail로 지정한다
       if head == nil || tail == nil {
           head = Node.init(data: data)
           tail = head
           return
       }
            
       let newNode = Node.init(data: data)
       tail?.next = newNode
       newNode.prev = tail
       tail = newNode
    }

    func removeLast() {
        
        if head == nil || tail == nil { return }
        
        //head를 삭제하는 경우(연결 리스트에 노드가 1개밖에 없는 경우)
        if head?.next == nil {
            head = nil
            tail = nil
            return
        }
        
        tail?.prev?.next = tail?.next
        tail = tail?.prev
    }

    //head에서부터 찾기.
    func searchNode(from data: T?) -> Node<T>? {
        
        if head == nil || tail == nil { return nil }
        
        var node = head
        while node?.next != nil {
            if node?.data == data { break }
            node = node?.next
        }
        
        return node
    }

    //tail부터 탐색
    func searchNodeFromTail(from data: T?) -> Node<T>? {
        
        if head == nil || tail == nil { return nil }
        
        var node = tail
        while node?.prev != nil {
            if node?.data == data { break }
            node = node?.prev
        }
        
        return node
    }

    
    
    
}
