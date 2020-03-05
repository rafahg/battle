

feature 'form names imput' do
    scenario 'display the form to input the both names' do
        # visit('/')
        # fill_in "P1_name", with: "Rafa"
        # fill_in "P2_name", with: "Nima, the wizard"
        # click_button('Submit')
        sign_in_and_play
        expect(page).to have_content "Rafa vs Nima, the wizard"
        end
end

feature 'show health point bar' do
    scenario 'show health points' do
        # visit('/')
        # fill_in "P1_name", with: "Rafa"
        # fill_in "P2_name", with: "Nima, the wizard"
        # click_button('Submit')
        sign_in_and_play
        expect(page).to have_content "Nima, the wizard HP 100%"
    end
end