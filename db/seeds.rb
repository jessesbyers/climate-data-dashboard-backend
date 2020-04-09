chart1data = {
    name: "Contiguous U.S., Average Temperature, January-December",
    data_url: "https://www.ncdc.noaa.gov/cag/national/time-series/110-tavg-12-12-1895-2020.json?base_prd=true&begbaseyear=1930&endbaseyear=2000",
    screenshot_url: "https://i.imgur.com/0CcaR6K.png"
}

chart2data = {
    name: "Contiguous U.S., Precipitation, January-December",
    data_url: "https://www.ncdc.noaa.gov/cag/national/time-series/110-pcp-12-12-1895-2020.json?base_prd=true&begbaseyear=1930&endbaseyear=2000",
    screenshot_url: "https://i.imgur.com/hvyjE6g.png"
}

chart3data = {
    name: "Vermont, Average Temperature, January-December",
    data_url: "https://www.ncdc.noaa.gov/cag/statewide/time-series/43-tavg-12-12-1895-2020.json?base_prd=true&begbaseyear=1930&endbaseyear=2000",
    screenshot_url: "https://i.imgur.com/nBfhBVX.png"
}



chart1 = Chart.new(chart1data)
chart2 = Chart.new(chart2data)
chart3 = Chart.new(chart3data)

chart1.save
chart2.save
chart3.save


notice1 = Notice.new(content: "The temperature line zigzags up and down, but the early 1900s ziglags are lower than the early 2000s zigzags", votes: 5, chart_id: 1)
notice2 = Notice.new(content: "The highest US average temperature was in 2012 (55 degrees F) and the lowest average temperature was in 1917 (50 degrees F)", votes: 2, chart_id: 1)

notice3 = Notice.new(content: "There was very low precipitation between 1952 and 1956", votes: 3, chart_id: 2)
notice4 = Notice.new(content: "Precipitation has been above average every year since 2013.", votes: 1, chart_id: 2)

wonder1 = Wonder.new(content: "Why does the line zigzag up and and down so often?", votes: 1, chart_id: 1)
wonder2 = Wonder.new(content: "Why was it so much colder before 1930?", votes: 3, chart_id: 1)

wonder3 = Wonder.new(content: "Why do we hear about droughts and wildfires so often if average precipitation has been above average the past 7 years?", votes: 5, chart_id: 2)
wonder4 = Wonder.new(content: "Is there a relationship between temperature and precipitation patterns each year?", votes: 2, chart_id: 2)

notice1.save
notice2.save
notice3.save
notice4.save

wonder1.save
wonder2.save
wonder3.save
wonder4.save