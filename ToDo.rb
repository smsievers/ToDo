class Todo
    attr_reader :task, :priority, :status

    def initialize(task)
        @task = task
        @status = false
    end

    def update_status
        @status = !@status
    end

    def status
        if @status
            return "Complete"
        else 
            return "Incomplete"
        end
    end
end