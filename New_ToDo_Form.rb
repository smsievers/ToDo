class New_ToDo_Form
    attr_reader :todo

    def initialize
        @todo = Todo.new(get_input)
    end
    
    def get_input
        puts "What is your task?"
        gets.chomp
    end
end
