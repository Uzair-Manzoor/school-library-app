require './teacher'

describe Teacher do
  let(:teacher) { Teacher.new(30, 'Uz', parent_permission: true, specialization: 'English') }

  it 'should initialize correctly' do
    expect(teacher.age).to eq(30)
    expect(teacher.name).to eq('Uz')
    expect(teacher.specialization).to eq('English')
  end

  it 'should always have permission' do
    expect(teacher.can_use_services?).to be true
  end

  it 'should display info' do
    expect(teacher.display_info).to include('[Teacher]')
    expect(teacher.display_info).to include('name: Uz')
    expect(teacher.display_info).to include('Age: 30')
  end
end
