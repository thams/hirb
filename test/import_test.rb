require File.join(File.dirname(__FILE__), 'test_helper')

describe "import" do
  test "require import_object extends Object" do
    Object.ancestors.map {|e| e.to_s}.include?("Hirb::ObjectMethods").should == false
    require 'hirb/import_object'
    Object.ancestors.map {|e| e.to_s}.include?("Hirb::ObjectMethods").should == true
  end
end
