let num = Int(readLine() ?? "0") ?? 0
var temp = num-1

for i in 1...num{
  for j in 1...i{
    print("*",terminator:"")
  }
  print()
}
for i in 1...num-1{
  for j in i...num-1{
    print("*",terminator:"")
  }
  print()
}