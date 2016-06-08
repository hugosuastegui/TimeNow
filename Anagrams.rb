
def canonical(word)
  word.split("").sort.join
end

def anagrams (array)
  p Time.now
  canonica = []
  my_hash = Hash.new
  array1 = []
  array_final = []
  i = 0
  j = 0
  array.each {|word| my_hash[word] = canonical(word)}
  array_canonico = my_hash.values.uniq
  array_canonico.each do |x|
    my_hash.each do |key, value|
        array1 << key if x == value
    end
    array_final << array1
    array1 = []
  end
  p Time.now
  array_final
end



words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
          'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
          'flow', 'neon']

 p anagrams(words)
#test
p anagrams(words) == [["demo", "dome", "mode"], ["none", "neon"], ["tied", "diet", "edit", "tide"], ["evil", "live", "veil", "vile"], ["fowl", "wolf", "flow"]]