require relative '..'/lib/scrappeur/
 

 describe "mairie" do 
 	describe "get_townhall_email(townhall_url)" do
 		it "should not return nil value" do
 			expect(get_townhall_email).not_to be_nil
 		end
	describe "get_townhall_urls" do
		it "should not return nil value" do
			expect(townhall_urls).not_to be_nil
		end

 end