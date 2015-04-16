require 'watir-webdriver'
require_all 'lib'

class BrowserFactory

  def self.start(name)
    case name
      when 'CHROME'
        Watir::Browser.new :chrome
      when 'FIREFOX'
        Watir::Browser.new :firefox
      when 'SAFARI'
        Watir::Browser.new :safari
      when 'HEADLESS_MAC'
        Watir::Browser.new :phantomjs
    end

  end
end