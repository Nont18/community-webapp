require 'factory_bot'

FactoryBot.define do
    #This will create a link class
    factory :link do
        name {'FSAD'}
        url {'Help me please'}
        ruch_emergency {'Yes'}
        type_emergency {'Accident'}
    end

    factory :student do
        name {'Help me to fix the light'}
        studentid {'Hello'}
    end

    factory :user do
        email {'st124335@ait.asia'}
        password {'123456'}
    end

end