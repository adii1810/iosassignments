
var flag = 0
var count = 0
enum eo:Error{
  case negative

  var message : String{
    switch self{
      case .negative:return "Number should not be negetive"
    }
  }
}

func prime(no: Int...)throws ->Int{
  for val in no{
    if val == 2{
      throw eo.negative
    }
    else{
      for var i in 2...val-1{
          guard val % i != 0 else {
            flag = 1
            return flag
            break
          }
          count = count+val
      }
    }
  }
  return flag
}
do{
 let no = try prime(no:3,7,5,11,7,13)
  if no == 0{
  print("All numbers are prime")
  }
  else{
    print("All numbers are not prime")
  }
}catch{
  if let err = error as? eo{
    print(err.message)
  }
}

func countfunc(num: inout Int){
  num = num*2
}
countfunc(num: &count)
print(count)

