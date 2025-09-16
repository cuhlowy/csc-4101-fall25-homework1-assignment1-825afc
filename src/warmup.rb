def fib(n)
    if n == 0
        return []
      elsif n == 1
        return [0]
      end
    
      nums = [0, 1]
      i = 2
      while i < n
        nums << nums[i - 1] + nums[i - 2]
        i += 1
      end
      return nums
    end

def isPalindrome(n)
    str = n.to_s
    if str == str.reverse
      return true
    else
      return false
    end
  end

def nthmax(n, a)
    sorted = a.sort.reverse
    if n < sorted.length
      return sorted[n]
    else
      return nil
    end
  end

def freq(s)
    if s == ""
        return ""
      end
    
      counts = {}
      s.each_char do |c|
        if counts[c]
          counts[c] += 1
        else
          counts[c] = 1
        end
      end
    
      max_char = ""
      max_count = 0
      counts.each do |char, count|
        if count > max_count
          max_char = char
          max_count = count
        end
      end
      return max_char
    end

def zipHash(arr1, arr2)
    if arr1.length != arr2.length
        return nil
      end
    
      h = {}
      i = 0
      while i < arr1.length
        h[arr1[i]] = arr2[i]
        i += 1
      end
      return h
    end

def hashToArray(hash)
    result = []
    hash.each do |k, v|
      result << [k, v]
    end
    return result
  end