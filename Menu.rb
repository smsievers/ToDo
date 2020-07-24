class Menu
    attr_reader :list

    def initialize(list = List.new)
        @list = list
        display_menu
    end

    def display_menu
        puts '========================='
        puts "Press 1 to show the ToDos"
        puts "Press 2 to add a ToDo"
        puts "Press 3 to complete a task"
        puts "Press q to quit"
        puts '========================='
        get_input
    end
    
    def get_input
        input = gets.chomp.downcase
        if input == '1'
            @list.list_todos
        elsif input == '2'
            @list.add_todo(New_ToDo_Form.new.todo)
        elsif input == '3'
            @list.complete_task
        elsif input == 'q'
            exit
        else
            puts "Please provide valid input"
        end
        display_menu
    end
end
