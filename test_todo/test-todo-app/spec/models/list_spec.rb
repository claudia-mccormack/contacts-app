require 'rails_helper'

RSpec.describe List, type: :model do
  describe '#complete_all_tasks!' do
    it 'marks all tasks from the list complete' do
      list = List.create(name: "Chores")
      Task.create(complete: false, list_id: list.id, name: "Feed the bird")
      Task.create(complete: false, list_id: list.id, name: "Shelve books")
      list.complete_all_tasks!
      list.tasks.each do |task|
        expect(task.complete).to eq(true)
      end
    end
  end

  describe '#snooze_all_tasks!' do
    it 'adds one hour to the deadline for each task' do
      list = List.create(name: "Chores")
      deadline = Time.now
      Task.create(complete: false, list_id: list.id, deadline: deadline)
      Task.create(complete: false, list_id: list.id, deadline: deadline)
      list.snooze_all_tasks!
      list.tasks.each do |task|
        expect(task.deadline).to eq(deadline + 1.hour)
      end
    end
  end


  describe '#total_duration' do
    it 'adds up the duration of all the tasks' do
      list = List.create(name: "Chores")
      Task.create(complete: false, list_id: list.id, duration: 3)
      Task.create(complete: false, list_id: list.id, duration: 2)
      expect(list.total_duration).to eq(5)
    end
  end


  describe '#incomplete_tasks' do
    it 'lists out incomplete tasks' do
      list = List.create(name: "Chores")
      task1 = Task.create(complete: false, list_id: list.id, name: "Feed the bird")
      task2 = Task.create(complete: false, list_id: list.id, name: "Shelve books")
      task3 = Task.create(complete: true, list_id: list.id, name: "Make jam")
      expect(list.incomplete_tasks).to match_array([task2, task1])
    end
  end


  describe '#favorite_tasks' do
    it 'lists out favorite tasks' do
      list = List.create(name: "Chores")
      task1 = Task.create(favorite: true, list_id: list.id, name: "Feed the bird")
      task2 = Task.create(favorite: false, list_id: list.id, name: "Shelve books")
      task3 = Task.create(favorite: true, list_id: list.id, name: "Make jam")
      list.favorite_tasks
      expect(list.favorite_tasks).to match_array([task1, task3])
    end
  end
end
