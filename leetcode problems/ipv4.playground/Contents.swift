func validIPAddress(_ queryIP: String) -> String {
    if queryIP.contains(".") {
        return isIPv4(queryIP) ? "IPv4" : "Neither"
    } else if queryIP.contains(":") {
        return isIPv6(queryIP) ? "IPv6" : "Neither"
    } else {
        return "Neither"
    }
}

private func isIPv4(_ ip: String) -> Bool {
    let parts = ip.split(separator: ".", omittingEmptySubsequences: false)
    if parts.count != 4 { return false }
    
    for part in parts {
        // must be digits only
        if part.isEmpty || part.count > 3 { return false }
        if part.first == "0" && part.count > 1 { return false } // leading zeros
        guard let num = Int(part), num >= 0 && num <= 255 else { return false }
    }
    return true
}

private func isIPv6(_ ip: String) -> Bool {
    let parts = ip.split(separator: ":", omittingEmptySubsequences: false)
    if parts.count != 8 { return false }
    
    let hexDigits = Set("0123456789abcdefABCDEF")
    
    for part in parts {
        if part.isEmpty || part.count > 4 { return false }
        for ch in part {
            if !hexDigits.contains(ch) {
                return false
            }
        }
    }
    return true
}

print(validIPAddress("192.168.1.1"))        // IPv4
print(validIPAddress("192.168.01.1"))       // Neither
print(validIPAddress("2001:0db8:85a3:0000:0000:8a2e:0370:7334")) // IPv6
print(validIPAddress("2001:db8:85a3::8A2E:037j:7334")) // Neither
