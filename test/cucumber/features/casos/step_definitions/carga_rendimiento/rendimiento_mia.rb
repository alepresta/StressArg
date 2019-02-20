Then /^test de carga y rendimiento 0001$/ do
# Encoding: utf-8

  require 'selenium-webdriver'
  require 'browsermob-proxy'
  require 'rspec-expectations'
  include RSpec::Matchers
  require 'json'

  def configure_proxy
    proxy_binary = BrowserMob::Proxy::Server.new('./browsermob-proxy/bin/browsermob-proxy')
    proxy_binary.start
    proxy_binary.create_proxy
  end

  def browser_profile
    browser_profile = Selenium::WebDriver::Firefox::Profile.new
    browser_profile.proxy = @proxy.selenium_proxy
    browser_profile
  end

  def setup
    @proxy = configure_proxy
    @driver = Selenium::WebDriver.for :firefox, profile: browser_profile
  end

  def teardown
    @driver.quit
    @proxy.close
  end

  def capture_traffic
    @proxy.new_har
    yield
    @proxy.har
  end

  def run
    setup
    har = capture_traffic { yield }
    @har_file = "./selenium_#{Time.now.strftime("%m%d%y_%H%M%S")}.har"
    har.save_to @har_file
    teardown
  end

  run do
    @driver.get 'http://the-internet.herokuapp.com/dynamic_loading/2'
    @driver.find_element(css: '#start button').click
    Selenium::WebDriver::Wait.new(timeout: 8).until do
      @driver.find_element(css: '#finish')
    end
  end

  performance_results = JSON.parse `yslow --info basic --format json #{@har_file}`
  performance_grade = performance_results["o"]
  performance_grade.should be > 90

end



Then /^test de carga y rendimiento 0002$/ do
require 'ruby-jmeter'
# test do
#   threads count: 10 do
#     visit name: 'Google Search', url: 'http://google.com'
#   end
# end.jmx(file: "features/casos/step_definitions/carga_rendimiento/my_testplan.jmx")
  test do
    threads count: 10 do
      visit name: 'Google Search', url: 'http://google.com'
    end
  end.jmx(file: "features/casos/step_definitions/carga_rendimiento/jmeter_files/my_testplan.jmx")
end



Then /^test de carga y rendimiento 0003$/ do
  require 'ruby-jmeter'

end

