Then(/^I should receive "([^"]*)" with (\d+)$/) do |value, _status_code|
  expected = build_health(value)
  result = @response.parsed_response.transform_keys(&:to_sym)
  expect(result).to eq expected
end
