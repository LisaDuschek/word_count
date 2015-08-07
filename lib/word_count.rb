require('pry')

class String
  define_method(:word_count) do|word_to_count|
    input_string=self.split(" ")
    counter=0

    input_string.each() do|input|
      if input.downcase()==(word_to_count.downcase())

         counter+=1
      end
      end

    counter





  end
end
