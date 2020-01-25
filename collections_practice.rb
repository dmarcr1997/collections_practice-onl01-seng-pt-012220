def sort_array_asc(int_ar)
  int_ar.sort
end

def sort_array_desc(int_ar)
  int_ar.sort!{|a, b| b<=>a}
end

def sort_array_char_count(str_ary)
  str_ary.sort do |a, b|
    if a.length == b.length
      0
    elsif a.length < b.length
      -1
    elsif a.length > b.length
      1
    end
  end    
end    

def swap_elements(array)
  array[1] , array[2] = array[2], array[1]
  array
end

def swap_elements2(array, index, des_index)
  array[index], array[des_index] = array[des_index], array[index]
  array
end

def reverse_array(int_ary)
  num = int_ary.count-1
  index =0
  first = int_ary[0]
  while num > 0
    int_ary[index] = int_ary[num]
    index+=1
    num-=1
  end
  int_ary[-1] = first
  int_ary
end

def kesha_maker(str_ary)
  str_ary.each do |string|
      string[2] = "$"
  end 
end

def find_(string)
  a_collection = []
  string.find do |s|
    if s.start_with?("a")
      a_collection << s
    end
  end
end