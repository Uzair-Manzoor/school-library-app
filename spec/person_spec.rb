require './person'
require './book'
require './rental'

describe Person do
  let(:person) { Person.new(31, 'Enoh Collins') }

  it 'should initialize correctly' do
    expect(person.age).to eq(31)
    expect(person.name).to eq('Enoh Collins')
  end

  it 'should correctly check age' do
    expect(person.send(:of_age?)).to be true
    person = Person.new(15, 'AbdulSami')
    expect(person.send(:of_age?)).to be false
  end

  it 'should return correct name' do
    expect(person.correct_name).to eq('Enoh Collins')
  end

  def add_rental(book, due_date)
    rental = Rental.new(book, self, due_date)
    @rentals << rental
    rental
  end

  it 'should correctly check permission' do
    person_with_permission = Person.new(18, 'AbdulAziz', parent_permission: true)
    expect(person_with_permission.can_use_services?).to be true

    person_without_permission = Person.new(15, 'AbdulSami', parent_permission: false)
    expect(person_without_permission.can_use_services?).to be false
  end
end
