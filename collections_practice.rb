# your code goes here
def begins_with_r(array)
  j = []
  array.each do |word|
    if word[0] == "r" || word[0] == "R"
      j << "r"
    end
  end
  if j.length == array.length
    return TRUE
  else
    return FALSE
  end
end

def contain_a(array)
  j = []
  array.each do |word|
    if word.include? "a"
      j << word
    end
  end
    return j
end

def first_wa(array)
  array.collect do |word|
    if word.class != String
      strung = word.id2name
    else
      strung = word
    end
    if strung.include? "wa"
      return strung
    end
  end
end

def remove_non_strings(array)
  j = []
  array.each do |word|
    if word.class == String
      j << word
    end
  end
  return j
end

def count_elements(array)
  j = []
  coles_problem = {}
  array.each do |hashbrown|
    a = hashbrown.values
    if (coles_problem.has_value?(a[0]) == FALSE)
       n = array.count(hashbrown)
       coles_problem = hashbrown
      coles_problem[:count] = n
      j << coles_problem
    else
    end
  end
  return j
end

def merge_data(keys, data)
  i = 0
  n = data.length + 1
  blake = keys[0][:first_name]
  ashley = keys[1][:first_name]
  blake_array = [keys[0]]
  ashley_array = [keys[1]]
  final_array = []
  while  i  < n 
    x = data[i].values[i]
    pre_hash = keys[i].merge(x)
    final_array.push(pre_hash) 
    i+=1
  end
  return final_array
  
end