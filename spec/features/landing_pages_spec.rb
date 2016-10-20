require 'rails_helper'

RSpec.feature "LandingPages", type: :feature do
  context 'Going to website' do
      Steps 'Being welcomed' do
        Given 'I am on the landing page' do
          visit '/'
        end #closes Given
        Then 'I can see a welcome message' do
          expect(page).to have_content('Welcome')
        end #closes Then
      end #closes Steps

      Steps 'create a car to be simulated' do
        Given 'I am on the landing page' do
          visit '/'
        end #closes Given
        Then 'I can enter values to make and model' do
          fill_in 'year', with: '2013'
          fill_in 'make', with: 'Hyundai'
        end #Closes Then
        And 'I can start the simulation' do
          click_button 'Start'
        end #closes And
        Then 'I can see the car simulation page' do
          expect(page).to have_content 'Car Simulation'
        end
        Then 'I can see car specs' do
          expect(page).to have_content '2013'
          expect(page).to have_content 'Hyundai'
          expect(page).to have_content 'Speed'
          expect(page).to have_content 'Lights'
          expect(page).to have_content 'Parking Brake'
        end #Closes Then
        And 'I can accelerate the car' do
          expect(page).to have_content 'Speed: 0'
          click_button 'Accelerate'
          expect(page).to have_content 'Speed: 10'
        end
        And 'I can brake the car' do
          click_button 'Brake'
          expect(page).to have_content 'Speed: 3'
        end #closes And
      end #Closes Steps


  end #closes context
end #closes RSpec.feature
