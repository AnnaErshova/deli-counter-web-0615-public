katz_deli = [] # list of people

# if there is no one in line, it should add a person in the line
# if there are people in line, it should add a person to the line
# => use 'push' for both; or <<
def take_a_number(katz_deli,name)
  katz_deli << name
  puts "Welcome, #{name}. You are number #{katz_deli.index(name)+1} in line."
end

# if there are no people in line, it should say that the line is empty // array.size or .length
# is there are people in line, it should serve the first person in line and 
# remove them from the queue // use 'shift' for that // expected: ("Currently serving Logan.")
def now_serving(katz_deli)
  if katz_deli.empty?
    puts "There is nobody waiting to be served!"
  else
    puts "Currently serving #{katz_deli.shift}."
  end
end

# "The line is currently empty."
# "The line is currently: 1. Logan 2. Avi 3. Spencer"
def line(katz_deli)
  if katz_deli.empty?
    puts "The line is currently empty."
  else
    beginning_statement = "The line is currently:"
    katz_deli.each_with_index do |name,index|
      # beginning_statement = beginning_statement + ":"
      beginning_statement += " #{index+1}. #{name}"
    end
    puts beginning_statement
  end
end

# I can't get this to work, but it should
# def now_serving(katz_deli)
#  (katz_deli.empty?) ? "There is nobody waiting to be served!" : "Currently serving #{katz_deli.shift}."
#end