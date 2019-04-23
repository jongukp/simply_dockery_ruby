Then(/^I should receive "([^"]*)" with (\d+)$/) do |value, _status_code|
  expected = build_health(value)
  result = @response.parsed_response.transform_keys(&:to_sym)
  expect(result).to eq expected
end

Then(/^I should get users back$/) do
  wookie = build_user('wookie').collect { |k, v| [k.to_s, v] }.to_h
  cookie = build_user('cookie').collect { |k, v| [k.to_s, v] }.to_h
  expected = [wookie, cookie]
  result = @response.parsed_response
  expect(result).to eq expected
end
