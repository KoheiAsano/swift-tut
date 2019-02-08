func isEqual<T : Equatable>(_ x: T, _ y: T) -> Bool {
  return x == y
}

func sorted<T : Collection>(_ A: T) -> [T.Element]
  where T.Element : Comparable{
  return A.sorted()
}

func concat<T: Collection, U : Collection>(_ arg0:T, _ arg1:U) ->[T.Element]
where T.Element == U.Element{
  return Array(arg0) + Array(arg1)
}



var array = [1,3,2]
let array0 = [1,3,2]
print(isEqual(array, array0))
array = sorted(array)
print(array)
let se = Set([1,2,3])
let result = concat(array, se)
print(result)
