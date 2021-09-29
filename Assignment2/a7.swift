let num = Int(readLine() ?? "0") ?? 0
var temp = 0

for i in 0...num{
  if temp>=0{
  for j in 0...temp+1{
    print(" ",terminator:"")
  }}
  temp+=1
  if i<=num{
  for k in 0...num-i{
    print(" *",terminator:"")
  }}
  print()
}
for i in 0...num{
  for j in 0...num-i{
    print(" ",terminator:"")
  }
  for k in 0...i{
    print(" *",terminator:"")
  }
  print()
}