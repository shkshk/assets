$ ->
  $submitBtn = $('.order_form-form input:submit')
  $submitBtn.attr('disabled', true)

  $orderName = $('#order-name')
  $orderContact = $('#order-contact')

  setInterval(->
    if $.trim($orderName.val()).length && $.trim($orderContact.val()).length
      $submitBtn.attr('disabled', false)
    else
      $submitBtn.attr('disabled', true)
  , 1000)
