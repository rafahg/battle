def sign_in_and_play
    visit('/')
        fill_in "P1_name", with: "Rafa"
        fill_in "P2_name", with: "Nima, the wizard"
        click_button('Submit')
end