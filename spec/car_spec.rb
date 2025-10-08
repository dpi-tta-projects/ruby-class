# spec/car_spec.rb

RSpec.describe "car.rb" do
  describe "output" do
    it "prints the car description line", points: 2 do
      output = run_script_and_capture_lines("car.rb")
      expect(output).to include(a_string_matching(/My car is a \d{4} .+/))
    end
  end

  describe "code" do
    let(:source_code) { strip_comments(File.read("car.rb")) }

    it "defines a Car class", points: 1 do
      expect(source_code).to match(/class\s+Car/),
        "Expected to define a class named Car."
    end

    it "uses initialize to set instance variables", points: 2 do
      expect(source_code).to match(/def\s+initialize/),
        "Expected to define an initialize method."
      expect(source_code).to match(/@\w+/),
        "Expected to assign instance variables (e.g., @model or @year)."
    end

    it "uses a method (not puts inside initialize) to format output", points: 2 do
      expect(source_code).to match(/def\s+\w+/),
        "Expected a method to generate the car description (e.g., def description)."
      expect(source_code).not_to match(/puts.*initialize/),
        "Don't print inside initialize — return the string from another method."
    end

    it "does not hard-code the final string", points: 2 do
      expect(source_code).not_to match(/"My car is a 2020 Honda Civic"/),
        "Don't hard-code the full output; interpolate instance variables."
    end
  end
end
