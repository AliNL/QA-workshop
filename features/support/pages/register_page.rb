class RegisterPage < BasePage
  def initialize(driver)
    super(driver)
    @wait.until {@driver.find_element(:id, 'userprofile_firstName')}
  end

  def fill_in_form(form)
    form.hashes.each do |row|
      @driver.find_element(:id, row['ID']).send_keys(row['VALUE'])
    end
  end

  def click_submit_button
    @submit_button = @driver.find_element(:id, 'send')
    @submit_button.click
    ResultPage.new(driver)
  end

end