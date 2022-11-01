Dado("que acesso a tela de Botões de Radio") do
    @nav.tap_hamburger
    @nav.tap_by_text("INPUTS")
    @nav.tap_by_text("BOTÕES DE RADIO") 
  end
  
  Quando("eu escolho a opção Ruby") do
    @radio_locator = "//android.widget.RadioButton[contains(@text, 'Ruby')]"
    find_element(xpath: @radio_locator).click
  end
  
  Então("esta opção deve ser marcada") do
    @radio_result = find_element(xpath: @radio_locator)
    expect(@radio_result.checked).to eql "true"
  end

  Dado ("que acesso a tela Checkbox") do
    @nav.tap_hamburger
    @nav.tap_by_text("INPUTS")
    @nav.tap_by_text("CHECKBOX") 
  end

  Quando ("eu marco a opção Ruby") do
    @check_locator = "//android.widget.CheckBox[contains(@text, 'Ruby')]" 
    manage.timeouts.implicit_wait = 5
    find_element(xpath: @check_locator).click
   # sleep 10
    manage.timeouts.implicit_wait = 5
  end

   Então ("esta opção deve estar marcada") do
    #log(get_source)
    #sleep 10 
    @check_result = find_element(xpath: @check_locator)
   # sleep 10
    manage.timeouts.implicit_wait = 5
    expect(@check_result.checked).to eql "true"
   # manage.timeouts.implicit_wait = 5
  end
  