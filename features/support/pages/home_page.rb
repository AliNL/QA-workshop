class HomePage < BasePage
  def initialize(driver)
    super(driver)
    @wait.until {@driver.find_element(:class, 'login_btn')}
    @login_button = @driver.find_element(:class, 'login_btn')
    @register_link = @driver.find_element(:link_text, 'REGISTER HERE')
  end


  def click_login_button
    @login_button.click
    @wait.until {@register_link}
  end

  def click_register_link
    @register_link.click
    RegisterPage.new(driver)
  end
end