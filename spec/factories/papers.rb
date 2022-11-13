FactoryBot.define do
  factory :paper do
    title { "COMPUTING MACHINERY AND INTELLIGENCE" }
    venue { "Mind 49: 433-460" }
    year { 1950 }
    authors { build_list :author, 1 }
  end
  factory :authorless_paper, class: "Paper" do
    title { "COMPUTING MACHINERY AND INTELLIGENCE" }
    venue { "Mind 49: 433-460" }
    year { 1950 }
  end
  # title needs to be unique so tests can differentiate the new and the old paper
  factory :new_paper, class: "Paper" do
    title { "NEW COMPUTING MACHINERY AND INTELLIGENCE" }
    venue { "Mind 49: 433-460" }
    year { 1968 }
    authors { build_list :author, 1 }
  end
end