require_relative 'user'

RSpec.describe User do
  describe "#log_in" do
    it "logs the user in" do
      user = User.new("test_user")
      user.log_in
      expect(user.logged_in).to eq(true)
    end
  end
  
  describe "#log_out" do
    it "logs the user out" do
      user = User.new("test_user")
      user.log_in
      user.log_out
      expect(user.logged_in).to eq(false)
    end
  end
  
  describe "#username" do
    it "returns the correct username" do
      username = "test_user"
      user = User.new(username)
      expect(user.username).to eq(username)
    end
  end
end
