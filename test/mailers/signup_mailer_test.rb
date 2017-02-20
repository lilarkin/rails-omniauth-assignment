require 'test_helper'

class SignupMailerTest < ActionMailer::TestCase
  def new_signup_preview
    SignupMailer.new_signup(User.first)
  end
end
