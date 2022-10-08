math.randomseed(os.time())

local charset = "apbeecodargahajaljukolinmitmurnaporriesemsotatwayya"
function randomString(length)
	local ret = {}
	local r
	for i = 1, length do
		r = math.random(1, #charset)
		table.insert(ret, charset:sub(r, r))
	end
	return table.concat(ret)
end

print(randomString(4))