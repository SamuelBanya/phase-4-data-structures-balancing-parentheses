require_relative './stack'

# Write a balancing_parentheses method in the lib/balancing_parentheses.rb file that:
# Takes as input a string consisting of some number of ( and ) characters
def balancing_parentheses(str)
    # Creates an instance of the Stack class
    stack = Stack.new

    str.chars.each do |c|
        # Using the stack, checks the string to determine whether the parentheses inside it are balanced
        if stack.peek == '(' && c == ')'
            stack.pop
        # Returns the number of additional parentheses that would need to be added to the string to make it balanced
        else
            stack.push(c)
        end
    end
    stack.size
end