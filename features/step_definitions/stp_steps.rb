Given(/^I have entered a valid address$/) do
  visit 'http://www.dominos.com'
  find('.qa-Cl_order').click
end

When(/^I continue to delivery$/) do
  find('.js-delivery').click
  find('#Address_Type_Select').send_keys 'house'
  find('#Street').send_keys '17376 Tedler Cir'
  find('.js-city').send_keys 'Round Hill'
  find('.js-region').send_keys 'VA'
  find('.js-postalCode').send_keys '20141'
  find('.js-search-cta').click
end

Then(/^all entrees available for order$/) do
  expect(page).to have_css('.navigation-entrees')
end
