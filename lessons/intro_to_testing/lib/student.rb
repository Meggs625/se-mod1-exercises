class Student
  attr_reader :name,
              :classes

  def initialize(name, classes)
    @name = name
    @classes = classes
  end

  def add_class(new_class)
    @classes << new_class
  end

end
