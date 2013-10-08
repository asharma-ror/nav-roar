module ApplicationHelper

  def get_time_zone
    [
      ["(GMT-10:00) Hawaii", "Hawaii"],
      ["(GMT-09:00) Alaska", "Alaska"],
      ["(GMT-08:00) Pacific Time (US &amp; Canada)", "Pacific Time (US &amp; Canada)"],
      ["(GMT-07:00) Arizona", "Arizona"],
      ["(GMT-07:00) Mountain Time (US &amp; Canada)", "Mountain Time (US &amp; Canada)"],
      ["(GMT-06:00) Central Time (US &amp; Canada)", "Central Time (US &amp; Canada)"],
      ["(GMT-05:00) Eastern Time (US &amp; Canada)", "Eastern Time (US &amp; Canada)"],
      ["(GMT-05:00) Indiana (East)", "Indiana (East)"]
    ]                
  end
end
