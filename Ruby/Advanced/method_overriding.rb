class Person
    def name
        p "Hasan"
    end


end

class Child < Person
    def name
        super
        p "24"
    end
end

p = Person.new
p "----parent----"
p.name

p = Child.new
p "-----child----"
p.name


