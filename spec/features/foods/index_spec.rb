require 'rails_helper'

describe "Foods Index Page" do
  describe "As a user" do
    it "I see foods matching my search" do
      visit '/'

      fill_in :q, with: "sweet potatoes"

      click_on "Search"

      expect(current_path).to eq(foods_path)

      expect(page).to have_content("Total Items: 10")

      expect(page).to have_css('.food', count: 10)

      within(first('.food')) do
        expect(page).to have_content("GTIN/UPC: 070560951975")
        expect(page).to have_content("Description: SWEET POTATOES")
        expect(page).to have_content("Brand Owner: The Pictsweet Company")
        expect(page).to have_content("Ingredients: SWEET POTATOES.")
      end
    end
  end
end
