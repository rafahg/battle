
feature 'atacking' do
    scenario 'P1 atacking Player2' do
        # visit('/')
        # fill_in "P1_name", with: "Rafa"
        # fill_in "P2_name", with: "Nima, the wizard"
        # click_button('Submit')
        sign_in_and_play
        click_link 'Attack'
        expect(page).to have_content "Rafa attacks Nima, the wizard"
    end
end
feature 'attack damage' do
    scenario 'reduce player HP by 10' do
        # visit('/')
        # fill_in "P1_name", with: "Rafa"
        # fill_in "P2_name", with: "Nima, the wizard"
        # click_button('Submit')
        sign_in_and_play
        click_link 'Attack'
        click_link 'Ok'
        # click_button 'OK'
        expect(page).not_to have_content 'Nima, the wizard : 60HP'
        expect(page).to have_content 'Nima, the wizard : 50HP'
    end
end