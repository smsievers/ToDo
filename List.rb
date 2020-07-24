
class List
    attr_reader :todos

    def initialize
        @todos = []
    end

    def list_todos
        @todos = @todos.sort do |a,b|
            a.status <=> b.status
        end

        @todos.each do |t|
            puts "#{t.task}: #{t.status}"
        end
    end

    def add_todo(todo)
        todos.push(todo)
    end

    def complete_task
        count = 1
        puts "What task is now done?"
        puts ""
        @todos.each do |t|
            puts "#{count}. #{t.task}"
            count += 1
        end

        input = gets.chomp.to_i
        todo_to_complete = @todos[input-1]
        todo_to_complete.update_status
    end  


end
