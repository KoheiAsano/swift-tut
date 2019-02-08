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

struct IntSequence : Sequence {
  func makeIterator() -> IntIterator {
    return IntIterator()
  }
}

let sequence = IntSequence()

for element in sequence {
  print(element)
}

let stringArray = sequence.map { element in
  return "\(element)"
}
print(stringArray)

let filteredArray = sequence.filter { element in
  return element % 2 == 0
}
print(filteredArray)
