class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  
  def send_mail
    time = Time.new
    self.each do |date|
      date = date.date
  if date.to_time.hour == time.hour and  date.to_time.min < time.min+5 and (time.min+5) - date.to_time.min >= 5
    SendPrayerRequest.propertime(date)
  end
end
end
end
