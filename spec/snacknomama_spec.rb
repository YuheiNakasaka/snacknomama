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
      allow(Snacknomama).to receive(:batsu).and_return("2")
      allow(Snacknomama).to receive(:snack_name).and_return("テストトーン")
      allow(Snacknomama).to receive(:mama).and_return("アキコ")
      expect(Snacknomama.zinsei).to eq("店名: スナック テストトーン\nママ: アキコ\n人生: 両親死->中学校退学->結婚出産->旦那浮気->離婚バツ2")
    end
  end
end
