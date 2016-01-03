require "snacknomama/version"
require "snacknomama/parser"
require "gimei"

module Snacknomama
  class << self
    def zinsei
      zinsei = "店名: スナック #{snack_name}\nママ: #{mama}\n人生: 両親#{ryoushin}->#{gakkou}学校#{gakkou_status}->結婚出産->旦那#{kekkonseikatsu}->離婚バツ#{batsu}"
      return zinsei
    end

    def ryoushin
      %w(離婚 死 富豪).sample
    end

    def kekkonseikatsu
      %w(浮気 暴力 酒 借金).sample
    end

    def gakkou
      %w(中 高等).sample
    end

    def gakkou_status
      %w(卒業 中退 退学).sample
    end

    def batsu
      %w(1 2 3 4).sample
    end

    def snack_name
      parser = Snacknomama::Parser.new
      parser.run.sample(rand(3)+1).join('')
    end

    def mama
      Gimei.female.first.katakana
    end
  end
end
