# Add the 2 requires you will need here
require 'rspec'
require './lib/student'

describe Student do
  describe '#initialize' do
    it 'is an instance of student' do
      student = Student.new("Penelope", [])
      expect(student).to be_a Student
    end

    it 'has a defined name' do
      student = Student.new("Stewart", [])
      expect(student.name).to eq"Stewart"
    end

    it 'has a list of classes' do
      student = Student.new("Jill", ["Chem", "Library", "Trig"])
      expect(student.classes).to eq ["Chem", "Library", "Trig"]
    end

    it 'can add new classes to course load' do
      student = Student.new("Marta", ["Chem"])
      student.add_class("Art")
      expect(student.classes).to eq ["Chem", "Art"]
    end

  end
end
