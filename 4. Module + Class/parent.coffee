# 4.1 Modules: Splitting Up Apps
console.log 'Parent Module'

require("./root")

global.emergencyNumber = 911

console.log "Http Code: " +  httpCodes.movedPermanently
console.log "Http Code: " +  httpCodes.pageNotFound
console.log "Http Code: " +  httpCodes.serverError

exports.emergencyNumber = emergencyNumber

# eof