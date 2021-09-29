let num = Int(readLine() ?? "0") ?? 0
for i in 0...num{
  for j in i...num{
    print("*",terminator:"")
  }
  print()
}
