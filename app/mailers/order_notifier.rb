class OrderNotifier < ActionMailer::Base 
  
  default from: 'ТеплоМаркет',
    template_path: 'mailers/notification'
  
  def received(order)
    @order = order
    mail to: order.email, subject: 'Підтвердження замовлення на www.teplomarket.com.ua'
  end
  
  def notification(order)
    @order = order
    mail to: "vitaliy.parshyn@gmail.com", subject: 'Замовлення з сату ТеплоМаркет'
  end
  
end
