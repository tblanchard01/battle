feature 'Testing infrastructure' do 
    scenario 'Can run app and check' do 
        visit ('/')
        expect(page).to have_content 'Test infrastructure working'
    end 
end 

