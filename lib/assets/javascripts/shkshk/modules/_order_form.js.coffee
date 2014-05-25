$ ->
  $('.order_form-form').on('submit', ->
    $('#a-o-nonsence').val('|yIPKHRnZ~~t!:ge^]IHihcJo;U44r!u7]$U~~6!J!h8dP)GW.%IqT =&XA56WGR')
  )

  $('.order_form-form input:submit').attr('disabled', true)

  $('.order_form-form').on('keyup', 'input:text', ->
    $submitBtn = $('.order_form-form input:submit')

    if $.trim($('#order-name').val()).length && $.trim($('#order-contact').val()).length
      $submitBtn.attr('disabled', false)
    else
      $submitBtn.attr('disabled', true)
  )
