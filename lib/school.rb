require "pry"

# code here!
class School
    # attr_accessor :student, :grade
    attr_reader :school

    def initialize(school)
        @school = school
        @roster = {}
    end

    def roster
        @roster
    end

    def add_student(student, grade)
        if !@roster[grade]
            @roster[grade] = []
        end
        @roster[grade] << student
        
        # binding.pry
        # @@roster = @grade
        # puts @grade
    end

    def grade(grade)
        @roster[grade]
    end

    def sort
        hash = {}
        @roster.each do |grade, students| 
            hash[grade] = students.sort
        end
        hash
    end
end
