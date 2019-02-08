struct IntIterator : IteratorProtocol {
  var count = 0

  mutating func next() -> Int? {
    guard count < 10 else {
      return nil
    }
    defer {
      count += 1
    }

    return count
  }
}

var iterator = IntIterator()
var array = [Int]()

while let element = iterator.next() {
  array.append(element)
}

print(array)
