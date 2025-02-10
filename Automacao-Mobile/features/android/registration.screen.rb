class RegistrationScreen < Utils
  def initialize
    @code_field = 'txt_codigo'
    @description_field = 'txt_descricao'
    @packing_field = 'txt_unidade'
    @amount_field = 'txt_quantidade'
    @unit_field = 'txt_valunit'
    @lot_field = 'txt_lote'
    @save_button = 'btn_gravar_assunto'
    @decrease_field = 'txt_qtdsaida'
    @save_decrease = 'btn_salvar'
  end

  def register_product(code, description, packing, amount, unit, lot)
    wait_for_element(@code_field, 5)
    clear_fields(@code_field)
    type_text(@code_field, code, 5)

    wait_for_element(@description_field, 5)
    clear_fields(@description_field)
    type_text(@description_field, description, 5)

    wait_for_element(@packing_field, 5)
    clear_fields(@packing_field)
    type_text(@packing_field, packing, 5)

    wait_for_element(@amount_field, 5)
    clear_fields(@amount_field)
    type_text(@amount_field, amount, 5)

    wait_for_element(@unit_field, 5)
    clear_fields(@unit_field)
    type_text(@unit_field, unit, 5)

    wait_for_element(@lot_field, 5)
    clear_fields(@lot_field)
    type_text(@lot_field, lot, 5)

    click_in_element(@save_button, 5)
  end

  def decrease_amount(value)
    wait_for_element(@decrease_field, 5)
    type_text(@decrease_field, value, 5)
    click_in_element(@save_decrease, 5)
    sleep 2
  end
end
