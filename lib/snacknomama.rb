require "snacknomama/version"

module Snacknomama
  class << self
    def zinsei
      zinsei = "両親#{ryoushin}->#{gakkou}学校#{gakkou_status}->結婚出産->旦那#{kekkonseikatsu}->離婚"
      return zinsei
    end

    def ryoushin
      %w(離婚 死).sample
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
  end
end
