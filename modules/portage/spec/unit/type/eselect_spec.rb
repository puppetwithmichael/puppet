require 'spec_helper'

describe Puppet::Type.type(:eselect) do

  describe "when validating attributes" do
    params     = [:name]
    properties = [:set]

    params.each do |param|
      it "should have the #{param} param" do
        described_class.attrtype(param).should == :param
      end
    end

    properties.each do |property|
      it "should have the #{property} property" do
        described_class.attrtype(property).should == :property
      end
    end
  end

  it "should have name as the namevar" do
    described_class.key_attributes.should == [:name]
  end
end
