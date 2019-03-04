class Student
  attr_accessor :name, :cohort

 def initialize(name, cohort)
   @name = name
   @cohort = cohort
 end

 def speak
   return "I can talk!"
 end

 def favourite_programming_language(lang)
   return "I love #{lang}"
 end
end
