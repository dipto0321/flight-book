module FlightsHelper
  def duration(min)
    Time.at(min*60).utc.strftime("%H hr %M min")
  end
end
