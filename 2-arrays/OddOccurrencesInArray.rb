def solution(a)
  arr = a.sort

  if arr.length <= 1
​    return arr[0]
  end

  if arr.count(arr[0]) == arr.length
​    return arr[0]
  end

  for i in 0...arr.length
​    if (i == 0) && (arr[i] != arr[i+1])
​      return arr[i]
​    elsif (i == (arr.length-1)) && (arr[i] != arr[i-1])
​      return arr[i]
​    elsif (arr[i] != arr[i+1]) && (arr[i] != arr[i-1])
​      return arr[i]
​    elsif (arr[i] == arr[i-1]) && (arr[i] != arr[i+1]) && (arr.count(arr[i]) % 2 != 0)
​      return arr[i]
​    end
  end

end

# 最佳解：
# def solution(a)
#   a.reduce(:^)
# end
