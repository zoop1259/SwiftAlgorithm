import UIKit

/*
 연결리스트란?
 연결리스트의 특징은 각각 떨어진 공간에 존재하는 데이터를 연결해 놓은 것.(연속되지 않은 메모리에 저장된 데이터들을 연결시켜 놓은 것.)

 단방향 연결리스트
 배열과는 다르게 index로 접근하는것이 아니라
 데이터에 접근하려면 첫 번째 데이터부터 원하는 데이터까지 순차적으로 찾아가야해서 접근속도가 느림.
 1000개의 데이터에서 1000번째 데이터에 접근하려면 1000번 순회해야함.
 또한 내 다음 데이터에 대한 연결정보를 저장하는 별도의 데이터 공간이 필요해 저장 공간의 효율이 높지 않다.
 
 이때 연결을 어떻게 하냐면 '내 다음 순서 데이터의 주소값'을 내가 가지고 있어야 한다. 는 것
 플레이그라운드에서 대충 예를들면 [data | next] 이런모양? 이런 모양을 '노드' 라고 부른다.
 data는 내 데이터를 저장
 next는 내 다음 데이터의 주소값을 저장
 노드들이 연결되어있는걸 '연결리스트'라 한다.
 */

//노드를 class로 구현
class Node<T> { //그냥 타입에 국한되지 않게 제네릭
    var data: T?
    var next: Node?
    
    init(data: T?, next: Node? = nil) {
        self.data = data
        self.next = next
    }
}
//위처럼 만든 후 데이터를 저장하고 싶을 때마다 배열의 element가 아니라 Node를 생성해서 연결.
//그러나 매번 생성하고 이전 노드와 연결해주는것을 매번 코딩할 수 없으니 Node를 관리해줄 연결리스트 생성.

class LinkedList<T: Equatable> {
    private var head: Node<T>? //첫번째 노드를 항상 가지고 있어야하며 이를 head로 가리키는 것.
    
    //마지막에 노드를 넣을때.
    func append(data: T?) {
        //head가 없는 경우 Node 생성후 head로 지정
        if head == nil {
            head = Node(data: data)
            return
        }
        var node = head
        while node?.next != nil { //noew부터 순회하여 next가 닐인경우에 append하겠지.
            node = node?.next
        }
        node?.next = Node(data: data)
    }
    
    //리스트 중간에 노드를 넣을 수는 있지만 배열과 달리 index가 없어 직접 구현해 주어야한다.
    func insert(data: T?, at index: Int) {
        
        //head가 없는 경우 Node를 생성 후 head로 지정한다
        if head == nil {
            head = Node(data: data)
            return
        }
        
        var node = head
        for _ in 0..<(index - 1) {
            if node?.next == nil { break }
            node = node?.next
        }
        
        let nextNode = node?.next
        node?.next = Node(data: data)
        node?.next?.next = nextNode
        
    }

    //마지막 삭제
    func removeLast() {
        
        if head == nil { return }
        
     // head를 삭제하는 경우
        if head?.next == nil { //다음값이 없으면?
            head = nil //마지막값이라고 판단하여 삭제.
            return
        }
        
        var node = head
        while node?.next?.next != nil {
            node = node?.next
        }
        
        node?.next = node?.next?.next
        
    }

    //몇번쨰에 삭제할 것이냐!
    func remove(at index: Int) {
        
        if head == nil { return }
        
        // head를 삭제하는 경우
        if index == 0 || head?.next == nil {
            head = head?.next
            return
        }
        
        var node = head
        for _ in 0..<(index - 1) {
            if node?.next?.next == nil { break }
            node = node?.next
        }
        
        node?.next = node?.next?.next
        
    }

    //데이터 찾기
    func searchNode(from data: T?) -> Node<T>? {
        
        if head == nil { return nil }
        
        var node = head
        while node?.next != nil {
            if node?.data == data { break }
            node = node?.next
        }
        
        return node
    }

    
}


let linkedList = LinkedList<Int>()
linkedList.append(data: 1)
linkedList.append(data: 3)
linkedList.append(data: 5)
linkedList.insert(data: 2, at: 2)
linkedList.removeLast()
