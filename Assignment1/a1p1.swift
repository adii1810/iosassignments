enum eo:Error{
  case negative

  var message : String{
    switch self{
      case .negative:return "Number should not be negetive"
    }
  }
}


func oddeven(no:Int)throws ->Int{
  if no < 0{
    throw eo.negative;
  }
  if (no % 2 == 0){
    return 0
  }else{
      return 1
  }
}
do{
 
   let num = try oddeven(no:7)
  if (num == 0){  
    print("Number is Even")
  }
  else{
    print("Number is Odd")
  }
}catch{
    if let err = error as? eo{
      print(err.message)
    }
}
