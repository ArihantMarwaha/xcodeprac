import Foundation

func fetchWeather(for city: String) async -> String {
    try? await Task.sleep(nanoseconds: 1_000_000_000)// simulate 1s API call
    var ranges = 1...40
    
    return "Weather in \(city): ☀️ \(ranges.randomElement()!)"
}

func fetchAllWeather() async -> [String] {
    await withTaskGroup(of: String.self) { group in
        let cities = ["London", "Paris", "New York"]
        
        // Add tasks for each city
        for city in cities {
            group.addTask {
                await fetchWeather(for: city)
            }
        }
        
        // Collect results
        var results = [String]()
        for await report in group {
            results.append(report)
        }
        return results
    }
}

Task {
    let weatherReports = await fetchAllWeather()
    print(weatherReports)
}

