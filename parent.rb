class Parent
  def parent_method
    puts "This is from the parent"
  end
end

class Child < Parent
  #Altering and overriding
  def parent_method
    super()
    puts "No, this is patrick!"
  end
end

p = Parent.new
c = Child.new

p.parent_method
c.parent_method