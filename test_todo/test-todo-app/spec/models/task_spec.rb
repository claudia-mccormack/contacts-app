require 'rails_helper'

RSpec.describe Task, type: :model do
  describe '#toggle_complete!' do
    it 'switches complete to false if it began as true' do
      task = Task.new(complete: true)
      task.toggle_complete!
      expect(task.complete).to eq(false)
    end

    it 'switches complete to true if it began as false' do
      task = Task.new(complete: false)
      task.toggle_complete!
      expect(task.complete).to eq(true)
    end
  end

  describe '#toggle_favorite!'
    it 'switches favorite to true if it began as false' do
      task = Task.new(favorite: false)
      task.toggle_favorite!
      expect(task.favorite).to eq(true)
    end

    it 'switches favorite to false if it began as true' do
      task = Task.new(favorite: true)
      task.toggle_favorite!
      expect(task.favorite).to eq(false)
    end

    describe '#overdue?'
    it 'returns true if a task is overdue' do
      task = Task.new(deadline: '2016-08-11 00:00')
      expect(task.overdue?).to eq(true)
    end

    it 'returns false if a task is not overdue' do
      task = Task.new(deadline: '2016-09-11 00:00')
      expect(task.overdue?).to eq(false)
    end

    describe'#increment_priority!'
    it 'adds one to the priority level' do
      priority = 4
      task = Task.new(priority: priority)
      task.increment_priority!
      expect(task.priority).to eq(priority + 1)
    end

    describe'#decrement_priority!'
    it 'subtracts one from priority level' do
      priority = 7
      task = Task.new(priority: priority)
      task.decrement_priority!
      expect(task.priority).to eq(priority - 1)
    end

    describe '#snooze_hour!'
    it 'adds one hour to the deadline' do
      deadline = Time.now
      task = Task.new(deadline: deadline)
      task.snooze_hour!
      expect(task.deadline).to eq(deadline + 1.hour)
    end

end
