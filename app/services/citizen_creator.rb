class CitizenCreator

  def self.call(citizen_params)
    citizen = Citizen.new(citizen_params)

    if citizen.save
      return citizen
    else
      raise ActiveRecord::RecordInvalid.new(citizen)
    end

  end

  def send_sms(to_number, message)
    client = Twilio::REST::Client.new(ENV['TWILIO_ACCOUNT_SID'], ENV['TWILIO_AUTH_TOKEN'])

    from = 'app_from:' + ENV['TWILIO_SMS_NUMBER']
    to = 'citizen:' + to_number

    client.messages.create(
      from: from,
      to: to,
      body: message
    )
  end

end
