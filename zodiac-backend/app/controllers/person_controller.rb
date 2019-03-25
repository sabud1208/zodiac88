class PersonController < ApplicationController
  def index
    @person = Person.all
    @person.zodiac_sign
  end
end
