require_relative "../date_diff_formatter.rb"

RSpec.describe DateDiffFormatter do

  describe "#format" do

    context "When difference is in seconds" do
       it "returns string '5 seconds' for 5s difference" do
          difference = DateDiffFormatter.format("2018-04-08 10:06:10", "2018-04-08 10:06:15")
          expect(difference).to eq "5 seconds"
       end
    end

    context "When difference is in minutes" do
      it "returns string '5 minutes' for 5 min difference" do
        difference = DateDiffFormatter.format("2018-04-08 10:06:10", "2018-04-08 10:11:15")
        expect(difference).to eq "5 minutes"
      end
    end

    context "When difference is in hours" do
      it "returns string '5 hours' for 5h difference" do
        difference = DateDiffFormatter.format("2018-04-08 10:06:10", "2018-04-08 15:08:15")
        expect(difference).to eq "5 hours"
      end
    end

    context "When difference is in days" do
      it "returns string '5 days' for 5 days difference" do
        difference = DateDiffFormatter.format("2018-04-08 10:06:10", "2018-04-13 15:08:15")
        expect(difference).to eq "5 days"
      end
    end

    context "When difference is in years" do
      it "returns string '5 years' for 5 years difference" do
        difference = DateDiffFormatter.format("2018-04-08 10:06:10", "2023-04-13 15:08:15")
        expect(difference).to eq "5 years"
      end
    end

  end
end
