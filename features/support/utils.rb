class Utils

  def wait_for_element(element, timeout)
    wait = Selenium::Webdriver::Wait.new timeout: timeout
    wait.until { find_element(id:element).displayed? }
  end

  def click_element(element, timeout)
    wait_for_element(element, timeout)
    find_element(id:element).click
  end

  def type_text(element, value, timeout)
    wait_for_element(element, timeout)
    find_element(:id, element).send_keys(value)
  end

  def expected_message(message, timeout)
    wait = Selenium::WebDriver::Wait.new(timeout: timeout)
    wait.until { driver.page_source.include?(message) }
    expect(driver.page_souce).to include(message)
  end

end