def solution(n)
  gap =0 
  maxgap =0
  counter = "stop"

  while n >= 2
​    if (n % 2 == 1) && (counter == "stop")
​      counter = "start"
​      n = (n-1)/2
​    elsif (n % 2 == 0) && (counter == "stop")
​      n = n/2
​    elsif (n % 2 == 0) && (counter == "start")
​      n = n/2
​      gap += 1
​      if n < 2
​        if gap > maxgap
​          maxgap = gap
​        end
​      end
​    elsif (n % 2 == 1) && (counter == "start")
​      n = (n-1)/2
​      if gap > maxgap
​        maxgap = gap
​      end
​      gap = 0
​    end
  end
  return maxgap

end