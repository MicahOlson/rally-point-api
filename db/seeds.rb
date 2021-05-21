class Seed
  def self.begin
    seed = Seed.new
    Organization.destroy_all
    seed.initialize_db
  end
  
  def initialize_db
    organization1 = Organization.create!(
      name: "MyCompany",
      location: "123 Example Blvd.",
      point_of_contact: "Jane Smith",
      contact_phone: "(555) 555-5555",
      contact_email: "jane@mycompany.com",
      status: "Closed due to inclement weather."
    )

    organization2 = Organization.create!(
      name: "YourCompany",
      location: "456 Sample Lane",
      point_of_contact: "Keith Jones",
      contact_phone: "(555) 555-5555",
      contact_email: "keith@yourcompany.com",
      status: "Business as usual",
    )

    Event.create!(
      notification: "Due to the forecasted snow storm, our downtown offices will be closed until further notice.",
      organization_id: organization1.id,
    )

    Event.create!(
      notification: "The burst pipe and its resulting damage have been corrected. The office will be open for business.",
      organization_id: organization2.id,
    )

    User.create!(
      email: "jane@mycompany.com",
      password: "jane123",
      password_confirmation: "jane123",
      first_name: "Jane",
      last_name: "Smith",
      mobile_phone: "555-555-5555",
      secondary_phone: "555-555-1234",
      emergency_contact_name: "Bill Smith",
      emergency_contact_phone: "555-333-3333",
      group: "Marketing",
      admin: true,
      checked_in: true,
      organization_id: organization1.id
    )

    User.create!(
      email: "bob@mycompany.com",
      password: "bob123",
      password_confirmation: "bob123",
      first_name: "Bob",
      last_name: "Philips",
      mobile_phone: "555-123-4567",
      secondary_phone: "555-7654-321",
      emergency_contact_name: "Sarah Philips",
      emergency_contact_phone: "555-333-2222",
      group: "Marketing",
      admin: false,
      checked_in: false,
      organization_id: organization1.id
    )

    User.create!(
      email: "keith@yourcompany.com",
      password: "keith123",
      password_confirmation: "keith123",
      first_name: "Keith",
      last_name: "Johnson",
      mobile_phone: "555-222-3333",
      secondary_phone: "555-333-2222",
      emergency_contact_name: "David Roberts",
      emergency_contact_phone: "555-444-4444",
      group: "Sales",
      admin: true,
      checked_in: true,
      organization_id: organization2.id
    )
    end
  end
  
Seed.begin
puts "Successfully created #{Organization.count} organizations with a total of #{User.count} members!"
