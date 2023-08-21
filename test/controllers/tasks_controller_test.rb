require "test_helper"

def setup
  @task = tasks(:buy_eggs)
end

class TasksControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get add_path
    assert_response :success
  end

end
