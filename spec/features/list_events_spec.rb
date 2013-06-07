require "spec_helper"

describe "Viewing the list of events" do
	it "shows the event" do
		event1 = Event.create(name: "BugSmash",
							  location: "Denver",
							  price: 10.00,
							  description: 'A fun evening of bug smashing',
							  starts_at: 10.days.from_now)

		event2 = Event.create(name: "Hackathon",
							  location: "Austin",
							  price: 15.00,
							  description: 'Hunker down at the Hackathon',
							  starts_at: 15.days.from_now)

		event3 = Event.create(name: "Kata Camp",
							  location: "Dallas",
							  price: 75.00,
							  description: 'Practice your craft Kata Style',
							  starts_at: 30.days.from_now)

		visit events_url

		expect(page).to have_content("3 Events")
		expect(page).to have_content(event1.name)
		expect(page).to have_content(event2.name)
		expect(page).to have_content(event3.name)

		expect(page).to have_content(event1.location)
		expect(page).to have_content(event1.description[0..10])
		expect(page).to have_content(event1.starts_at)
		expect(page).to have_content(event1.price)


	end
end