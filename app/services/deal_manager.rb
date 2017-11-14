class DealManager
  def self.todays_deals
    @todayDeals =  Deal.all.select do |deal|
      deal.deal_day == Date.today()
    end
  end

  def self.former_deals
    @formerDeals =  Deal.all.select do |deal|
      deal.deal_day < Date.today()
    end
  end

  def self.future_deals
    @futureDeals =  Deal.all.select do |deal|
      deal.deal_day > Date.today()
    end
  end

end
