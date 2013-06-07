require 'spec_helper'

describe "view and individual event" do
	it "shows the event details" do
		event = Event.create(name: "BugSmash",
							location: "Denver",
							price: 10.00,
							description: 'Fun evening of bug smashing!',
							starts_at: 10.days.from_now)

		visit event_url(event)

		expect(page).to have_content(event.name)
		expect(page).to have_content(event.location)
		expect(page).to have_content("10.0")
		expect(page).to have_content(event.description)
		expect(page).to have_content(event.starts_at)
	end
end