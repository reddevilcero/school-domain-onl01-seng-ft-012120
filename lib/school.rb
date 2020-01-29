# code here!

class School
  
  attr_accessor :name
  attr_reader :roster
  def initialize(name)
    self.name= name
    @roster= {}
  end

  def add_student(student, grade)
    if self.roster.key?(grade)
      self.roster[grade] << student
    else
      self.roster[grade] = [student]
    end
  end

  def grade(grade)
    self.roster[grade]
  end
  def sort
    self.roster.each_value{|value| value.sort!}
  end
end