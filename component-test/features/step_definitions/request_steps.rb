When(/^I sent GET request to "(.*?)"$/) do |_|
  @response = @user_api.status
end
