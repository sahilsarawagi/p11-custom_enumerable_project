module Enumerable
  # Your code goes here

  def my_each_with_index
    each_with_index {|val,index| yield(val,index)}
  end

  def my_select
    ans=[]
    each {|val| ans.push(val) if yield(val)}

    ans
  end

  def my_all?
    each { |num| return false unless yield(num)  }

    true
  end

  def my_any?
    each { |num| return true if yield(num)  }

    false
  end
  def my_none?
    each { |num| return false if yield(num)  }

    true
  end

  def my_count
    count=0
    if block_given?
      each {|num| count+=1 if yield(num)}
      return count
    end
    self.size
  end

  def my_map
    ans = []
    each {|num| ans.push(yield(num))}
    ans
  end

  def my_inject(initial_value)
    each { |num| initial_value = yield(initial_value, num) }

    initial_value
  end
  


end

# You will first have to define my_each
# on the Array class. Methods defined in
# your enumerable module will have access
# to this method
class Array
  # Define my_each here
  
  def my_each
    each {|val| yield(val)}
  end

end



