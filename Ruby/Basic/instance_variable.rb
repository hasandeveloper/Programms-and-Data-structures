#Instance variable
class RubyPractice
    
    def some_code
        @fa = "hasan"
        puts @fa
    end

    def  some_code_1
        puts @fa
    end
    
end

class RubyPractice1 < RubyPractice
    def some_code_2
        puts @fa
    end
end

 a=RubyPractice.new
 a.some_code #print val
 a.some_code_1 #print val
 b=RubyPractice1.new
 b.some_code_2 #doesnt print val

 