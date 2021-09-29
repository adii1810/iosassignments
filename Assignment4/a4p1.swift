
var arr = [Int]()
let no = Int(readLine() ?? "0") ?? 0
for i in 0...no-1{
    var val = Int(readLine() ?? "0") ?? 0
    arr.append(val)
}
var len = arr.count
var count = 0
for i in 0...len-1
{   
    if arr[0] == arr[i]{
        count += 1
 s   }       
        
}
if count != len{
    for i in 0...len-2
    {
        for j in i+1...len-1{
            if arr[i] < arr[j]{
                var temp = 0
                temp = arr[i]
                arr[i] = arr[j]
                arr[j] = temp 
            }       
        }    
    }
    for var i in 0...len-2
    {
        for k in i+1...len-1{
            if arr[i] == arr[k]{
            // print(k)
            arr.remove(at: k)
            len = arr.count    
            i -= 1
            }   
        }    
    }
}
else{
    print("hello its same")
}

if(arr.count > 0){
    arr.remove(at: 0)
    print(arr[0])
}
else{
    print(arr[0])
}
