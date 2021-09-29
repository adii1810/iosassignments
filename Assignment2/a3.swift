let num = Int(readLine() ?? "0") ?? 0
for i in 0...num{
  for j in 0...num-i{
    print(" ",terminator:"")
  }
  for k in 0...i{
    print("*",terminator:"")
  }
  print()
}
