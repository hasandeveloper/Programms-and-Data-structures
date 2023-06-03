class ChangeOriginalVersionOfObject
    def self.some_code
        m = "hasan"
        puts m
        puts m.object_id
        m = "hasan".upcase
        puts m
        puts m.object_id
        m = "hasan".upcase!
        puts m
        puts m.object_id
    end
end

ChangeOriginalVersionOfObject.some_code