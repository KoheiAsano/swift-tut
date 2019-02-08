struct IntCollection : Collection {
    var startIndex: Int {
      return 0
    }
    var endIndex: Int {
      return 10
    }

    subscript(position: Int) -> Int {
      return position
    }

    //次のIndexを返す。Collectionプロトコルのメソッド
    func index(after i: Int) -> Int {
        return i + 1
    }
}

let collection = IntCollection()
print(collection[5])
print(collection.count)
print(collection.first!)
print(collection.isEmpty)
