require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  holiday_hash[:winter].each do |holiday, supply_list|
    supply_list << supply
  end
end


def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash[:spring].each do |holiday, supply_list|
    supply_list << supply
  end
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash[season][holiday_name] = supply_array
  holiday_name
end

def all_winter_holiday_supplies(holiday_hash)
  winter_supplies = holiday_hash[:winter].collect do |holiday, supplies|
    supplies
  end
  winter_supplies.flatten
end


def all_supplies_in_holidays(holiday_hash)
  holiday_hash.each do |season, holiday|
    season.to_s.capitalize! << ":"
    holiday.each do |holiday, supply_list|
      holiday = holiday.to_s.split("_").collect {|word| word.capitalize!}.join(" ") << ":"
      supplies = supply_list.join("")
      "#{holiday} #{supplies}"
    end
  end
end
binding.pry



def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
end
