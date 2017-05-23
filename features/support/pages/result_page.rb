class ResultPage < BasePage
  def initialize(driver)
    super(driver)
  end

  def success
    @wait.until {title.include?('Thank you')}
  end
end