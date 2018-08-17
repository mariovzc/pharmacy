# frozen_string_literal: true

module ApplicationHelper
  # this validate the status of a element and return it in spanish!
  def status_helper(status)
    status ? 'Activo' : 'InActivo'
  end

  # this convert the money value in money format
  def price_helper(money)
    number_to_currency(
      money,
      unit: 'COP ',
      separator: ',',
      delimiter: '.'
    )
  end
end
