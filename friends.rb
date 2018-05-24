def get_name(person)
  return person[:name]
end

def favourite_tv_show(person)
  return person[:favourites][:tv_show]
end

def likes_to_eat(person, food)
  person[:favourites][:snacks].include?(food)
end

def add_friend(person, friend_name)
  person[:friends].push(friend_name)
end

def remove_friend(person, ex_friend_name)
  person[:friends].delete(ex_friend_name)
end

def total_money(person_list)
  money_count = 0
  for person in person_list
    money_count += person[:monies]
  end
  return money_count
end

def lends(lender, lendee, money_lent)
  lender[:monies] -= money_lent
  lendee[:monies] += money_lent
end

def total_snack_array_compiler(person_list)
  snack_array = []
  for person in person_list
    snack_array += person[:favourites][:snacks]
  end
  return snack_array
end


def no_friends(person_list)
    no_friend_array = []
    for person in person_list
      if person[:friends].length() == 0
        no_friend_array << person[:name]
      end
    end
    return no_friend_array
end
