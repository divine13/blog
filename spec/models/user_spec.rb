require 'spec_helper'

describe User do
	before do
	@user = User.new(name:"divine", email:"dube@mail.com", password: "foobar", password_confirmation: "foobar")
	end
	subject { @user }

	it { should respond_to(:email)}
	it { should respond_to(:name)}
    it { should respond_to(:authenticate)}
	it { should respond_to(:password_digest)}
	it { should respond_to(:password)}
	it { should respond_to(:password_confirmation)}

	it {should be_valid}

describe "when user info is invalid " do
	describe " when email is not valid" do
		before {@user.email = ""}
		it { should_not be_valid}
	end
	end
	describe "when user name is not given" do
		before { @user.name = ""}
		it {should_not be_valid}
		end
		describe " password mismatch" do
			before {@user.password = ""}
			it {should_not be_valid}
		end
		describe " testing the regex workd" do
			before { @user.email = ".dd djdf@dnsdj@.ddms.com@"}
			it { should_not be_valid}
		end
		describe " the downcasing of email" do
			let(:mxd_email) { "diviNE@RAils.OrG"}

			it "should be saved as in downcase" do
			@user.email = mxd_email
			@user.save
			@user.reload.email.should == mxd_email.downcase
		end
     end
end
