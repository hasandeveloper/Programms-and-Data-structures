class GlobalVariable
    def self.some_code
        10.times do
            $x=10
        end
        puts $x
    end

    def self.some_code_1
        puts $x
    end
end

class GlobalVariable1 < GlobalVariable
    def self.some_code_2
        puts $x
    end
end


 GlobalVariable.some_code
 GlobalVariable.some_code_1
 GlobalVariable1.some_code_2



