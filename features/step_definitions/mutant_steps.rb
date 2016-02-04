require_relative "../../lib/support/models/mutants"

Given(/^I can retrieve all mutants$/) do
  mutants = Mutants.new
  @response = mutants.retrieve_mutants
  end

Then(/^a "([^"]*)" response is returned$/) do |response_code|
  raise "expected response code not returned recieved #{@response.code}" unless @response.code == response_code.to_i
  print @response
end