def solution(a)
  number = a.length

  arrOrigin = a
  arrCount = [*1..number]

  if arrOrigin.length == 0
    return 1
  end


  if (arrCount - arrOrigin).length < 1
    left = arrOrigin.last + 1
    return left
  else
    left = (arrCount - arrOrigin).first
    return left
  end


end
