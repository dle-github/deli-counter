# Write your code here.
def line(array)
    queuedArray = []
    queuedArray.clear
    array.each.with_index(1) do |name, queue|
        queuedArray << "#{queue}." 
        queuedArray << "#{name}"
    end
    if array.length == 0
        puts "The line is currently empty."
    else
        puts "The line is currently: #{queuedArray.join(" ")}"
    end
end


def take_a_number(array, name)
    array << name
    position = array.find_index(name) + 1
    puts "Welcome, #{name}. You are number #{position} in line."
end


def now_serving(array)
    currentPerson = array[0]
    if array.length == 0
        puts "There is nobody waiting to be served!"
    else
        puts "Currently serving #{currentPerson}."
    end
    array.shift
end