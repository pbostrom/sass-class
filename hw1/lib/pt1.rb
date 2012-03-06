def palindrome?(string)
  tmp = string.downcase.gsub /\W/, ''
  if (tmp == tmp.reverse)
    return true
  end
  return false
end

def count_words(string)
  tmp = string.downcase.split(/\W+/)
  myhash = {}
  tmp.map{|x| myhash[x] = (myhash[x] ? myhash[x] + 1: 1)}
  return myhash
end
