require 'spec_helper'

describe Snacknomama do
  it 'has a version number' do
    expect(Snacknomama::VERSION).not_to be nil
  end

  context "zinsei_all" do
    it 'return snacknomama life' do
      allow(Snacknomama).to receive(:ryoushin).and_return("死別")
      allow(Snacknomama).to receive(:kekkonseikatsu).and_return("浮気")
      allow(Snacknomama).to receive(:gakkou).and_return("中")
      allow(Snacknomama).to receive(:gakkou_status).and_return("退学")
      allow(Snacknomama).to receive(:batsu).and_return("2")
      allow(Snacknomama).to receive(:snack).and_return("スナック 雪の舞")
      allow(Snacknomama).to receive(:mama).and_return("アキコ")
      expect(Snacknomama.zinsei_all).to eq("店名: スナック 雪の舞\nママ: アキコ\n人生: 両親死別->中学校退学->結婚出産->旦那浮気->離婚バツ2")
    end
  end

  context "zinsei" do
    it 'return snacknomama life' do
      allow(Snacknomama).to receive(:ryoushin).and_return("死別")
      allow(Snacknomama).to receive(:kekkonseikatsu).and_return("浮気")
      allow(Snacknomama).to receive(:gakkou).and_return("中")
      allow(Snacknomama).to receive(:gakkou_status).and_return("退学")
      allow(Snacknomama).to receive(:batsu).and_return("2")
      expect(Snacknomama.zinsei).to eq("両親死別->中学校退学->結婚出産->旦那浮気->離婚バツ2")
    end
  end

  context "snack" do
    it 'return snack name' do
      allow(Snacknomama).to receive(:snack).and_return("スナック 花の舞")
      expect(Snacknomama.snack).to eq("スナック 花の舞")
    end
  end

  context "mama" do
    it 'return mama name' do
      allow(Snacknomama).to receive(:mama).and_return("アキコ")
      expect(Snacknomama.mama).to eq("アキコ")
    end
  end
end
