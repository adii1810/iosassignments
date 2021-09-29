let num = Int(readLine() ?? "0") ?? 0
for i in 1...num{
  for j in 1...i{
    print("*",terminator:"")
  }
  print()
}
