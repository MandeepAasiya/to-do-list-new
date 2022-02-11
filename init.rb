#!/usr/bin/env ruby

require_relative 'classes/to_do_list'

list = ToDoList.new

list.add("Laundry")
list.add("rent pay", "high")
list.add("ordering lunch", "MEDIUM")
list.add("doing recharge", "Medium")

#list.show

list.remove("ordering lunch")
list.add("cleaning")
list.add("going on walk", 'medium')
#list.show

#list.show_by_chronology

list.remove_by_priority('normal')
list.show
