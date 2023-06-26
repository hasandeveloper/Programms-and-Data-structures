def twoStrings(s1, s2)
    # Write your code here
intersect = s1.split("") - s2.split("")

if intersect.length != s1.split("").length
   return "YES"
else
    return "NO"
end

end

twoStrings("hi", "world")