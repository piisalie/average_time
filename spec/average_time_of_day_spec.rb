require_relative "../lib/average_time_of_day.rb"

describe AverageTimeOfDay do
  let (:times)   { ["11:51pm", "11:56pm", "12:01am", "12:06am", "12:11am"] }
  let (:average) { AverageTimeOfDay.new(times) }
  
  it "returns a time in 12 hour format" do
    expect(average.calculate).to match(/\A\d\d:\d\d(?:am|pm)/)
  end
end
