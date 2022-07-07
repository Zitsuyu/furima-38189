FactoryBot.define do
  factory :user do
    nickname              {'test'}
    email                 {'test@example'}
    password              {'000aaa'}
    password_confirmation {password}
    last_name             {'佐々木'}
    first_name            {'小次郎'}
    last_name_kana        {'ササキ'}
    first_name_kana       {'コジロウ'}
    birthday              {'1930-01-01'}
  end
end