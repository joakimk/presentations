Given /^the following products$/ do |table|
  table.hashes.each do |hash|
    Product.create! hash
  end
end

Then /^I should have (.*) products$/ do |product_count|
  Product.count.should == product_count.to_i
end
