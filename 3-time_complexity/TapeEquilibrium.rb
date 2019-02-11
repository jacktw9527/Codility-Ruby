def solution(a)
  n = a.length

  if n % 2 == 0
    p = n/2
  else
    p = n/2 + 1
  end

  arrP = a[0..(p-1)]
  arrN = a[p..(n-1)]

  sumP = arrP.inject{|sum,i|sum+i}
  sumN = arrN.inject{|sum,i|sum+i}

  diff = (sumP - sumN).abs
  diffOrigin = diff

  if sumP.abs < sumN.abs
    i = 1
    while sumP.abs < sumN.abs
      if (p-1+i) == (n-1)
        return diffOrigin
      end
      arrP = a[0..(p-1+i)]
      arrN = a[(p+i)..(n-1)]
      sumP = arrP.inject{|sum,i|sum+i}
      sumN = arrN.inject{|sum,i|sum+i}

      diff = (sumP - sumN).abs
      if diff < diffOrigin
        diffOrigin = diff
        i += 1
      else
        return diffOrigin
      end
    end
  elsif sumP.abs > sumN.abs
    j = 1
    while sumP.abs > sumN.abs
      if (p-1-j) < 0
        return diffOrigin
      end
      arrP = a[0..(p-1-j)]
      arrN = a[(p-j)..(n-1)]
      sumP = arrP.inject{|sum,i|sum+i}
      sumN = arrN.inject{|sum,i|sum+i}

      diff = (sumP - sumN).abs
      if diff < diffOrigin
        diffOrigin = diff
        j += 1
      else
        return diffOrigin
      end
    end
  else
    return diffOrigin
  end

  return diffOrigin

end

## Perfect Answer
# 	def solution(a)

# 		right = 0
# 		left = 0
# 		result = 1000
# 		a.each { |a| right+=a }

# 		for i in 0...(a.count-1)

# 			left += a[i]
# 			right -= a[i]
# 			check = (left - right).abs
# 			result = check if (check < result)

# 		end

# 		result = (a[0]-a[1]).abs if a.count==2
# 		result

# 	end
