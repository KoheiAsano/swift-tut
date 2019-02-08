struct Container<T>{
  var content : T
}
//イニシャライザは自動生成
let intContainer = Container<Int>(content:1)

print(intContainer)
let strContainer = Container(content:"aa")
print(strContainer)
