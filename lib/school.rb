class School # 'model' in the domain model
  attr_accessor :roster, :name, :grade
  
  GRADE = []
  
  def initialize(name)
    @name = name
    @roster = {}
  end
  
  def add_student(name, grade) # iterates per instance
    @roster[grade] ||= [] # why is this correct and not just = ?
    @roster[grade] << name
  end
  
  def grade(grade_number) 
    @roster[grade_number] # takes a grade number + returns values
  end
  
  def sort 
  sorted = {}    
    @roster.each do |grade, names|
      sorted[grade] = names.sort 
    end
    sorted
  end
end