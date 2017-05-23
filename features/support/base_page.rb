class BasePage
  def initialize(driver)
    @driver = driver
    @wait = Selenium::WebDriver::Wait.new(:timeout => 30)
    @wait.until {title}
  end

  def title
    @driver.title
  end

  def open_url(url)
    @driver.get(url)
  end

  def driver
    @driver
  end

  def save_screenshot
    @driver.save_screenshot(title)
  end
end