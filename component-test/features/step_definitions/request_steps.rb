When(/^I sent GET request to "(.*?)"$/) do |_|
  @response = @user_api.status
end

When(/^I send GET request to users endpoint$/) do
  @response = @user_api.list_users
end
