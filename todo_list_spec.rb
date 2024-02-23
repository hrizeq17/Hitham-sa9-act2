require_relative 'todo_list'

RSpec.describe TodoList do
  describe "#add" do
    it "adds a todo to the list" do
      todo_list = TodoList.new
      todo = "Buy groceries"
      todo_list.add(todo)
      expect(todo_list.todos).to include(todo)
    end
  end
  
  describe "#remove" do
    it "removes a todo from the list" do
      todo_list = TodoList.new
      todo = "Buy groceries"
      todo_list.add(todo)
      todo_list.remove(todo)
      expect(todo_list.todos).not_to include(todo)
    end
  end
  
  describe "#todos" do
    it "returns all todos" do
      todo_list = TodoList.new
      todos = ["Buy groceries", "Walk the dog", "Do laundry"]
      todos.each { |todo| todo_list.add(todo) }
      expect(todo_list.todos).to eq(todos)
    end
  end
end