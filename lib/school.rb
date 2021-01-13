# code here!
class School
    def initialize(name)
        @name = name
        @roster = {}
    end

    def roster
        @roster
    end 

    def add_student(student, grade)
        if !@roster[grade]
        @roster[grade] = [];
        end 
        @roster[grade].push(student)    
    end 

    def grade(grade)
        @roster[grade]
    end 

    def sort
        @roster.each do |grade, students|
            students.sort!
        end 
        @roster
        # @roster.map do |grade, students|
        #     [grade, students.sort]
        # end.to_h
    end 
end 