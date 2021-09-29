print("1:Number Right Triangle")
print("2:Sequential Number Right Triangle")
print("3:Pascal Triangle")
let choice = Int(readLine() ?? "0") ?? 0

switch(choice){
    case 1:
        let num = Int(readLine() ?? "0") ?? 0
        for i in 1...num{
        for j in 1...i{
        print(j,terminator:"")
        }
        print()
        }
    case 2:
        let num = Int(readLine() ?? "0") ?? 0
        var c = 1
        for i in 1...num{
        for j in 1...i{
            print(c,terminator:"")
            c+=1
        }
        print()
        }

    case 3:
        let num = Int(readLine() ?? "0") ?? 0
        var arr = [[Int]]() 
        var temp = (num/2)+2            
        for i in 0...num-1{
            var arr2 = [Int]()
            for var j in 0...i{
                if i == j || j == 0{
                    arr2.append(1)
                }
                else{
                    var len = arr[i - 1].count
                    var p = arr[i - 1][j - 1] + arr[i - 1][j]
                    arr2.append(p)  
                }       
            }
            arr.append(arr2)
            for k in 0...temp{
             print(" ",terminator:"")
             }  
            for j in 0...i {
                print(" \(arr[i][j])", terminator:"")
            }
            temp -= 1
            print()
        }
        
    default:
        print("Thank you")
}