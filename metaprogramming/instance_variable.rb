class Person
  attr_reader   :name
  attr_accessor :company

  def initialize(name, company)
    @name    = name
    @company = company
  end
end

eric = Person.new("Eric", "Antidot")
puts eric.instance_variables       # Print eric's instance variables
puts eric.instance_variable_get("@name")     # "Eric"
eric.instance_variable_set("@company", "R.*")  
puts eric.company
