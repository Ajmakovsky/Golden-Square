def make_snippet(string)
  string_array = string.split
  if string_array.length <= 5
    string
  else
    string_array[0..4].join(" ") + "..."
  end
end
    
