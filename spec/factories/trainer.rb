FactoryBot.define do
    factory :trainer do
      first_name { 'John' }
      last_name  { 'Doe' }
      email { john@email_provider.com }
      mobile_number { 7860945310 }
    end
  end 