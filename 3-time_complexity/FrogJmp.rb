def solution(x, y, d)
  total = (y - x)

  if total % d == 0
    jump = total/d
  else
    jump = (total/d).to_i + 1
  end

  return jump
end
