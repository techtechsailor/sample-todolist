require "test_helper"

class TaskTest < ActiveSupport::TestCase
  
  def setup
    @task = Task.new(title: "Example Task", description: "Example Description",
                     completed: false)
  end

  test "should be valid" do
    assert @task.valid?
  end

  test "title should be presant" do
    @task.title = "     "
    assert_not @task.valid?
  end

  test "description may be empty" do
    @task.description = "     "
    assert @task.valid?
  end

  test "completed must be boolean" do
    @task.completed = nil
    assert_not @task.valid?
  end

  test "title should not be too long" do
    @task.title = "a" * 21
    assert_not @task.valid?
  end

  test "description should not bi too long" do
    @task.description = "a" * 51
    assert_not @task.valid?
  end
end
