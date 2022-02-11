class ToDoList

    include Enumerable

    attr_accessor :items

    PRIORITY = {
      Normal: 'Normal',
      Medium: 'Medium',
      High: 'High'
    }
    def initialize
        @items = []
    end

    def add(new_item, priority = PRIORITY[:Normal])
      if PRIORITY.value?(priority.capitalize)
        todo_obj = {
          'todo'=> new_item.capitalize,
          'priority'=> priority.capitalize
        }
        @items.append(todo_obj)
      else
        puts "#{priority} is not a valid priority status"
      end
    end

    def remove(value)
      @items.each do |item|
        if item['todo'] == value.capitalize
          @items.delete(item)
        end
      end
    end

    def show_by_chronology
        puts "Your ToDo List is:"
        @items.each do |item|
          puts "#{item['todo']} - #{item['priority']} priority "
          #puts "--> #{item.priority}"
        end
    end

    def remove_by_priority(value)
        if PRIORITY.value?(value.capitalize)
          @items.each do |item|
            if item['priority'] == value.capitalize
              @items.delete(item)
            end
          end
        else
          puts "#{value} is not a valid priority input"
        end
    end

    def show
      puts "your ToDo List is:"
      @items.each do |item|
        if item['priority'] == 'High'
          puts "#{item['todo']} - #{item['priority']} priority "
        end
      end
      @items.each do |item|
        if item['priority'] == 'Medium'
          puts "#{item['todo']} - #{item['priority']} priority "
        end
      end
      @items.each do |item|
        if item['priority'] == 'Normal'
          puts "#{item['todo']} - #{item['priority']} priority "
        end
      end
    end


end
