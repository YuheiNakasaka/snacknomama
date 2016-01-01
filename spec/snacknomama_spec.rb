require 'spec_helper'

describe Snacknomama do
  it 'has a version number' do
    expect(Snacknomama::VERSION).not_to be nil
  end

  context "zinsei" do
    it 'return snacknomama life' do
      allow(Snacknomama).to receive(:ryoushin).and_return("死")
      allow(Snacknomama).to receive(:kekkonseikatsu).and_return("浮気")
      allow(Snacknomama).to receive(:gakkou).and_return("中")
      allow(Snacknomama).to receive(:gakkou_status).and_return("退学")
      expect(Snacknomama.zinsei).to eq("両親死->中学校退学->結婚出産->旦那浮気->離婚")
    end
  end
end
