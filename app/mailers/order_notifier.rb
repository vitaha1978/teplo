class OrderNotifier < ActionMailer::Base
  default from: "ТеплоМаркет"
  
  def reseived(order)
    @order = order
    mail to: order.email, subject: 'Підтвердження замовлення на www.teplomarket.com.ua'
  end
  
  def shipped(order)    
    @order = order
    mail to: order.email, subject: 'Замовлення з www.teplomarket.com.ua відправлено'
  end
  
  def notification(order)
    @order = order
    mail to: "vitaliy.parshyn@gmail.com", subject: 'Замовлення з сату ТеплоМаркет'
  end
  
end
